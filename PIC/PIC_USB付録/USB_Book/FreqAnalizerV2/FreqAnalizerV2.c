/**************************************************************
* USB接続　周波数アナライザ  USBフレームワーク更新版
* 機能：周波数特性測定器　　　PIC18F2550
*　 PIC18F2550と高性能DDSであるAD9851さらにログアンプのAD8307で
*　 高性能な周波数特性の自動測定を行う装置を構成する　
***************************************************************/
/** インクルードファイル宣言 *************/
#include "./USB/usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "HardwareProfile.h"
#include <delays.h>
#include <math.h>

/****** コンフィギュレーション設定 ******************/
#pragma config FOSC=HSPLL_HS, PLLDIV=5, CPUDIV=OSC1_PLL2 
#pragma config USBDIV=2, PWRT=ON, FCMEN=ON, IESO=ON
#pragma config BOR=ON, BORV=0, WDT=OFF, LVP=OFF, VREGEN=ON
#pragma config MCLRE=ON, PBADEN=OFF, WDTPS=1024
#pragma config LPT1OSC=OFF, CCP2MX=OFF, DEBUG=OFF

#pragma config CP0=OFF, CP1=OFF, CP2=OFF, CP3=OFF, CPB=OFF
#pragma config CPD=OFF, WRT0=OFF, WRT1=OFF, WRT2=OFF, WRT3=OFF
#pragma config WRTB=OFF, WRTC=OFF, WRTD=OFF, EBTR0=OFF
#pragma config EBTR1=OFF, EBTR2=OFF, EBTR3=OFF, EBTRB=OFF

/****** グローバル変数宣言定義 ************************/
#pragma udata
float Freq;
int i, j;
unsigned char mask;	
unsigned int Result;
float Para;
/* 周波数設定値 4バイト */
union{
	unsigned long	Phase;			// 周波数設定値
	unsigned char	iPhase[4];
} DDSdata;
float logData0,logData1;			// dB値
char input_buffer[64];				// USB入力バッファ
char output_buffer[64];				// USB出力バッファ
char MsgTX[] = "CH0=+xx.x  CH1=+xx.x\r\n";
BOOL blinkStatusValid;				// USB接続状態表示フラグ

/***** 関数プロトタイピング ****************************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void BlinkUSBStatus(void);
void USBCBSendResume(void);
void ProcessIO(void);
void itostring(char digit, unsigned int data, char *buffer);
void serial_out(float data);
void ftostring(int seisu, int shousu, float data, char *buffer);

/****** 割り込みベクタ定義 *************/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void)
{     _asm goto YourHighPriorityISRCode _endasm		}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void)
{     _asm goto YourLowPriorityISRCode _endasm	}
	
#pragma code
/***+*** 割り込み処理関数 *****************/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        USBDeviceTasks();
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode(){
}	

#pragma code
/*********** メイン関数  *********************/
void main(void)
{
	TRISA = 0x03;						// RA0,1のみ入力
	TRISB = 0;							// 全部出力
	TRISC = 0x18;						// D+.D-以外全部出力
	LATA = 0;							// ポート全クリア
	LATB = 0;
	LATC = 0;
	// A/Dコンバータ初期設定
	ADCON0 = 0x00;						// AD off
	ADCON1 = 0x0D;						// AN0,1 Analog Vss-Vdd
	ADCON2 = 0xA6;						// Right,12Tad,1/64
	/*** DDSの設定制御 シリアルモードに設定	***/
	Freq = 10000.0;		
	RST = 1;							// RESET出力
	Delay10TCYx(1);
	RST = 0;
	W_CLK =1;							// W0ロード
	W_CLK = 0;
	FQ_UD = 1;							// シリアルモード設定
	FQ_UD = 0;
	serial_out(Freq);					// 初期出力設定
	/* USB初期化 */	
    USBDeviceInit();					// USB初期化.
	blinkStatusValid = TRUE;			// LEDブリンク許可 
	/******  メインループ **********/
    while(1)
    {
	    /* USB接続完了待ち */
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();			// USB接続完了
		if(blinkStatusValid)
			BlinkUSBStatus();			// USB状態LED表示
			
		/* デバイス接続状態なら機能実行 */
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
		}
    } 
}

