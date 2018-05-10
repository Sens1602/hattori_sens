/***********************************************************
*  汎用デバイスクラスを使ったリモートI/O
*  　デジタル入出力とアナログ入力
************************************************************/

/** ファイルインクルード **************************/
#include "USB/usb.h"
#include "USB/usb_function_generic.h"
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "usb_config.h"
/** コンフィギュレーション　***********************/
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PWRTEN = ON, BOREN = OFF, MCLRE = ON, BORV = 30
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF

/*** ステート定数定義 ***/
typedef enum
{
    CHECK	= 0x30,
	POUT	= 0x31,
	ALL		= 0x34,
    RESET	= 0xFF

}TYPE_CMD;
/******** USB関連バッファ、変数定義 ****/
#pragma udata usbram2
BYTE INPacket[USBGEN_EP_SIZE];	// USB送信バッファ
BYTE OUTPacket[USBGEN_EP_SIZE];	// USB受信バッファ
#pragma udata
USB_HANDLE USBGenericOutHandle;
USB_HANDLE USBGenericInHandle;
/**** 変数定義　***/
BYTE  counter;
BOOL  blinkStatusValid;
/** 関数プロトタイピング ****************************/
void USBDeviceTasks(void);
void YourHighPriorityISRCode(void);
void YourLowPriorityISRCode(void);
void USBCBSendResume(void);
void BlinkUSBStatus(void);
void ProcessIO(void);
/************ 割り込みベクタ定義 ***********/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void)
{
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void)
{
     _asm goto YourLowPriorityISRCode _endasm
}
/************* 割り込み処理関数 ************/
#pragma code
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode()
{
        USBDeviceTasks();
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}

/***********  メイン関数 ***************************/
#pragma code
void main(void)
{   
	/* IOピン初期設定　*/
	ANSEL = 0x70;					// AN4,5,6以外デジタルに設定
	ANSELH =0x00;	
	TRISA = 0xFF;					// RA0-5入力
	TRISB = 0xFF;					// RBすべて入力
	LATC = 0;						// 出力初期化
	TRISC = 0x07;					// RC0,1,2アナログ入力、RC3-7出力
	/* ADC初期化 */
	ADCON0 = 0;						// 停止
	ADCON1 = 0;						// VDD-Vss
	ADCON2 = 0xBE;					// 右詰め,20Tad,Fosc/64
	/* USB関連 **/
	USBDeviceInit();				// USB初期化	
	USBGenericInHandle = 0;	
	USBGenericOutHandle = 0;
	blinkStatusValid = TRUE;		// USB目印LED有効化
	/** USBアタッチ許可と割り込み許可 */
	USBDeviceAttach();

	/*********** メインループ ***************/
    while(1)
    {
		/** USB目印LED点滅 **/
		if(blinkStatusValid)
			BlinkUSBStatus();		// LED点滅実行
			
		/*** USB接続中なら送受信実行 ***/
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1))
			ProcessIO();			// ユーザーアプリ実行
	}
}
/***************************************************
 * ユーザーアプリ、入出力処理関数
 * USBからのコマンドにより機能実行
 ***************************************************/
