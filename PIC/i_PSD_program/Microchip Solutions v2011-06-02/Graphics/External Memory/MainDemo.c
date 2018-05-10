/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the external memory to store fonts and bitmaps.
 * 
 * To run this demo:
 * external.hex file in "Fonts and Bitmaps" folder must be programmed into external
 * flash memory installed on Graphics PICTail Plus board. To do this
 * "Graphics PICTail Board Memory Programmer" project can be used. Please refer to
 * "Getting started -> Graphics External Memory Demo" section in the help file for more information.
 *
 * To create a new hex file containing data for font and bitmap to be located in
 * the external flash memory use 'Bitmap and Font converter.exe' utility included in the Graphics Library.
 * With hex file the utility will create a C file containing structures for referencing
 * the font and bitmap in the hex file. This C file must be included in the project.
 * Please refer to the help built in the utility.
 *
 * In applications with external memory USE_BITMAP_EXTERNAL and USE_FONT_EXTERNAL
 * must be defined in GraphicsConfig.h. 
 *
 *****************************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    MainDemo.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2010 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 09/01/10	   ...
 *****************************************************************************/
#include "MainDemo.h"
#include "drv_spi.h"
#include "ExternalMemory.h"
#include "TimeDelay.h"
#include "Graphics/DisplayDriver.h"
#include "HardwareProfile.h"

// Configuration bits
#if defined(__dsPIC33F__) || defined(__PIC24H__)
	_FOSCSEL(FNOSC_PRI);
	_FOSC(FCKSM_CSECMD &OSCIOFNC_OFF &POSCMD_XT);
	_FWDT(FWDTEN_OFF);
#elif defined(__PIC32MX__)
	#pragma config FPLLODIV = DIV_2, FPLLMUL = MUL_20, FPLLIDIV = DIV_1, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_8
	#pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
	#pragma config CP = OFF, BWP = OFF, PWP = OFF    
#ifdef USE_COMM_PKT_MEDIA_USB
    #pragma config UPLLIDIV = DIV_2         // USB PLL Input Divider
    #pragma config UPLLEN   = ON
#endif
#else
    #if defined(__PIC24FJ256GB110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(0xF7FF & IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & PLLDIV_DIV2 & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ256GA110__)
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & FWDTEN_OFF & ICS_PGx2)
_CONFIG2(IESO_OFF & FCKSM_CSDCMD & OSCIOFNC_OFF & POSCMOD_HS & FNOSC_PRIPLL & IOL1WAY_OFF)
    #endif
    #if defined(__PIC24FJ128GA010__)
_CONFIG2(FNOSC_PRIPLL & POSCMOD_XT) // Primary XT OSC with PLL
_CONFIG1(JTAGEN_OFF & FWDTEN_OFF)   // JTAG off, watchdog timer off
    #endif
	#if defined (__PIC24FJ256GB210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif
	#if defined (__PIC24FJ256DA210__)
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & ALTVREF_ALTVREDIS & WINDIS_OFF & FWDTEN_OFF & ICS_PGx2 & GWRP_OFF & GCP_OFF & JTAGEN_OFF) 
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG & ALTPMP_ALTPMPEN & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM) 
	#endif	
#endif

/////////////////////////////////////////////////////////////////////////////
// SPI Channel settings
/////////////////////////////////////////////////////////////////////////////
#if defined (USE_SST25VF016)
    #ifdef __PIC32MX__
        const DRV_SPI_INIT_DATA SPI_Init_Data = {SST25_SPI_CHANNEL, 1, 0, 0, 1, 1, 0};
    #else    
        const DRV_SPI_INIT_DATA SPI_Init_Data = {SST25_SPI_CHANNEL, 3, 6, 0, 1, 1, 0};
    #endif
#elif defined (USE_MCHP25LC256)       
    const DRV_SPI_INIT_DATA SPI_Init_Data = {MCHP25LC256_SPI_CHANNEL, 6, 3, 0, 1, 1, 0};
#endif    

///////////////////////////// FONTS AND BITMAPS ///////////////////////////////
// This font is located in internal flash
extern const FONT_FLASH internalfont;

// This picture is located in internal flash
extern const IMAGE_FLASH   internalbitmap;

// This font must be stored in external flash memory installed on
// Graphics PICTail Plus board
extern FONT_EXTERNAL        externalfont;

// This bitmap must be stored in external flash memory installed on
// Graphics PICTail Plus board
extern IMAGE_EXTERNAL      externalbitmap;

/////////////////////////////////////////////////////////////////////////////
// Function Prototypes
/////////////////////////////////////////////////////////////////////////////
void BoardInit(void);

/************************************************************************
* Macros: SST39PMPInit()
*                                                                       
* Overview: initializes PMP only
*                                                                       
* Input: none                                                          
*                                                                       
* Output: none
*                                                                       
************************************************************************/
#define SST39PMPInit()          \
    {                           \
        while(PMMODEbits.BUSY); \
        PMMODE = 0x0a49;        \
        PMAEN = 0x0003;         \
        PMCON = 0x9320;         \
    }