/******************************************************************************
* ユーザーアプリ関数
*  USB受信コマンド処理関数
*****************************************************************************/
void ProcessIO(void)
{
	/*** コマンド入力と処理  ***/
 	if(getsUSBUSART(input_buffer,48)){				// データ受信ポール
		mLED_1_Toggle();							// LED反転
  		switch(input_buffer[0])	{					// 最初の１文字チェック
   			case '0':	  							// 初期設定とオープン
				blinkStatusValid = FALSE;			// LEDブリンク禁止
        	   		if(USBUSARTIsTxTrfReady())		// 送信可能か？
     			 	putrsUSBUSART("OK");			// OKデータ送信指示
     			break;         			 	
   			case '1':								// 周期設定
				Freq = atof(&input_buffer[1]);		// 周期データ取得
				serial_out(Freq); 					// DDSに出力
     		 	break;
        	case '2':								// データ直接送信
				/*** チャネル0測定  ****/
				ADCON0 = 0x01;						// チャネル0選択
				ADCON0bits.GO = 1;					// 変換開始
				while(ADCON0bits.GO);				// 変換終了待ち
				Result = ADRESH*256 + ADRESL;		// CH0測定
				/* dBに変換　Vref=4.73V　0dB=2.19Vで実測した値
				   40dB*4.73/1024=0.185 		 */
   				logData0 = 0.219*Result - 87.0;		// dBに変換（IC特性値）
				if(logData0 < 0){					// 負か？
					MsgTX[4] = '-';					// -記号セット
					logData0 = fabs(logData0);		// 絶対値に変換
				}
				else
					MsgTX[4] = '+';
  				ftostring(2, 1, logData0, MsgTX+5);	// 正の値のセット
				/** チャネル1測定  *****/
				ADCON0 = 0x05;						// チャネル1選択
				ADCON0bits.GO = 1;					// 変換開始
				while(ADCON0bits.GO);				// 変換終了待ち
				Result = ADRESH*256 + ADRESL;		// CH1測定
				logData1 = 0.219*Result - 87.0;		// dBに変換（IC特性値）
				if(logData1 < 0){					// 負か？
					MsgTX[15] = '-';				// -記号セット
					logData1 = fabs(logData1);		// 絶対値に変換
				}
				else
					MsgTX[15] = '+';
		       	ftostring(2, 1, logData1, MsgTX+16);// 正の値にセット
				/* USB送信実行 */
      		   	if(USBUSARTIsTxTrfReady())			// 送信可能か？
     		   	 	putUSBUSART(MsgTX, 22);			// 送信指示
        			break;

	   		default:
        	   		if(USBUSARTIsTxTrfReady())		// 送信可能か？
     			 	putrsUSBUSART("NG");			// NGデータ送信指示
	   			 	break;			
	 	}
		CDCTxService();								// 送信実行
	}
}
/***********************************************************
* AD9851　高性能DDS制御関数
* 　DDSへの送信フォーマットは下記順序
* 　 W0  Freq bit0(LSB)
* 　 W1  Freq bit1　　　Freq= (設定値×クロック)÷2の32乗
* 　 ------------                            (4,294,967,296)
* 　 W31 Freq bit31(MSB)
* 　 W32 x6 REFCLK Multiplier Enable
*  　W33 0
*  　W34 Power Down at 1
*  　W35 Phase bit0(LSB)   360度/32で指定
*  　--------------
*  　W39 Phase bit4(MSB)
*  クロックは24MHz×6=144MHz 　　　　0.0335Hz単位の設定
***********************************************************/
void serial_out(float data){
	/* 周波数設定制御実行 実際の周波数143.9958で補正　*/
	Para = 29.82703 * data;				// 2の32乗÷144MHz=29.82616
	DDSdata.Phase = (long)Para;			//
	/*　周波数値32ビット出力する */
	for(i=0; i<4; i++)	{
		mask = 0x01;					// ビットマスクの初期設定
		for(j=0; j<8; j++){
			if(DDSdata.iPhase[i] & mask)
				S_IN =1;
			else
				S_IN = 0;
			W_CLK =1;					// ビット送信クロック
			W_CLK = 0;
			mask = mask << 1;			// ビットマスクのビットシフト
		}
	}
	/* 設定制御8ビット出力 */
	mask = 0x01;						// ビットマスクの初期設定
	for(j=0; j<8; j++)	{
		if(0x01 & mask)					// ６倍モードのみ
			S_IN = 1;
		else
			S_IN = 0;
		W_CLK = 1;						// ビット送信クロック
		W_CLK = 0;
		mask = mask << 1;				// ビットマスクの１ビットシフト
	}
	FQ_UD = 1;							// 周波数値ロード指示
	FQ_UD = 0;	
	FQ_UD = 0;	
}
/******************************************************************************
 * int 数値から文字列に変換
 *****************************************************************************/
