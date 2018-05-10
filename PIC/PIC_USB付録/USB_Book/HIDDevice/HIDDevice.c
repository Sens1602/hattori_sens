/********************************************************************
*  HIDデバイス　温湿度計
*  HIDクラスを使った例題
*  Low Pin Count USB Demo Boardを使用
********************************************************************/
/** ファイルインクルード **************************/
#include "./USB/usb.h"
#include "HardwareProfile.h"
#include "./USB/usb_function_hid.h"
/** コンフィギュレーション　***********************/
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PWRTEN = ON, BOREN = OFF, MCLRE = OFF, BORV = 30
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF
/******** USB関連バッファ、変数定義 ****/
#pragma udata usbram2
unsigned char ReceivedDataBuffer[64];
unsigned char SendBuf[64];
#pragma udata
USB_HANDLE USBOutHandle = 0;
USB_HANDLE USBInHandle = 0;
BOOL blinkStatusValid = TRUE;
/**** グローバル変数定義　***/
BYTE  counter;
BOOL  blinkStatusValid;
/*** コマンド定数定義 ***/
typedef enum
{
    CHECK	= 0x30,
	POUT	= 0x31,
	PIN		= 0x32,
	AIN		= 0x33,
    RESET	= 0xFF

}TYPE_CMD;

/** 関数プロトタイピング ****************************/
void BlinkUSBStatus(void);
void ProcessIO(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void USBCBSendResume(void);

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
	ANSEL = 0x00;					// デジタルに設定
	ANSELH =0x07;					// AN8,9,10のみアナログ
	TRISA = 0xFF;					// RA0-5入力
	TRISB = 0x7F;					// RB7(TX)以外すべて入力
	LATC = 0;						// 出力初期化
	TRISC = 0xF0;					// RC6,7アナログ入力、RC0-3出力
	/* ADC初期化 */
	ADCON0 = 0;						// 停止
	ADCON1 = 0;						// VDD-Vss
	ADCON2 = 0xBE;					// 右詰め,20Tad,Fosc/64
	/* USB関連 **/
	USBDeviceInit();				// USB初期化	
	USBInHandle = 0;	
	USBOutHandle = 0;
	blinkStatusValid = TRUE;		// USB目印LED有効化
	USBDeviceAttach();				// USB割り込み有効化
	
	/*********** メインループ ***************/
    while(1)
    {
		/** USB目印LED点滅 **/
		if(blinkStatusValid)
			BlinkUSBStatus();		// LED点滅実行
			
		/*** USB接続中なら送受信実行 ***/
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1))
			ProcessIO();				// コマンド実行
	}
}
/***************************************************
 * ユーザーアプリの入出力処理関数
 * USBからのコマンドにより機能実行
 ***************************************************/
void ProcessIO(void)
{
	/***** データ受信処理 ******/
	if(!HIDRxHandleBusy(USBOutHandle))
	{ 
		blinkStatusValid = FALSE;
		SendBuf[0] = ReceivedDataBuffer[0];
		SendBuf[1] = ReceivedDataBuffer[1];			       
		/******** コマンドの処理 ********/
		switch(ReceivedDataBuffer[0])		// コマンドコードチェック
		{
			/** 接続確認応答 **/
			case CHECK:
				SendBuf[2] = 'O';
				SendBuf[3] = 'K';
				if(!HIDTxHandleBusy(USBInHandle))
					USBInHandle = HIDTxPacket(HID_EP,(BYTE*)&SendBuf[0],64);				
				break;
			/** 出力ピン出力要求と状態応答の場合 ***/
			case POUT:
				if(ReceivedDataBuffer[1] == 0x31){
					if(ReceivedDataBuffer[2] == 0x31)
					{	mLED_1_On();		}
					else if(ReceivedDataBuffer[2] == 0x30)
					{	mLED_1_Off();	}
					SendBuf[2] = mLED_1 + 0x30;
				}
				else if(ReceivedDataBuffer[1] == 0x32){
					if(ReceivedDataBuffer[2] == 0x31)
					{	mLED_2_On();		}
					else if(ReceivedDataBuffer[2] == 0x30)
					{	mLED_2_Off();	}
					SendBuf[2] = mLED_2 + 0x30;
				}
				else if(ReceivedDataBuffer[1] == 0x33){
					if(ReceivedDataBuffer[2] == 0x31)
					{	mLED_3_On();		}
					else if(ReceivedDataBuffer[2] == 0x30)
					{	mLED_3_Off();	}
					SendBuf[2] = mLED_3 + 0x30;
				}
				else if(ReceivedDataBuffer[1] == 0x34){
					if(ReceivedDataBuffer[2] == 0x31)
					{	mLED_4_On();		}
					else if(ReceivedDataBuffer[2] == 0x30)
					{	mLED_4_Off();	}
					SendBuf[2] = mLED_4 + 0x30;
				}
				if(!HIDTxHandleBusy(USBInHandle))
					USBInHandle = HIDTxPacket(HID_EP,(BYTE*)&SendBuf[0],64);
				break;
			/** 入力ピン状態要求と応答の場合  **/	
			case PIN :
				if(ReceivedDataBuffer[1] == 0x31){
					if(sw1)
						SendBuf[2] = 0x31;
					else
						SendBuf[2] = 0x30;
				}
				else if(ReceivedDataBuffer[1] == 0x32){
					if(sw2)
						SendBuf[2] = 0x31;
					else
						SendBuf[2] = 0x30;					
				}
				else if(ReceivedDataBuffer[1] == 0x33){
					if(sw3)
						SendBuf[2] = 0x31;
					else
						SendBuf[2] = 0x30;
				}
				if(!HIDTxHandleBusy(USBInHandle))
					USBInHandle = HIDTxPacket(HID_EP,(BYTE*)&SendBuf[0],64);
				break;
			/***** アナログ入力要求と応答 *****/
			case AIN:
				/* チャネル選択後A/D変換 AN8,AN9, An10 */
				ADCON0 = ((ReceivedDataBuffer[1]-0x31+8) << 2) + 0x01;
				ADCON0bits.GO = 1;              	// A/D変換開始
				while(ADCON0bits.NOT_DONE);     	// 変換完了待ち
				SendBuf[2] = ADRESL;		// 送信バッファにセット
				SendBuf[3] = ADRESH;
				if(!HIDTxHandleBusy(USBInHandle))				
					USBInHandle = HIDTxPacket(HID_EP,(BYTE*)&SendBuf[0],64);
				break;			
			/** リセットデバイス　***/
			case RESET:
				Reset();
				break;
			/*** 不明 ****/
			default:
				break;
		}
		/* 次の受信実行 */
		USBOutHandle = HIDRxPacket(HID_EP,(BYTE*)&ReceivedDataBuffer,64);
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
	USBCheckHIDRequest();
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
    //enable the HID endpoint
    USBEnableEndpoint(HID_EP,USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    //Re-arm the OUT endpoint for the next packet
    USBOutHandle = HIDRxPacket(HID_EP,(BYTE*)&ReceivedDataBuffer,64);
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

