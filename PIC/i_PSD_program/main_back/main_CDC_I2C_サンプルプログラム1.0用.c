/********************************************************************
 USB-CDC通信
 i-PSD　改
********************************************************************/
/**ヘッダファイル*************/
#include "usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "usb_device.h"
#include "usb.h"
#include "HardwareProfile.h"
#include "p18f2553.h"
#include "i2c.h"
#include "stdio.h"
#include "stdlib.h"
//#include "usart.h"

/**コンフィグレーション***********************/
/*18Fpic18f14k50
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PW RTEN = ON, BOREN = OFF, MCLRE = ON
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF
*/
//pragma参考　http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C参考　http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
//（おそらく）振動子12MHzから3分周で4MHzを生成→PLLで96MHzを生成してまた2分周して48MHzを生成、USBクロックとシステムクロックに使用、という構成：データシート2550,TABLE 2-3:
#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 3               //セラロック12MHz
#pragma config CPUDIV = OSC1_PLL2       //2分周でCPU48MHz
#pragma config VREGEN = ON              //USB用レギュレータON
#pragma config USBDIV =2                //2分周でUSBクロック生成
#pragma config FCMEN = OFF
#pragma config IESO = OFF
#pragma config PWRT = ON
#pragma config BOR = ON
#pragma config BORV =1
#pragma config MCLRE = ON
#pragma config WDT = OFF
#pragma config WDTPS = 32
#pragma config LVP = OFF
#pragma config XINST = OFF
#pragma config DEBUG = OFF
#pragma config PBADEN = OFF       //ポートBをデフォルトでデジタル
//#pragma config ICPRT = OFF              //？

/** グローバル変数定義 ************/
#pragma udata
char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
USB_HANDLE    lastTransmission;
unsigned char RxIndex;				// USB送信バッファ用ポインタ		
unsigned char USBRxNum;  			// USB受信バイト数カウンタ
unsigned char TxIndex;       		// RS232C送信バッファ用ポインタ
unsigned char Tx_Rdy = 0;			// USART送信レディーフラグ
unsigned char i;

int rs1, rs2, rs3;
int err;
char *outbuf;
char outbuf2[100];
char WHO_ADD = 0b11101011;
unsigned long counter = 0;
int b;
char temp;

/**関数プロトタイピング宣言 *******************/
void ProcessIO(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned char getcUSART (void);
void debug(char a[]);
void debug_i(int a, int b, int c);
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void speedCK();

/*** 割り込みベクタ定義***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/****割り込み処理関数***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        USBDeviceTasks();		// USB????????
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

/*********** メイン関数 **************************/

void main(void){  

    ADCON1 = 0b00001111;            //ポートB全てデジタル
	TRISA = 0b11111111;				// RA0-5??
	TRISB = 0b00110000;				//
	TRISC = 0b00100000;				// RC5????
//	WPUBbits.WPUB4 = 1;			// RB4 pull up
	TRISC = 0x00;				// RC0-7??

	for (i=0; i<sizeof(USB_Out_Buf); i++){
		USB_Out_Buf[i] = 0;
    }
	RxIndex = 0;				// ???????
	USBRxNum = 0;				// ???????
	lastTransmission = 0;		// ???????
    USBDeviceInit();			// USB???

    //I2C設定
    //SSPADD = ((Fosc/4) / Fscl) - 1
    OpenI2C(MASTER, SLEW_ON);   //マスターモード
    SSPADD = 29;                //I2C400kHz?_後ほど勉強
    err = WI2C(0b11010000, 0x24, 0x0D);//スレーブ側クロック設定
    rs1 = RI2C(0b11010000, 0x75);//WHO_AM_I

    //センサ初期化設定
    //加速度＿ジャイロスリープモード解除
    err = WI2C(0b11010000, 0x6B, 0x00);   
    err = WI2C(0b11010000, 0x37, 0x02);
    //磁気センサAD変換実行
    err = WI2C(0b00011000, 0x0A, 0x12);
    
    rs2 = RI2C(0b11010000, 0x6B);
    rs3 = RI2C(0b11010000, 0x37);
        
    debug_i(rs1, rs2, rs3);
    
}

unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // アイドル確認
    StartI2C();                                // start 出力・終了待ち
    if ( PIR2bits.BCLIF )return ( 1 );        // バス衝突発生時 
// ---------------- コントロール出力 -----------------------------
    if(WriteI2C(control))return(2);           // バス衝突発生時 
    IdleI2C();                                 // アイドル確認
    if (SSPCON2bits.ACKSTAT )return(3);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- MPU9250アドレス出力 ------------------------
    if(WriteI2C(address))return(4);      // バス衝突時 
    IdleI2C();                                 // アイドル確認
    if ( SSPCON2bits.ACKSTAT )return(5);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- 書込みデータ出力 --------------------------
    if(WriteI2C(data))return(8);              // 書込みデータ出力
    IdleI2C();                                 // アイドル確認  
    if ( SSPCON2bits.ACKSTAT)return(9);       // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- Stop condition出力 --------------------------
    StopI2C();                                 // 出力・終了待ち
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
    if ( PIR2bits.BCLIF )return ( 0 );       // バス衝突発生 
    return (0); 
    

}

unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // アイドル確認
    StartI2C();                                // start 出力・終了待ち
    //if ( PIR2bits.BCLIF )return ( 8 );        // バス衝突発生時 
        
// ---------------- コントロール出力 -----------------------------
    if(WriteI2C(control))return(33);           // バス衝突発生時 
    IdleI2C();                                 // アイドル確認
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- MPU9250アドレス出力 ------------------------
    if(WriteI2C(address))return(35);      // バス衝突時 
    IdleI2C();                                 // アイドル確認
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- Restart出力 -----------------------
    RestartI2C();                              // restart 出力・終了待ち、リピートスタートコンディション？
    //if ( PIR2bits.BCLIF )return (37);        // バス衝突発生時 
// ---------------- コントロールRead Mode出力 -----------------------------
    if(WriteI2C(control+1))return(38);         // バス衝突発生時 
    IdleI2C();// アイドル確認
    if ( SSPCON2bits.ACKSTAT )return(39);     // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- １バイト受信 -----------------------------
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    NotAckI2C();                               // ACK返信なし（Not ACK)
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- Stop condition出力 --------------------------
    StopI2C();                                 // 出力・終了待ち
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
    //if ( PIR2bits.BCLIF )return (40);       // バス衝突発生 
    PIR1bits.SSPIF = 0;                    // SSPIFクリア*/
    return ( (unsigned int) SSPBUF );      // 正常終了

}

void debug(char a[]){
    counter = 40000000;
    outbuf = a;
	while(counter != 0){
	    // USB??????
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB????			
		// ??????????????
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
            //putrsUSBUSART(outbuf);
            putrsUSBUSART("cheak\r\n");
            CDCTxService();
		}
        counter--;
    }
}
void debug_i(int a, int b, int c){
 
    int acxh,acxl,acyh,acyl,aczh,aczl;//加速度
    int gyxh,gyxl,gyyh,gyyl,gyzh,gyzl;//ジャイロ
    int coxh,coxl,coyh,coyl,cozh,cozl;//コンパス
  
        temp = (char)a;
    counter = 40000000;

    outbuf2[0] = 'a';
    outbuf2[1] = 'b';
    outbuf2[2] = 'c';
    outbuf2[3] = '\r';
    outbuf2[4] = '\n';
    outbuf2[5] = temp;

	while(counter != 0){
	    // USB接続状態確認
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB接続完了		
		// デバイス接続状態なら機能実行
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
           
            //加速度
            acxh = RI2C(0b11010000, 0x3B);
            acxl = RI2C(0b11010000, 0x3C);
            acyh = RI2C(0b11010000, 0x3D);
            acyl = RI2C(0b11010000, 0x3E);
            aczh = RI2C(0b11010000, 0x3F);
            aczl = RI2C(0b11010000, 0x40);
            
            //ジャイロ
            gyxh = RI2C(0b11010000, 0x43);
            gyxl = RI2C(0b11010000, 0x44);
            gyyh = RI2C(0b11010000, 0x45);
            gyyl = RI2C(0b11010000, 0x46);           
            gyzh = RI2C(0b11010000, 0x47);
            gyzl = RI2C(0b11010000, 0x48);
            
            //コンパス
            //coxh = RI2C(0b0001100, 0x03);
            //coxl = RI2C(0b0001100, 0x04);
            
            outbuf2[6] = acxh;
            outbuf2[7] = acxl;
            outbuf2[8] = acyh;
            outbuf2[9] = acyl;
            outbuf2[10] = aczh;
            outbuf2[11] = aczl;
            putUSBUSART(outbuf2, 12);
            CDCTxService();

		}
        counter--;
    }
}

void speedCK(){
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
} 

void debug_i_1(int a){
 
    temp = (char)a;
    outbuf2[0] = 'a';
    outbuf2[1] = 'b';
    outbuf2[2] = 'c';
    outbuf2[3] = '\r';
    outbuf2[4] = '\n';
    outbuf2[5] = temp;
	    // USB??????
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB????			
		// ??????????????
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
            putUSBUSART(outbuf2, 6);
            CDCTxService();
		}
}

/**************************************************
 * USB ← → USART送受信
 * 双方向送受信全二重で可能
 * LEDで方向表示　赤：USB送信　緑：USART送信
 **************************************************/