void itostring(char digit, unsigned int data, char *buffer)
{
	char i;
	buffer += digit;						// 文字列の最後
	for(i=digit; i>0; i--) {				// 最下位桁から上位へ
		buffer--;						// ポインター１
		*buffer = (data % 10) + '0';		// その桁数値を文字にして格納
		data = data / 10;					// 桁-1
	}
}
/******************************************************************************
 * Float数値から文字列へ変換
 *　合計有効桁は５桁以下とすること
 *****************************************************************************/
void ftostring(int seisu, int shousu, float data, char *buffer)
{
	unsigned int i, dumy;

	if(shousu != 0)						// 小数部桁ありか
		buffer += seisu+shousu+1;			// 全体桁数＋小数点
	else								// 小数部桁なしのとき
		buffer += seisu + shousu;			// 全体桁数のみ
	*buffer = 0;							// 配列最後に\0格納
	buffer--;							// 配列ポインタ-1
	for(i=0; i<shousu; i++)				// 小数部を整数に変換
		data = data * 10;					// １０倍
	dumy = (unsigned int) (data + 0.5);	// 四捨五入して整数に変換
	for(i=shousu; i>0; i--)	{			// 小数桁数分繰り返し
		*buffer =(dumy % 10)+'0';			// 数値を文字に変換格納
		buffer--;						// 格納場所下位から上位へ
		dumy = (unsigned int)(dumy / 10);	// 次の桁へ
	}
	if(shousu != 0) {						// 小数桁0なら小数点なし
		*buffer = '.';					// 小数点を格納
		buffer--;						// ポインタ-1
	}
	for(i=seisu; i>0; i--) {				// 整数桁分繰り返し
		*buffer = (dumy % 10)+'0';			// 数値を文字に変換格納
		buffer--;						// ポインタ-1
		dumy = (unsigned int)(dumy / 10);	// 次の桁へ
	}
}
/***********************************************************
* LEDブリンク制御関数
*  USBアタッチ；高速ブリンク
*  USB Enumeration完了：低速ブリンク
************************************************************/
void BlinkUSBStatus(void)
{
    static WORD led_count=0;
    
    if(led_count == 0)led_count = 10000U;
    led_count--;
	/* マクロ定義 */
    #define mLED_Both_Off()         {mLED_1_Off();mLED_2_Off();}
    #define mLED_Both_On()          {mLED_1_On();mLED_2_On();}
    #define mLED_Only_1_On()        {mLED_1_On();mLED_2_Off();}
    #define mLED_Only_2_On()        {mLED_1_Off();mLED_2_On();}

    if(USBSuspendControl == 1){
        if(led_count==0){
            mLED_1_Toggle();
            if(mGetLED_1()){
                mLED_2_On();
            }
            else{
                mLED_2_Off();
            }
        }//end if
    }
    else{
        if(USBDeviceState == DETACHED_STATE){
            mLED_Both_Off();
        }
        else if(USBDeviceState == ATTACHED_STATE){
            mLED_Both_On();
        }
        else if(USBDeviceState == POWERED_STATE){
            mLED_Only_1_On();
        }
        else if(USBDeviceState == DEFAULT_STATE){
            mLED_Only_2_On();
        }
        else if(USBDeviceState == ADDRESS_STATE){
            if(led_count == 0){
                mLED_1_Toggle();
                mLED_2_Off();
            }//end if
        }
        else if(USBDeviceState == CONFIGURED_STATE){
            if(led_count==0){
                mLED_1_Toggle();
                if(mGetLED_1()){
                    mLED_2_Off();
                }
                else {
                    mLED_2_On();
                }
            }//end if
        }//end if(...)
    }//end if(UCONbits.SUSPND...)

}//end BlinkUSBStatus
///***********************************************************
//* ボーレート変更関数
//*
//* 　条件:  USB_CDC_SET_LINE_CODING_HANDLER が定義されていること
//* 　USB側とUSARTの通信速度が同じでなければならない
//************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps以上なら何もしない
	}
	else
	{
		DWORD_VAL dwBaud;
		
		// CDCドライバのボーレート変更
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
		// USARTのボーレート変更
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