void ProcessIO(void)
{
	/***** データ受信処理 ******/
	if(!USBHandleBusy(USBGenericOutHandle))		// 受信完了か？
	{        
		/** 受信データ取り出し **/
		blinkStatusValid = FALSE;				// USB目印LED中止
		counter = 0;							// 送信バイト数リセット
		INPacket[0] = OUTPacket[0];				// エコーバック
		INPacket[1] = OUTPacket[1];			
		/******** コマンドの処理 ********/
		switch(OUTPacket[0])					// コマンドコードチェック
		{
			/** 接続確認OK応答 **/
			case CHECK:
				INPacket[2] = 'O';
				INPacket[3] = 'K';
				counter=0x04;						// 送信バイト数4
				break;
			/** 出力ピン出力要求と状態応答の場合 ***/
			case POUT:
				if(OUTPacket[1] == 0x31){			// DOアドレス1
					if(OUTPacket[2] == 0x31)		// オン制御か？
					{	mPO_1_On();		}			// オン制御
					else if(OUTPacket[2] == 0x30)	// オフ制御か？
					{	mPO_1_Off();	}			// オフ制御
					counter = 0x04;					// 送信バイト数4					
					INPacket[2] = mPIO_1 + 0x30;	// 状態応答セット
				}
				else if(OUTPacket[1] == 0x32){
					if(OUTPacket[2] == 0x31)
					{	mPO_2_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_2_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_2 + 0x30;
				}
				else if(OUTPacket[1] == 0x33){
					if(OUTPacket[2] == 0x31)
					{	mPO_3_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_3_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_3 + 0x30;
				}
				else if(OUTPacket[1] == 0x34){
					if(OUTPacket[2] == 0x31)
					{	mPO_4_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_4_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_4 + 0x30;
				}
				else if(OUTPacket[1] == 0x35){
					if(OUTPacket[2] == 0x31)
					{	mPO_5_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_5_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_5 + 0x30;
				}
				break;
				
			/**** 一括転送 **************/
			case ALL:
				/* DI状態セット */
				if(mPI_1)						// DI状態オフか？
					INPacket[2] = 0x30;			// オフ応答セット
				else
					INPacket[2] = 0x31;			// オン応答セット
				if(mPI_2)
					INPacket[3] = 0x30;
				else
					INPacket[3] = 0x31;
				if(mPI_3)
					INPacket[4] = 0x30;
				else
					INPacket[4] = 0x31;
				if(mPI_4)
					INPacket[5] = 0x30;
				else
					INPacket[5] = 0x31;	
				/* 計測データセット */
				ADCON0 = 0x11;					// AN4選択
				ADCON0bits.GO = 1;              // A/D変換開始
				while(ADCON0bits.NOT_DONE);     // 変換完了待ち
				INPacket[6] = ADRESL;			// 送信バッファにセット
				INPacket[7] = ADRESH;						
				ADCON0 = 0x15;					// AN5選択
				ADCON0bits.GO = 1;              // A/D変換開始
				while(ADCON0bits.NOT_DONE);     // 変換完了待ち
				INPacket[8] = ADRESL;			// 送信バッファにセット
				INPacket[9] = ADRESH;
				ADCON0 = 0x19;					// AN6選択
				ADCON0bits.GO = 1;              // A/D変換開始
				while(ADCON0bits.NOT_DONE);     // 変換完了待ち
				INPacket[10] = ADRESL;			// 送信バッファにセット
				INPacket[11] = ADRESH;
				counter = 12;
				break;
																	
			/** リセットデバイス　***/
			case RESET:
				Reset();
				break;
			/*** 不明 ****/
			default:
				Nop();
				break;
		}
		/**** USB送受信実行  *****/
		if(counter != 0)								// 送信データありか？
		{
			if(!USBHandleBusy(USBGenericInHandle))		// ビジーチェック
			{	/* 送信実行　*/
				USBGenericInHandle = USBGenWrite(USBGEN_EP_NUM,(BYTE*)&INPacket,64);
			}
		}
		/* 次の受信実行 */
		USBGenericOutHandle = USBGenRead(USBGEN_EP_NUM,(BYTE*)&OUTPacket,USBGEN_EP_SIZE);
	}
}

/****************************************************
 * USB状態表示用LEDブリンク処理関数
 *  USBアタッチ：高速ブリンク
 *  SUB接続完了：低速ブリンク
 ***************************************************/
void BlinkUSBStatus(void)
{
	static WORD led_count=0;
	
	if(led_count == 0)led_count = 10000U;
	led_count--;
	#define mLED_Both_Off()         {mLED_1_Off();mLED_2_Off();}
	#define mLED_Both_On()          {mLED_1_On();mLED_2_On();}
	#define mLED_Only_1_On()        {mLED_1_On();mLED_2_Off();}
	#define mLED_Only_2_On()        {mLED_1_Off();mLED_2_On();}
	if(USBSuspendControl == 1)
	{
		if(led_count==0)
		{
			mLED_1_Toggle();
			if(mGetLED_1())
			{	mLED_2_On();	}
			else
			{	mLED_2_Off();	}
		}
	}
	else
	{
		if(USBDeviceState == DETACHED_STATE)
		{	mLED_Both_Off();	}
		else if(USBDeviceState == ATTACHED_STATE)
		{	mLED_Both_On();		}
		else if(USBDeviceState == POWERED_STATE)
		{	mLED_Only_1_On();	}
		else if(USBDeviceState == DEFAULT_STATE)
		{	mLED_Only_2_On();	}
		else if(USBDeviceState == ADDRESS_STATE)
		{
			if(led_count == 0){
				mLED_1_Toggle();
				mLED_2_Off();
			}
		}
		else if(USBDeviceState == CONFIGURED_STATE)	{
			if(led_count==0){      
				mLED_1_Toggle();
				if(mGetLED_1())
				{	mLED_2_Off();	}
				else
				{	mLED_2_On();	}
			}
		}
	}
}

/******************************************************************
************** USB Callback Functions *****************************
*******************************************************************/
/******************************************************************
 * Function:        void USBCBSuspend(void)
 ******************************************************************/
void USBCBSuspend(void)
{
}
/*******************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *******************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/********************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *******************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*******************************************************************
 * Function:        void USBCBErrorHandler(void)
 *******************************************************************/
void USBCBErrorHandler(void)
{
}
/*******************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *******************************************************************/
void USBCBCheckOtherReq(void)
{
}//end
/*******************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *******************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*******************************************************************
 * Function:        void USBCBInitEP(void)
 *******************************************************************/
void USBCBInitEP(void)
{
    USBEnableEndpoint(USBGEN_EP_NUM,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    USBGenericOutHandle = USBGenRead(USBGEN_EP_NUM,(BYTE*)&OUTPacket,USBGEN_EP_SIZE);
}
/*******************************************************************
 * Function:        void USBCBSendResume(void)
 ******************************************************************/
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
/*******************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 *******************************************************************/
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

