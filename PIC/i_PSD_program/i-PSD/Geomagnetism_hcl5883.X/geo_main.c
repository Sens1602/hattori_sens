/********************************************************************
 USB-CDC通信
 i-PSD　改
 MPU-9250
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
#include "timers.h"
#include "adc.h"

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
#pragma config PBADEN = ON       //ポートBをデフォルトでデジタル
//#pragma config ICPRT = OFF              //？

/** グローバル変数定義 ************/
#pragma udata
char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
USB_HANDLE    lastTransmission;
unsigned char i;

int err;//I2C通信エラーコード受信
char outbuf[30];//
int ave[10];//ADC平均化
unsigned long counter;
unsigned long counter2;
int b;
char temp;
unsigned char USBRxNum;//USB受信バイト数カウンタ
unsigned char dummy[2] = {'\0', '\0'};
int flag = 0, start = 0;

/**関数プロトタイピング宣言 *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void Calc();

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
        
        if(INTCONbits.TMR0IF){ //割り込み要因がTimer1割り込みなら
            
            INTCONbits.TMR0IF = 0; //フラグクリア 
            WriteTimer0(46036);//タイマセット
            //デバイス接続確認
            if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
                USBDeviceAttach();// USB割り込み許可			
            // 処理実行
            if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
                //if(start) //C受信ソフト用
                Calc();//データ取得、送信
                LATAbits.LATA0 ^= 1;
                LATAbits.LATA1 ^= 1;
                /*
                if(USBUSARTIsTxTrfReady()){
                      putrsUSBUSART("aaaa");
                }
                CDCTxService();
                */
            }      
        }
        
        #if defined(USB_INTERRUPT)
            USBDeviceTasks();
        #endif
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

/*********** メイン関数 **************************/
void main(void){  

    counter2 = 0
    //発信安定待ち
    while(counter2 < 1000){
        //Nop();
        counter2++;
    }
     ADCON1 = 0xFF;//デジタル入出力
  	TRISA = 0b00000000;				//RA デジタル出力（LED）
    TRISB = 0b00110000;				//
	TRISC = 0b00000000;				//
    
    PORTA = 0b00000000;//初期化
    PORTB = 0b00000000;//初期化
     
     /*
     //ピン設定
 	TRISA = 0b11111111;				//RA、ADC用入力
	TRISB = 0b00110000;				//
	TRISC = 0b00000000;				//
*/
    //USBバッファクリア
	for (i=0; i<sizeof(USB_Out_Buf); i++){
		USB_Out_Buf[i] = 0;
    }
	lastTransmission = 0;		// ハンドルクリア
    USBDeviceInit();			// USB初期化
    USBDeviceAttach();			// USB割り込み許可

    //I2C設定
    //SSPADD = ((Fosc/4) / Fscl) - 1
    OpenI2C(MASTER, SLEW_ON);   //マスターモード
    SSPADD = 29;                //I2C400kHz?_後ほど勉強
    err = WI2C(0x3C, 0x00, 0x78);//75Hzモード
    err = WI2C(0x3C, 0x01, 0x00);//ゲイン5
    err = WI2C(0x3C, 0x02, 0x00);//連続計測モード
    while(counter2 < 1000){
        //Nop();
        counter2++;
    }
    //readcheck
    outbuf[0] = RI2C(0x3C,0x0A);
    outbuf[1] = RI2C(0x3C,0x0B);
    outbuf[2] = RI2C(0x3C,0x0C);
    
    //タイマ設定
    //18F2553は1命令4クロック
    //1命令時間:1/(48MHz/4) → 0.166//プリスケーラ1:2
    //5ms(200Hz)ほしいので、5000/0.1666 = 30000…欲しいカウント数)
    //65536 - 30000 ≒ 35536
    
    T0CON = 0b10000010;//タイマ0,8ビット,プリスケーラ1:2
    WriteTimer0(46036);//タイマセット
    INTCONbits.GIE = 1;//割り込み機能有効
    INTCONbits.TMR0IE = 1;//TMR0割り込み許可
        
    while(1){  
       // USBDeviceAttach();// USB割り込み許可			
    }
}

//I2C通信スレーブ書き込み
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // アイドル確認
    StartI2C();                                // start 出力・終了待ち
   // if ( PIR2bits.BCLIF )return ( 1 );        // バス衝突発生時 
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
   // if ( PIR2bits.BCLIF )return ( 0 );       // バス衝突発生 
    return (0); 
    
}

//I2C通信スレーブ読み取り
unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // アイドル確認
    StartI2C();                                // start 出力・終了待ち
   // if ( PIR2bits.BCLIF )return ( 8 );        // バス衝突発生時 
        
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
    RestartI2C();                              // restart 出力・終了待ち
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
    PIR1bits.SSPIF = 0;                    // SSPIFクリア
    return ( (unsigned int) SSPBUF );      // 正常終了
}

//データ取得
void Calc(){
        
    //----------------地磁気-----------------
    IdleI2C();                                 // アイドル確認
    StartI2C();                                // start 出力・終了待ち
    //if ( PIR2bits.BCLIF )return ( 8 );       // バス衝突発生時 
        
// ---------------- コントロール出力 -----------------------------
    if(WriteI2C(0x3C))return(33);        // バス衝突発生時 
    IdleI2C();                                 // アイドル確認
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- HMC5883Lアドレス出力 ------------------------
    if(WriteI2C(0x03))return(35);      // バス衝突時 
    IdleI2C();                                 // アイドル確認
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- Restart出力 -----------------------
    RestartI2C();                              // restart 出力・終了待ち
    //if ( PIR2bits.BCLIF )return (37);        // バス衝突発生時 
// ---------------- コントロールRead Mode出力 -----------------------------
    if(WriteI2C(0x3D))return(38);        // バス衝突発生時 
    IdleI2C();// アイドル確認
    if ( SSPCON2bits.ACKSTAT )return(39);      // ACK無時 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- データ受信 -----------------------------
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    outbuf[0] = (unsigned int)  SSPBUF;       //データ取り出し
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
           
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    outbuf[1] = (unsigned int)  SSPBUF;       //データ取り出し
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
    
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    outbuf[2] = (unsigned int)  SSPBUF;       //データ取り出し
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
    
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    outbuf[3] = (unsigned int)  SSPBUF;       //データ取り出し
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
      
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    outbuf[4] = (unsigned int)  SSPBUF;       //データ取り出し
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
    
    SSPCON2bits.RCEN = 1;                      // 受信ON
    while ( SSPCON2bits.RCEN );                // 受信完了待ち
    outbuf[5] = (unsigned int)  SSPBUF;       //データ取り出し
    NotAckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
// ---------------- Stop condition出力 --------------------------
    StopI2C();                                 // 出力・終了待ち
    PIR1bits.SSPIF = 0;                        // SSPIFクリア
   
    outbuf[6] = '\r';
    outbuf[7] = '\n';
       
    
    if(USBUSARTIsTxTrfReady()){
         putUSBUSART(outbuf,8);
    }
    CDCTxService();
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