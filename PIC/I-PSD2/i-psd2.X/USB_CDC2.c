/********************************************************************
* USB RS232C??????
* CDC??????????
********************************************************************/
/** ???????????? *************/
#include "usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "HardwareProfile.h"
/** ????????????***********************/
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PWRTEN = ON, BOREN = OFF, MCLRE = ON
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF


/** ????????? ************/
#pragma udata
char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
USB_HANDLE    lastTransmission;
unsigned char RxIndex;				// USB???????????		
unsigned char USBRxNum;  			// USB??????????
unsigned char TxIndex;       		// RS232C???????????
unsigned char Tx_Rdy = 0;			// USART?????????
unsigned char i;
BOOL blinkStatusValid;				// LED?????????

/** ?????????? *******************/
void ProcessIO(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void BlinkUSBStatus(void);
unsigned char getcUSART (void);

/*** ????????? ***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/**** ???????? ***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        USBDeviceTasks();		// USB????????
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	

#pragma code
/*********** ????? **************************/
void main(void)
{ 
	ANSEL = 0x00;				// ???????
	ANSELH =0x00;	
	TRISA = 0xFF;				// RA0-5??
	TRISB = 0x30;				// RB4,5????(SW1,RX)
	TRISC = 0x20;				// RC5????
	WPUBbits.WPUB4 = 1;			// RB4 pull up
	TRISC = 0x00;				// RC0-7??
	/* USART??? */
	TXSTA = 0x24;       		// TX enable BRGH=1
	RCSTA = 0x90;       		// Single Character RX
	SPBRG = 0x71;
	SPBRGH = 0x02;      		// 0x0271 for 48MHz -> 19200 baud
	BAUDCON = 0x08;     		// BRG16 = 1
	/* ??????? */
	for (i=0; i<sizeof(USB_Out_Buf); i++)
		USB_Out_Buf[i] = 0;
	RxIndex = 0;				// ???????
	USBRxNum = 0;				// ???????
	lastTransmission = 0;		// ???????
    USBDeviceInit();			// USB???.
	blinkStatusValid = TRUE;	// LED?????? 
	
	/*************** ?????? ********************/  
	while(1)
    {
	    // USB??????
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB????
		if(blinkStatusValid)
			BlinkUSBStatus();				// USB??LED??
			
		// ??????????????
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
		}
    }
}

/**************************************************
 * USB ? ? USART???
 * ????????????
 * LED????????USB?????USART??
 **************************************************/
void ProcessIO(void)
{   
	if (Tx_Rdy == 0)  							// USART????????
	{
		/* USB?? */
		USBRxNum = getsUSBUSART(USB_In_Buf,64);	// USB??????
		if(USBRxNum > 0)						// USB??????
		{
			blinkStatusValid = FALSE;			// LED??????
			mLED_1_Toggle();					// ????
			mLED_2_Off();						// ???
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
		blinkStatusValid = FALSE;				// LED??????
		mLED_2_Toggle();						// ????
		mLED_1_Off();							// ???
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
	/* USB???? */
    CDCTxService();
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
/***********************************************************
* LED????????
*  USB???????????
*  USB Enumeration?????????
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