/************************************************************************
* Macros: LCDPMPInit()
*                                                                       
* Overview: initializes PMP only
*                                                                       
* Input: none                                                          
*                                                                       
* Output: none
*                                                                       
************************************************************************/
#define LCDPMPInit()            \
    {                           \
        while(PMMODEbits.BUSY); \
        PMMODE = 0x0204;        \
        PMAEN = 0x0000;         \
        PMCON = 0x8300;         \
    }

#define DEMODELAY 	2000

/* */

int main(void)
{
    SHORT   width, height;

    BoardInit();

    #if defined (GFX_PICTAIL_V2)
    // Initialize IOs related to parallel flash memory
    // installed on Graphics PICTail Plus board 2
    FLASHInit();
    // Initialize graphics
    InitGraph();
    #else
    // Initialize graphics
    InitGraph();
    // Initialize flash installed on Graphics PICTail Plus board 3
    FLASHInit((DRV_SPI_INIT_DATA *)&SPI_Init_Data);
    #endif
    
    HardwareButtonInit();

    while(1)
    {

	    // check if programming is prompted    
        if(GetHWButtonProgram() == HW_BUTTON_PRESS)
        {
	        // The ProgramFlash() function will not return. 
	        // Application must be reset after programming.
	        ProgramFlash();
	    } 

        // Display text with font located in internal flash
        // Set current font
        SetFont((void *) &internalfont);

        // Get text width and height
        width = GetTextWidth("Font from internal flash", (void *) &internalfont);
        height = GetTextHeight((void *) &internalfont);

        // Put green text in the center
        SetColor(BRIGHTGREEN);
        OutTextXY((GetMaxX() - width) >> 1, (GetMaxY() - height) >> 1, "Font from internal flash");

        // Wait a couple of seconds and clean screen
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        // Display text with font located in external memory
        // Set current font
        SetFont((void *) &externalfont);

        // Get text width and height
        width = GetTextWidth("Font from external flash", (void *) &externalfont);
        height = GetTextHeight((void *) &externalfont);

        // Put red text in the center
        SetColor(BRIGHTRED);
        OutTextXY((GetMaxX() - width) >> 1, (GetMaxY() - height) >> 1, "Font from external flash");

        // Wait a couple of seconds and clean screen
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

		// reset back the font to use internal font
        SetFont((void *) &internalfont);

        // Display picture located in internal memory
        // Get bitmap width and height
        width = GetImageWidth((void *) &internalbitmap);
        height = GetImageHeight((void *) &internalbitmap);

        // Put bitmap in the center
        PutImage((GetMaxX() - width) >> 1, (GetMaxY() - height) >> 1, (void *) &internalbitmap, 1);

        // Display some white text
        SetColor(WHITE);
        OutTextXY(0, 0, "Bitmap from internal flash");

        // Wait a couple of seconds and clean screen
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();

        // Display picture located in external memory
        // Get bitmap width and height
        width = GetImageWidth((void *) &externalbitmap);
        height = GetImageHeight((void *) &externalbitmap);

        // Put bitmap in the center
        PutImage((GetMaxX() - width) >> 1, (GetMaxY() - height) >> 1, (void *) &externalbitmap, 1);

        // Display some white text
        SetColor(WHITE);
        OutTextXY(0, 0, "Bitmap from external flash");

        // Wait a couple of seconds and clean screen
        DelayMs(DEMODELAY);
        SetColor(BLACK);
        ClearDevice();
    }
}
/////////////////////////////////////////////////////////////////////////////
// void BoardInit(void)
/////////////////////////////////////////////////////////////////////////////
void BoardInit(void)
{
    #if defined (PIC24FJ256DA210_DEV_BOARD)
    
	    _ANSG8 = 0; /* S1 */
	    _ANSE9 = 0; /* S2 */
	    _ANSB5 = 0; /* S3 */
        
    #else
    /////////////////////////////////////////////////////////////////////////////
    // ADC Explorer 16 Development Board Errata (work around 2)
    // RB15 should be output
    /////////////////////////////////////////////////////////////////////////////
    #ifndef MEB_BOARD
	    LATBbits.LATB15 = 0;
	    TRISBbits.TRISB15 = 0;
    #endif
    #endif

    /////////////////////////////////////////////////////////////////////////////
    #if defined(__dsPIC33F__) || defined(__PIC24H__)

	    // Configure Oscillator to operate the device at 40Mhz
	    // Fosc= Fin*M/(N1*N2), Fcy=Fosc/2
	    // Fosc= 8M*40(2*2)=80Mhz for 8M input clock
	    PLLFBD = 38;                    // M=40
	    CLKDIVbits.PLLPOST = 0;         // N1=2
	    CLKDIVbits.PLLPRE = 0;          // N2=2
	    OSCTUN = 0;                     // Tune FRC oscillator, if FRC is used
	
	    // Disable Watch Dog Timer
	    RCONbits.SWDTEN = 0;
	
	    // Clock switching to incorporate PLL
	    __builtin_write_OSCCONH(0x03);  // Initiate Clock Switch to Primary
	
	    // Oscillator with PLL (NOSC=0b011)
	    __builtin_write_OSCCONL(0x01);  // Start clock switching
	    while(OSCCONbits.COSC != 0b011);
	
	    // Wait for Clock switch to occur	
	    // Wait for PLL to lock
	    while(OSCCONbits.LOCK != 1)
	    { };
	    
    #elif defined(__PIC32MX__)
    
	    INTEnableSystemMultiVectoredInt();
    	SYSTEMConfig(GetSystemClock(), SYS_CFG_WAIT_STATES|SYS_CFG_PCACHE);
    	
    #endif

    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
    
    	AD1PCFGL = 0xffff;
    	
    #endif

     //The following are PIC device specific settings for the SPI channel
     //used. 
    
     //Set IOs directions for SST25 SPI
        #if defined (GFX_PICTAIL_V3) || defined (MEB_BOARD)   
        SST25_CS_LAT = 1;
        SST25_CS_TRIS = 0;
        #ifndef __PIC32MX__
            SST25_SCK_TRIS = 0;
            SST25_SDO_TRIS = 0;
            SST25_SDI_TRIS = 1;
            #if defined(__PIC24FJ256GB210__)
            	SST25_SDI_ANS = 0;
    	    #endif
        #endif
    
    #elif defined (PIC24FJ256DA210_DEV_BOARD)
        SST25_CS_LAT = 1;
        SST25_CS_TRIS = 0;
    
        // Set the pins to be digital 
    	SST25_SDI_ANS = 0;
        SST25_SDO_ANS = 0;

        SST25_SCK_TRIS = 0;
        SST25_SDO_TRIS = 0;
        SST25_SDI_TRIS = 1;
        
    #elif defined (GFX_PICTAIL_V2)
        
        MCHP25LC256_CS_LAT = 1;
        MCHP25LC256_CS_TRIS = 0;
        MCHP25LC256_SCK_TRIS  = 0;
	    MCHP25LC256_SDO_TRIS = 0;
	    MCHP25LC256_SDI_TRIS = 1;
	    
	#endif

    // set the peripheral pin select for the PSI channel used
    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
        AD1PCFGL = 0xFFFF;
        RPOR9bits.RP18R = 11;                   // assign RP18 for SCK2
        RPOR8bits.RP16R = 10;                   // assign RP16 for SDO2
        RPINR22bits.SDI2R = 17;                 // assign RP17 for SDI2	
    #elif defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GA110__) || defined (__PIC24FJ256GB210__)
        __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS
        RPOR10bits.RP21R = 11;                  // assign RP21 for SCK2
        RPOR9bits.RP19R = 10;                   // assign RP19 for SDO2
        RPINR22bits.SDI2R = 26;                 // assign RP26 for SDI2
        __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS
    #elif defined(__PIC24FJ256DA210__)

        __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS

    	#if (SST25_SPI_CHANNEL == 1)
    	    RPOR1bits.RP2R = 8;                 // assign RP2 for SCK1
    	    RPOR0bits.RP1R = 7;                 // assign RP1 for SDO1
    	    RPINR20bits.SDI1R = 0;              // assign RP0 for SDI1
        #elif (SST25_SPI_CHANNEL == 2)
            RPOR1bits.RP2R = 11;                // assign RP2 for SCK2
    	    RPOR0bits.RP1R = 10;                // assign RP1 for SDO2
    	    RPINR22bits.SDI2R = 0;              // assign RP0 for SDI2
    	#endif

        __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS

    #endif
}
/*********************************************************************
* Function: WORD ExternalMemoryCallback(EXTDATA* memory, LONG offset, WORD nCount, void* buffer)
*
* PreCondition: none
*
* Input:  memory - pointer to the bitmap or font external memory structures
*                  (FONT_EXTERNAL or BITMAP_EXTERNAL)
*         offset - data offset
*         nCount - number of bytes to be transferred to the buffer
*         buffer - pointer to the buffer
*
* Output: number of bytes were transferred.
*
* Side Effects: none
*
* Overview: this function must be implemented in application. Graphics Library calls it
*           each time the data from external memory is required. The application must copy 
*           required data to the buffer provided.
*
* Note: none
*
********************************************************************/

// If there are several memories in the system they can be selected by IDs.
// In this demo ID for memory chip installed on Graphics PICTail board is assumed to be 0.
#define SST39_MEMORY    0

/* */

WORD ExternalMemoryCallback(IMAGE_EXTERNAL *memory, LONG offset, WORD nCount, void *buffer)
{
    if(memory->ID == SST39_MEMORY)
    {

        // Read data requested into buffer provided
        #ifdef GFX_PICTAIL_V2
        SST39PMPInit();
        SST39ReadArray(memory->address + offset, // address to read from
        (BYTE *)buffer, nCount);
        LCDPMPInit();
        #else
        SST25ReadArray(memory->address + offset, // address to read from
        (BYTE *)buffer, nCount);
        #endif
    }

    return (nCount);
}
