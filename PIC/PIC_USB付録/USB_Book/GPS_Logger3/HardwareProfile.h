/********************************************************************
 FileName:     	HardwareProfile - PIC24FJ64GB002.h

********************************************************************/
#include "usb_config.h"

/*******************************************************************/
/******** USB stack hardware selection options *********************/
/*******************************************************************/
//#define USE_SELF_POWER_SENSE_IO
#define tris_self_power     TRISAbits.TRISA2    // Input
#define self_power          1

//#define USE_USB_BUS_SENSE_IO
#define tris_usb_bus_sense  TRISBbits.TRISB5    // Input
#define USB_BUS_SENSE       U1OTGSTATbits.SESVD // Special considerations required if using SESVD for this purpose.  See documentation. 

/*******************************************************************/
/******** MDD File System selection options ************************/
/*******************************************************************/
#define USE_SD_INTERFACE_WITH_SPI
#define USE_PIC24F
#define USE_16BIT

// Sample definitions for 16-bit processors (modify to fit your own project)
#define SD_CS			PORTBbits.RB0
#define SD_CS_TRIS		TRISBbits.TRISB0
#define SD_CD			PORTAbits.RA0
#define SD_CD_TRIS		TRISAbits.TRISA0
#define SD_WE			PORTAbits.RA0
#define SD_WE_TRIS		TRISAbits.TRISA0

// Registers for the SPI module you want to use
#define SPICON1			SPI1CON1
#define SPISTAT			SPI1STAT
#define SPIBUF			SPI1BUF
#define SPISTAT_RBF		SPI1STATbits.SPIRBF
#define SPICON1bits		SPI1CON1bits
#define SPISTATbits		SPI1STATbits
#define SPIENABLE         SPISTATbits.SPIEN

// Tris pins for SCK/SDI/SDO lines
#define SPICLOCK		TRISBbits.TRISB14
#define SPIIN			TRISBbits.TRISB15
#define SPIOUT		    TRISBbits.TRISB13

#define CLOCK_FREQ 32000000
#define GetSystemClock() CLOCK_FREQ
#define GetInstructionClock() GetSystemClock()

/** SWITCH *********************************************************/
#define sw1				!PORTBbits.RB5
#define sw2				!PORTBbits.RB7
