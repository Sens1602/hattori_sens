/******************************************************************************

* FileName:        Application.c
* Dependencies:    Image decoding library;
* Processor:       PIC24F, PIC24H, dsPIC, PIC32
* Compiler:        C30 v2.01/C32 v0.00.18
* Company:         Microchip Technology, Inc.

 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
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
Pradeep Budagutta    25-Jun-2008    First release
*******************************************************************************/

// Configuration bits
#include "Compiler.h"
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "Graphics/Graphics.h"
#include "Image Decoders/ImageDecoder.h"
#include "FlashImage.h"
#include "cpld.h"

// Configuration bits
#if defined(__dsPIC33E__) || defined(__PIC24E__)
_FOSCSEL(FNOSC_FRC);			
_FOSC(FCKSM_CSECMD & POSCMD_XT & OSCIOFNC_OFF & IOL1WAY_OFF);
_FWDT(FWDTEN_OFF);
_FPOR(FPWRT_PWR128 & BOREN_ON & ALTI2C1_ON & ALTI2C2_ON);
_FICD(ICS_PGD1 & RSTPRI_PF & JTAGEN_OFF);
#elif defined(__dsPIC33F__) || defined(__PIC24H__)
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

#define DELAY_MS                1500
#define DELAY_NEXT              3000

#define WAIT_UNTIL_FINISH(x)    while(!x)
    void PixelOutput (IMG_PIXEL_XY_RGB_888 * pPix)
{
    SetColor(RGB565CONVERT(pPix->R, pPix->G, pPix->B));
    if(pPix->X <= GetMaxX() && pPix->Y <= GetMaxY())
    {
        PutPixel(pPix->X, pPix->Y);
    }

    if(pPix->X > GetMaxX() && pPix->Y > GetMaxY())
    {
        ImageAbort();
    }
}

