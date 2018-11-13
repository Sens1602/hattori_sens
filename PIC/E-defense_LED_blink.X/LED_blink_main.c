/********************************************************************
 * miniPSD wireless version
********************************************************************/
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

/**configration***********************/
//pragma?http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C?http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
//Probably, 4 MHz is generated from the oscillator 12 MHz by 3
//?It generates 96 MHz with PLL, it also divides by 2 to generate 48 MHz, it is used for USB clock and system clock
//datasheet:2550,TABLE 2-3:
#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 2               //8MHz
#pragma config CPUDIV = OSC1_PLL2       //2???CPU48MHz
#pragma config VREGEN = ON              //USB???????ON
#pragma config USBDIV =2                //2???USB??????
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
#pragma config PBADEN = ON       //???B???????????
//#pragma config ICPRT = OFF              //?

/**global variable************/
#pragma udata
char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
USB_HANDLE    lastTransmission;
unsigned char i;

int err;//I2C??????????
int led_blightness = 0;
int  blight_flag = 0;
char outbuf[30];//
unsigned long counter;
int b;
char temp;

unsigned int accel_h_x;
unsigned int accel_l_x;
char bt_accel_h_x[3];
char bt_accel_l_x[3];
char *ptr_accel_h_x;
char *ptr_accel_l_x;

/**function prototype *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void Calc();


/*** interrupt vector***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/****interrupt function***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
    if(INTCONbits.TMR0IF){  
        INTCONbits.TMR0IF = 0; 
        WriteTimer0(35416);

        if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
            USBDeviceAttach();

        if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
            PORTBbits.RB5 ^= 1;
            if(blight_flag ==0 && led_blightness<50){
                led_blightness++;
            }else if(led_blightness > 0){
                blight_flag = 1;
                led_blightness--;
            }else{
                blight_flag = 0;
            }
  
            /*          
            if(led_blightness != 40){
                led_blightness = 40;
            }else{
                led_blightness = 0;
            }                                                        
            */
            outbuf[0] = WI2C(0b11001010, 0x06, 100);
            outbuf[1] = led_blightness;
            
            while(!USBUSARTIsTxTrfReady()) CDCTxService();//magic spell
            putUSBUSART(outbuf, 2);
            CDCTxService();
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

/****main function***/
void main(void){  
    //wait for oscillation stability
    for(i=0; i<100; i++)Nop(); 
    PORTBbits.RB5 = 0;

    TRISA = 0b11111111;
    TRISB = 0b00011100;
    TRISC = 0b00000000;
    USBDeviceInit();
    
    //I2C configration
    //SSPADD = ((Fosc/4) / Fscl) - 1
    OpenI2C(MASTER, SLEW_ON);   // master mode
    SSPADD = 29;                //I2C400kHz?
    err = WI2C(0b11001010, 0x01, 0b00000011);
    err = WI2C(0b11001010, 0x06, 0x11111111);

    //Timei0 configration
    T0CON = 0b10000100;
    WriteTimer0(35416);
    INTCONbits.GIE = 1;
    INTCONbits.TMR0IE = 1;
        
    while(1){  
        if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
            USBDeviceAttach();	
    }
}

//I2C??????????
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
   // if ( PIR2bits.BCLIF )return ( 1 );        // ??????? 
// ---------------- ???????? -----------------------------
    if(WriteI2C(control))return(2);           // ??????? 
    IdleI2C();                                 // ??????
    if (SSPCON2bits.ACKSTAT )return(3);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(address))return(4);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(5);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ???????? --------------------------
    if(WriteI2C(data))return(8);              // ????????
    IdleI2C();                                 // ??????  
    if ( SSPCON2bits.ACKSTAT)return(9);       // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
   // if ( PIR2bits.BCLIF )return ( 0 );       // ?????? 
    return (0x64); 
    
}

//I2C??????????
unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
   // if ( PIR2bits.BCLIF )return ( 8 );        // ??????? 
        
// ---------------- ???????? -----------------------------
    if(WriteI2C(control))return(33);           // ??????? 
    IdleI2C();                                 // ??????
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(address))return(35);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Restart?? -----------------------
    RestartI2C();                              // restart ????????????????????????
    //if ( PIR2bits.BCLIF )return (37);        // ??????? 
// ---------------- ??????Read Mode?? -----------------------------
    if(WriteI2C(control+1))return(38);         // ??????? 
    IdleI2C();// ??????
    if ( SSPCON2bits.ACKSTAT )return(39);     // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ?????? -----------------------------
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    NotAckI2C();                               // ACK?????Not ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
    //if ( PIR2bits.BCLIF )return (40);       // ?????? 
    PIR1bits.SSPIF = 0;                    // SSPIF???
    return ( (unsigned int) SSPBUF );      // ????
}

//?????
void Calc(){
//----------------???,????-----------------
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
    //if ( PIR2bits.BCLIF )return ( 8 );       // ??????? 
        
// ---------------- ???????? -----------------------------
    if(WriteI2C(0b11010000))return(33);        // ??????? 
    IdleI2C();                                 // ??????
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(0x3B))return(35);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Restart?? -----------------------
    RestartI2C();                              // restart ????????????????????????
    //if ( PIR2bits.BCLIF )return (37);        // ??????? 
// ---------------- ??????Read Mode?? -----------------------------
    if(WriteI2C(0b11010001))return(38);        // ??????? 
    IdleI2C();// ??????
    if ( SSPCON2bits.ACKSTAT )return(39);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ????? -----------------------------
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[0] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[1] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
         
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[2] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
        
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[3] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
        
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[4] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[5] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    //?????????
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    
    
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[6] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
   
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[7] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[8] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[9] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[10] = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    outbuf[11] = (unsigned int)  SSPBUF;       //???????
    NotAckI2C();                               // ACK?????Not ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
    
    //while(!USBUSARTIsTxTrfReady()) CDCTxService();//??????????????????????      
    putUSBUSART(outbuf, 28);
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