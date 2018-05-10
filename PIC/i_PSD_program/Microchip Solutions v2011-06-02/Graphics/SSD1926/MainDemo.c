/******************************************************************************
 * SSD1926 hardware JPEG decoder and SD card interface demo
 * The demo displays all JPEG files in the SD card root location.
 * The card must be inserted before the demo starts.
 *
 * The demo works with 8-bit and 16-bit(PIC32 only) PMP interface. To use 16-bit bus
 * the USE_16BIT_PMP compile time option must be uncommented in GraphicsConfig.h.
 * All display orientations are supported. Resolution of the images must be less than 2560x1920
 * (maximum scale down factor is 8).
 *
 * FUNCTIONS IMPLEMENTED:
 *	void JPEGSetRGB(void) -  switch display to RGB,
 *  void JPEGSetYUV(void) - switch display to YUV (most JPEG files have this format),
 *  BYTE JPEGPutImage(char* filename) - display JPEG file in the center.
 *
 * MUST BE IN PROJECT:
 *  FSIO.c - file system,
 *  DisplayDriver.c - graphics library,
 *  Primitive.c - graphics library,
 *  SSD1926_SDCard.c - SD card access functions for the file system,
 *  SSD1926_JPEG.c - JPEG decoder functions.
 ******************************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    see included files below
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:        C30 v2.01/C32 v0.00.18
 * Company:         Microchip Technology, Inc.
 * Software License Agreement
 *
 * Copyright © 2009 Microchip Technology Inc.  All rights reserved.
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
 
Author                 Date           Comments
--------------------------------------------------------------------------------
Sean Justice        15_Sept-2008      First release
Anton Alkhimenok    06_Jun-2009       Ported to PIC24
*******************************************************************************/
#include "MainDemo.h"

#if defined (GFX_PICTAIL_V2) || defined (GFX_PICTAIL_V1)
    #error  Error: This demo works only along with Graphics PicTail 3
#endif

// Configuration bits
#if defined(__dsPIC33F__) || defined(__PIC24H__)
_FOSCSEL(FNOSC_PRI);
_FOSC(FCKSM_CSECMD &OSCIOFNC_OFF &POSCMD_XT);
_FWDT(FWDTEN_OFF);
#elif defined(__PIC32MX__)
    #pragma config FPLLODIV = DIV_1, FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FWDTEN = OFF, FCKSM = CSECME, FPBDIV = DIV_1
    #pragma config OSCIOFNC = ON, POSCMOD = XT, FSOSCEN = ON, FNOSC = PRIPLL
    #pragma config CP = OFF, BWP = OFF, PWP = OFF
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

int main (void)
{
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
    SYSTEMConfig(GetSystemClock(), SYS_CFG_ALL);
    #ifdef MEB_BOARD
    CPLDInitialize();
    CPLDSetGraphicsConfiguration(GRAPHICS_HW_CONFIG);
    CPLDSetSPIFlashConfiguration(SPI_FLASH_CHANNEL);
    #endif
    #endif

    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
    AD1PCFGL = 0xffff;
    #endif
    InitGraph();                    // Graphics

    // Set YUV mode to display JPEG
    JPEGSetYUV();

    while(1)
    {
        FSInit();                   // File system
        SearchRec nextFile;
        if(-1 != FindFirst("*.*", ATTR_ARCHIVE, &nextFile))
        {
            do
            {
                if(!JPEGPutImage(nextFile.filename))
                { }

                DelayMs(2000);
            } while(-1 != FindNext(&nextFile));
        }                           //end of if
    }                               //end of while

    // Restore RGB mode
    JPEGSetRGB();

    return (-1);
}
