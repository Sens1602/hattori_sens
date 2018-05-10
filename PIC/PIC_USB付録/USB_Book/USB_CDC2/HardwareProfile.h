/********************************************************************
* USB-RS232C変換ボードハードウェア定義
********************************************************************/
//#define USE_SELF_POWER_SENSE_IO	
//#define tris_self_power     TRISAbits.TRISA2    // Input
#if defined(USE_SELF_POWER_SENSE_IO)
#define self_power          PORTAbits.RA2
#else
#define self_power          1
#endif

//#define USE_USB_BUS_SENSE_IO
//#define tris_usb_bus_sense  TRISAbits.TRISA1    // Input
#if defined(USE_USB_BUS_SENSE_IO)
#define USB_BUS_SENSE       PORTAbits.RA1
#else
#define USB_BUS_SENSE       1
#endif

/******** Application specific definitions ***************/

#define CLOCK_FREQ 48000000
#define GetSystemClock() CLOCK_FREQ
    
/** LED **************************************************/
#define mLED_1			LATCbits.LATC1
#define mLED_2              LATCbits.LATC2

#define mGetLED_1()         mLED_1
#define mGetLED_2()         mLED_2

#define mLED_1_On()         mLED_1 = 1;
#define mLED_2_On()         mLED_2 = 1;

#define mLED_1_Off()        mLED_1 = 0;
#define mLED_2_Off()        mLED_2 = 0;

#define mLED_1_Toggle()     mLED_1 = !mLED_1;
#define mLED_2_Toggle()     mLED_2 = !mLED_2;

/** SWITCH *********************************************/
#define sw2				PORTCbits.RC5

/** RS 232 lines ***************************************/
#define UART_TRISTx		TRISBbits.TRISB7
#define UART_TRISRx		TRISBbits.TRISB5
#define UART_Tx			PORTBbits.RB7
#define UART_Rx			PORTBbits.RB5
#define UART_TRISRTS	TRISBbits.TRISB4
#define UART_RTS		PORTBbits.RB4
#define UART_TRISDTR	TRISBbits.TRISB6
#define UART_DTR		PORTBbits.RB6
#define UART_ENABLE		RCSTAbits.SPEN
