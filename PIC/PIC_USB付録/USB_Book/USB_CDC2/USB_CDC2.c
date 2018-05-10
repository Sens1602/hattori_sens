ss/********************************************************************
* USB RS232C変換ユニット
* CDCデバイスクラスを使用
********************************************************************/
/** インクルードファイル宣言 *************/
#include "./USB/usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "HardwareProfile.h"
/** コンフィギュレーション　***********************/
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PWRTEN = ON, BOREN = OFF, MCLRE = ON
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF


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
BOOL blinkStatusValid;				// LEDブリンク許可フラグ

/** 関数プロトタイピング *******************/
void ProcessIO(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void BlinkUSBStatus(void);
unsigned char getcUSART (void);

/*** 割り込みベクタ定義 ***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/**** 割り込み処理関数 ***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        USBDeviceTasks();		// USBステート関数実行
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	

#pragma code
/*********** メイン関数 **************************/
void main(void)
{ 
	ANSEL = 0x00;				// デジタルに設定
	ANSELH =0x00;	
	TRISA = 0xFF;				// RA0-5入力
	TRISB = 0x30;				// RB4,5のみ入力(SW1,RX)
	TRISC = 0x20;				// RC5のみ入力
	WPUBbits.WPUB4 = 1;			// RB4 pull up
	TRISC = 0x00;				// RC0-7出力
	/* USART初期化 */
	TXSTA = 0x24;       		// TX enable BRGH=1
	RCSTA = 0x90;       		// Single Character RX
	SPBRG = 0x71;
	SPBRGH = 0x02;      		// 0x0271 for 48MHz -> 19200 baud
	BAUDCON = 0x08;     		// BRG16 = 1
	/* バッファクリア */
	for (i=0; i<sizeof(USB_Out_Buf); i++)
		USB_Out_Buf[i] = 0;
	RxIndex = 0;				// ポインタクリア
	USBRxNum = 0;				// カウンタクリア
	lastTransmission = 0;		// ハンドルクリア
    USBDeviceInit();			// USB初期化.
	blinkStatusValid = TRUE;	// LEDブリンク許可 
	
	/*************** メインループ ********************/  
	while(1)
    {
	    // USB接続状態確認
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB接続完了
		if(blinkStatusValid)
			BlinkUSBStatus();				// USB状態LED表示
			
		// デバイス接続状態なら機能実行
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
		}
    }
}

/**************************************************
 * USB ← → USART送受信
 * 双方向送受信全二重で可能
 * LEDで方向表示　赤：USB送信　緑：USART送信
 **************************************************/
void ProcessIO(void)
{   
	if (Tx_Rdy == 0)  							// USART送信中でないか？
	{
		/* USB受信 */
		USBRxNum = getsUSBUSART(USB_In_Buf,64);	// USB一括受信実行
		if(USBRxNum > 0)						// USB受信ありか？
		{
			blinkStatusValid = FALSE;			// LEDブリンク中止
			mLED_1_Toggle();					// 赤トグル
			mLED_2_Off();						// 緑オフ
			Tx_Rdy = 1;  						// USART送信中フラグオン
			TxIndex = 0;  						// バッファポインタリセット
		}
	}
	/* USB受信データをUSART送信 */
	if(Tx_Rdy && TXSTAbits.TRMT)				// 送信レディーか？
	{
		TXREG = USB_In_Buf[TxIndex];			// USARTへバイト送信実行
		++TxIndex;								// ポインタ更新
		if (TxIndex == USBRxNum){				// 全部送信完了か？
			Tx_Rdy = 0;							// 送信中フラグクリア
		}
	}
	/* USARTからの受信 */
	if(PIR1bits.RCIF && (RxIndex < (CDC_DATA_OUT_EP_SIZE - 1)))
	{
		blinkStatusValid = FALSE;				// LEDブリンク中止
		mLED_2_Toggle();						// 緑トグル
		mLED_1_Off();							// 赤オフ
		USB_Out_Buf[RxIndex] = getcUSART();		// USARTバイト受信実行し格納
		++RxIndex;								// バッファポインタ更新
		USB_Out_Buf[RxIndex] = 0;				// 最後にNULL追加
	}
	/* USART受信データをUSB送信 */
	if((USBUSARTIsTxTrfReady()) && (RxIndex > 0))
	{
		putUSBUSART(&USB_Out_Buf[0], RxIndex);	// USB一括送信バッファにセット
		RxIndex = 0;							// ポインタクリア
	}
	/* USB送信実行 */
    CDCTxService();
}

/***************************************
*  USART受信関数 
****************************************/
unsigned char getcUSART (void)
{
	char  c;
	
	if (RCSTAbits.OERR)  			// エラーチェック
	{
		RCSTAbits.CREN = 0;  		// USART初期化
		c = RCREG;					// ダミー受信でバッファクリア
		RCSTAbits.CREN = 1;  		// USART再起動
	}
	else
		c = RCREG;					// 受信データ取得
	return c;
}

/***********************************************************
* ボーレート変更関数
*
* 　条件:  USB_CDC_SET_LINE_CODING_HANDLER が定義されていること
* 　USB側とUSARTの通信速度が同じでなければならない
************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps以上なら何もしない
	}
	else{
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

    #define mLED_Both_Off()     {mLED_1_Off();mLED_2_Off();}
    #define mLED_Both_On()      {mLED_1_On();mLED_2_On();}
    #define mLED_Only_1_On()    {mLED_1_On();mLED_2_Off();}
    #define mLED_Only_2_On()    {mLED_1_Off();mLED_2_On();}

    if(USBSuspendControl == 1) {
        if(led_count==0) {
            mLED_1_Toggle();
            if(mGetLED_1()) {
                mLED_2_On();
            }
            else {
                mLED_2_Off();
            }
        }
    }
    else {
        if(USBDeviceState == DETACHED_STATE) {
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
        else if(USBDeviceState == ADDRESS_STATE) {
            if(led_count == 0){
                mLED_1_Toggle();
                mLED_2_Off();
            }
        }
        else if(USBDeviceState == CONFIGURED_STATE) {
            if(led_count==0) {
                mLED_1_Toggle();
                if(mGetLED_1()) {
                    mLED_2_Off();
                }
                else {
                    mLED_2_On();
                }
            }
        }
    }
}

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

