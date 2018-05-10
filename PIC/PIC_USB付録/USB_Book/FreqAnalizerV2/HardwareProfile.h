/********************************************************************
*  周波数特性アナライザ　ボード設定
*
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
/** T R I S *********************************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

/******** Application specific definitions ***************/
#define CLOCK_FREQ 48000000
#define GetSystemClock() CLOCK_FREQ

/** L E D ***********************************************************/
#define mLED_1              LATBbits.LATB1
#define mLED_2              LATBbits.LATB0

#define mLED_1_On()         mLED_1 = 1;
#define mLED_2_On()         mLED_2 = 1;

#define mLED_1_Off()        mLED_1 = 0;
#define mLED_2_Off()        mLED_2 = 0;

#define mLED_1_Toggle()     mLED_1 = !mLED_1;
#define mLED_2_Toggle()     mLED_2 = !mLED_2;

#define mGetLED_1()         mLED_1
#define mGetLED_2()         mLED_2

/***** AD9851 ********************************************************/
#define	W_CLK	LATAbits.LATA4
#define	RST		LATAbits.LATA2
#define	FQ_UD	LATAbits.LATA5
#define	S_IN	LATAbits.LATA3