int main (void)
{
    IMG_FILE_SYSTEM_API FlashFileApi;
    BYTE bTextHeight;
    WORD X, Y;
    
    #if defined(__dsPIC33E__) || defined(__PIC24E__)
	    /* ORIGINAL CODE */
		/************************************************************************/
	   	// Configure the device PLL to obtain 60 MIPS operation. i.e. sysclock = 120MHz
	     
		PLLFBD = 58;				/* M  = 30	*/
		CLKDIVbits.PLLPOST = 0;		/* N1 = 2	*/
		CLKDIVbits.PLLPRE = 0;		/* N2 = 2	*/
		OSCTUN = 0;	
		
	    /*	Initiate Clock Switch to Primary
	     *	Oscillator with PLL (NOSC= 0x3)*/
	    __builtin_write_OSCCONH(0x03);		
		__builtin_write_OSCCONL(0x01);
		// Disable Watch Dog Timer
	    RCONbits.SWDTEN = 0;
		while (OSCCONbits.COSC != 0x3); 
		while (_LOCK == 0);			/* Wait for PLL lock at 60 MIPS */
    #endif

    #if defined(PIC24FJ256DA210_DEV_BOARD)
    
    // _ANSG8 = 0; /* S1 */
    // _ANSE9 = 0; /* S2 */
    // _ANSB5 = 0; /* S3 */
        
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
    SYSTEMConfigPerformance(GetSystemClock());
    #ifdef MEB_BOARD
    CPLDInitialize();
    CPLDSetGraphicsConfiguration(GRAPHICS_HW_CONFIG);
    CPLDSetSPIFlashConfiguration(SPI_FLASH_CHANNEL);
    #endif
    #endif

    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
    AD1PCFGL = 0xffff;
    #endif
    
    #if defined (__dsPIC33E__) || defined(__PIC24E__)
	     // Initialize hardware buttons
	     HardwareButtonInit()
	    // Set PMD0 pins to digital.
	    ANSELEbits.ANSE0 = 0;
	    ANSELEbits.ANSE1 = 0;
	    ANSELEbits.ANSE2 = 0;
	    ANSELEbits.ANSE3 = 0;
	    ANSELEbits.ANSE4 = 0;
	    ANSELEbits.ANSE5 = 0;
	    ANSELEbits.ANSE6 = 0;
	    ANSELEbits.ANSE7 = 0;
		//ANSELDbits.ANSD5 = 0;
	    ANSELDbits.ANSD6 = 0;
	    	#if defined MEB_BOARD
	    CPLDInitialize();
	    CPLDSetGraphicsConfiguration(GRAPHICS_HW_CONFIG);
	    CPLDSetSPIFlashConfiguration(SPI_FLASH_CHANNEL);
	    	#endif
    #endif

    InitGraph();
    ImageDecoderInit();
    SetClipRgn(0, 0, GetMaxX(), GetMaxY());
    SetClip(CLIP_ENABLE);

    FlashFileApi.pFread = FlashImage_fread;
    FlashFileApi.pFseek = FlashImage_fseek;
    FlashFileApi.pFtell = FlashImage_ftell;
    FlashFileApi.pFeof = FlashImage_feof;

    SetFont((void *) &GOLFontDefault);
    bTextHeight = GetTextHeight((void *) &GOLFontDefault);

    SetColor(BLACK);
    ClearDevice();
    Y = (GetMaxY() + 1 - (3 * bTextHeight)) / 2;
    SetColor(LIGHTRED);
    X =
    GetMaxX()
    + 1 - GetTextWidth("Welcome to the demo", (void *) &GOLFontDefault);
    WAIT_UNTIL_FINISH(OutTextXY(X / 2, Y, "Welcome to the demo"));
    DelayMs(DELAY_MS / 3);
    X =
    GetMaxX()
    + 1 - GetTextWidth("of", (void *) &GOLFontDefault);
    WAIT_UNTIL_FINISH(OutTextXY(X / 2, Y + bTextHeight, "of"));
    DelayMs(DELAY_MS / 3);
    X =
    GetMaxX()
    + 1 - GetTextWidth("Image Decoding Library", (void *) &GOLFontDefault);
    WAIT_UNTIL_FINISH(OutTextXY(X / 2, Y + 2 * bTextHeight, "Image Decoding Library"));
    DelayMs(DELAY_NEXT);

    while(1)
    {
        SetColor(BLACK);
        ClearDevice();
        SetColor(LIGHTRED);
        WAIT_UNTIL_FINISH(OutTextXY(0, 0, "1. Full screen decoding of"));
        DelayMs(DELAY_MS);
        SetColor(YELLOW);
        WAIT_UNTIL_FINISH(OutTextXY(0, bTextHeight + 2, "MchpIcon.bmp"));
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 1 * (bTextHeight + 2), "(w/o Double Buffering)"));
        DelayMs(DELAY_MS);
        ImageFullScreenDecode(FlashImage_fopen(MCHPICON_BMP), IMG_BMP, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 4 * (bTextHeight + 2), "2. Decoding of MchpIcon.bmp"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 3 * (bTextHeight + 2), "Flags = 0"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 2 * (bTextHeight + 2), "Rect = (0, 0) to (320, 240)"));
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 1 * (bTextHeight + 2), "(w/o Double Buffering)"));
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPICON_BMP), IMG_BMP, 0, 0, 320, 240, 0, &FlashFileApi, PixelOutput);
        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 5 * (bTextHeight - 1), "3. Decoding of MchpLogo.jpg"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 4 * (bTextHeight - 1), "Flags = 0"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 3 * (bTextHeight - 1), "Rect = (0, 0) to (320, 240)"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 2 * (bTextHeight - 1), "(w/o Double Buffering)"));
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 1 * (bTextHeight - 1), "(Image is larger than 320x240)"));
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 0, 0, 320, 240, 0, &FlashFileApi, PixelOutput);

    #ifdef IMG_USE_NON_BLOCKING_DECODING
        while(!ImageDecodeTask());
    #endif

        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 5 * (bTextHeight + 2), "4. Decoding of MchpLogo.jpg"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 4 * (bTextHeight + 2), "Flags = IMG_DOWN_SCALE"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 3 * (bTextHeight + 2), "Rect = (0, 0) to (320, 240)"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 2 * (bTextHeight + 2), "(w/o Double Buffering)"));
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 1 * (bTextHeight + 2), "(Image is larger than 320x240)"));
        DelayMs(DELAY_MS);
        ImageDecode(FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 0, 0, 320, 240, IMG_DOWN_SCALE, &FlashFileApi, PixelOutput);

    #ifdef IMG_USE_NON_BLOCKING_DECODING
        while(!ImageDecodeTask());
    #endif

        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        WAIT_UNTIL_FINISH(OutTextXY(0, 0, "5. Decoding of MchpLogo.jpg"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        WAIT_UNTIL_FINISH(OutTextXY(0, bTextHeight + 2, "Flags = (IMG_DOWN_SCALE |"));
        WAIT_UNTIL_FINISH(OutTextXY(0, 2 * (bTextHeight + 2), "IMG_ALIGN_CENTER)"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 3 * (bTextHeight + 2), "Rect = (0, 0) to (320, 240)"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 2 * (bTextHeight + 2), "(w/o Double Buffering)"));
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - 1 * (bTextHeight + 2), "(Image is larger than 320x240)"));
        DelayMs(DELAY_MS);
        ImageDecode
            (
                FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 0, 0, 320, 240, IMG_DOWN_SCALE |
                IMG_ALIGN_CENTER, &FlashFileApi, PixelOutput
            );

    #ifdef IMG_USE_NON_BLOCKING_DECODING
        while(!ImageDecodeTask());
    #endif

        DelayMs(DELAY_NEXT);

        SetColor(BLACK);
        ClearDevice();
        SetColor(YELLOW);
        WAIT_UNTIL_FINISH(OutTextXY(0, 0, "6. Decoding of MchpLogo.jpg"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTRED);
        WAIT_UNTIL_FINISH(OutTextXY(0, bTextHeight + 2, "Flags = (IMG_DOWN_SCALE |"));
        WAIT_UNTIL_FINISH(OutTextXY(0, 2 * (bTextHeight + 2), "IMG_ALIGN_CENTER)"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTBLUE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 3 * (bTextHeight + 2), "Rect = (160, 120) to (320, 240)"));
        DelayMs(DELAY_MS);
        SetColor(LIGHTGREEN);
        WAIT_UNTIL_FINISH(OutTextXY(0, 4 * (bTextHeight + 2), "(w/o Double Buffering)"));
        DelayMs(DELAY_MS);
        SetColor(WHITE);
        WAIT_UNTIL_FINISH(OutTextXY(0, 240 - (bTextHeight + 2), "(Image is larger than 320x240)"));
        DelayMs(DELAY_MS);
        ImageDecode
            (
                FlashImage_fopen(MCHPLOGO_JPG), IMG_JPEG, 160, 120, 160, 120, IMG_DOWN_SCALE |
                IMG_ALIGN_CENTER, &FlashFileApi, PixelOutput
            );

    #ifdef IMG_USE_NON_BLOCKING_DECODING
        while(!ImageDecodeTask());
    #endif

        DelayMs(DELAY_NEXT);
    }

    return (0);
}