void ProcessIO(void)
{   
	if (Tx_Rdy == 0)  							// USART????????
	{
		/* USB?? */
		USBRxNum = getsUSBUSART(USB_In_Buf,64);	// USB??????
		if(USBRxNum > 0)						// USB??????
		{
			Tx_Rdy = 1;  						// USART????????
			TxIndex = 0;  						// ????????????
		} 
	}
	/* USB??????USART?? */
	if(Tx_Rdy && TXSTAbits.TRMT)				// ????????
	{
		TXREG = USB_In_Buf[TxIndex];			// USART????????
		++TxIndex;								// ??????
		if (TxIndex == USBRxNum){				// ????????
			Tx_Rdy = 0;							// ?????????
		}
	}
	/* USART????? */
	if(PIR1bits.RCIF && (RxIndex < (CDC_DATA_OUT_EP_SIZE - 1)))
	{
		USB_Out_Buf[RxIndex] = getcUSART();		// USART??????????
		++RxIndex;								// ??????????
		USB_Out_Buf[RxIndex] = 0;				// ???NULL??
	}
	/* USART??????USB?? */
	if((USBUSARTIsTxTrfReady()) && (RxIndex > 0))
	{
		putUSBUSART(&USB_Out_Buf[0], RxIndex);	// USB????????????
		RxIndex = 0;							// ???????
	}
	/* USB送信実行 */
    //putrsUSBUSART("KASHIKOMA---!!!");
    //CDCTxService();
}

/***************************************
*  USART???? 
****************************************/
unsigned char getcUSART (void)
{
	char  c;
	
	if (RCSTAbits.OERR)  			// ???????
	{
		RCSTAbits.CREN = 0;  		// USART???
		c = RCREG;					// ?????????????
		RCSTAbits.CREN = 1;  		// USART???
	}
	else
		c = RCREG;					// ???????
	return c;
}

/***********************************************************
* ?????????
*
* ???:  USB_CDC_SET_LINE_CODING_HANDLER ??????????
* ?USB??USART?????????????????
************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps?????????
	}
	else{
		DWORD_VAL dwBaud;
		
		// CDC????????????
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
		// USART????????
		dwBaud.Val = (DWORD)(GetSystemClock()/4)/line_coding.dwDTERate.Val-1;
		SPBRG = dwBaud.v[0];
		SPBRGH = dwBaud.v[1];
	}
}
#endif

// ***********************************************************
// ************** USB Callback Functions *********************
// ***********************************************************

/*************************************************************
 * Function:        void USBCBSuspend(void)
 *************************************************************/
void USBCBSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*************************************************************
 * Function:        void USBCBErrorHandler(void)
 *************************************************************/
void USBCBErrorHandler(void)
{
}
/*************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}//end
/*************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*************************************************************
 * Function:        void USBCBInitEP(void)
 *************************************************************/
void USBCBInitEP(void)
{
    CDCInitEP();
}
/*************************************************************
 * Function:        void USBCBSendResume(void)
 *************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    if(USBGetRemoteWakeupStatus() == TRUE) 
    {
        //Verify that the USB bus is in fact suspended, before we send
        //remote wakeup signalling.
        if(USBIsBusSuspended() == TRUE)
        {
            USBMaskInterrupts();
            
            //Clock switch to settings consistent with normal USB operation.
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  //So we don't execute this code again, 
                                        //until a new suspend condition is detected.

            delay_count = 3600U;        
            do
            {
                delay_count--;
            }while(delay_count);
            
            //Now drive the resume K-state signalling onto the USB bus.
            USBResumeControl = 1;       // Start RESUME signaling
            delay_count = 1800U;        // Set RESUME line for 1-13 ms
            do
            {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       //Finished driving resume signalling

            USBUnmaskInterrupts();
        }
    }
}


/***************************************************************
 * Function:        void USBCBEP0DataReceived(void)
 ***************************************************************/
#if defined(ENABLE_EP0_DATA_RECEIVED_CALLBACK)
void USBCBEP0DataReceived(void)
{
}
#endif

/***************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 ***************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_TRANSFER:
            break;
        case EVENT_SOF:
            USBCB_SOF_Handler();
            break;
        case EVENT_SUSPEND:
            USBCBSuspend();
            break;
        case EVENT_RESUME:
            USBCBWakeFromSuspend();
            break;
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
        case EVENT_SET_DESCRIPTOR:
            USBCBStdSetDscHandler();
            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
        case EVENT_BUS_ERROR:
            USBCBErrorHandler();
            break;
        case EVENT_TRANSFER_TERMINATED:

            break;
        default:
            break;
    }      
    return TRUE; 
}