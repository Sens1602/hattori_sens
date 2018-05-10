/*********************************************************************
 *
 *	Hardware specific definitions
 *
 *********************************************************************
 * FileName:        HardwareProfile_xxx.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:        Microchip C32 v1.00 or higher
 *					Microchip C30 v3.01 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright � 2002-2011 Microchip Technology Inc.  All rights 
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and 
 * distribute: 
 * (i)  the Software when embedded on a Microchip microcontroller or 
 *      digital signal controller product (�Device�) which is 
 *      integrated into Licensee�s product; or
 * (ii) ONLY the Software driver source files ENC28J60.c and 
 *      ENC28J60.h ported to a non-Microchip device used in 
 *      conjunction with a Microchip ethernet controller for the 
 *      sole purpose of interfacing with the ethernet controller. 
 *
 * You should refer to the license agreement accompanying this 
 * Software for additional information regarding your rights and 
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED �AS IS� WITHOUT 
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT 
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A 
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL 
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR 
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF 
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS 
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE 
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER 
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT 
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Date		    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 02/24/11	    For Graphics Library Version 3.00 
 ********************************************************************/

#ifndef __HARDWARE_PROFILE_H
    #define __HARDWARE_PROFILE_H

/*********************************************************************
* PIC Device Specific includes
*********************************************************************/
    #include "Compiler.h"

/*********************************************************************
* GetSystemClock() returns system clock frequency.
*
* GetPeripheralClock() returns peripheral clock frequency.
*
* GetInstructionClock() returns instruction clock frequency.
*
********************************************************************/

/*********************************************************************
* Macro: #define	GetSystemClock() 
*
* Overview: This macro returns the system clock frequency in Hertz.
*			* value is 8 MHz x 4 PLL for PIC24
*			* value is 8 MHz/2 x 18 PLL for PIC32
*
********************************************************************/
    #if defined(__PIC24F__)
        #define GetSystemClock()    (32000000ul)
    #elif defined(__PIC32MX__)
        #define GetSystemClock()    (80000000ul)
    #elif defined(__dsPIC33F__) || defined(__PIC24H__)
        #define GetSystemClock()    (80000000ul)
    #elif defined(__dsPIC33E__) || defined(__PIC24E__)
    	#define GetSystemClock()    (120000000ul)
    #endif

/*********************************************************************
* Macro: #define	GetPeripheralClock() 
*
* Overview: This macro returns the peripheral clock frequency 
*			used in Hertz.
*			* value for PIC24 is <PRE>(GetSystemClock()/2) </PRE> 
*			* value for PIC32 is <PRE>(GetSystemClock()/(1<<OSCCONbits.PBDIV)) </PRE>
*
********************************************************************/
    #if defined(__PIC24F__) || defined(__PIC24H__) || defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24E__)
        #define GetPeripheralClock()    (GetSystemClock() / 2)
    #elif defined(__PIC32MX__)
        #define GetPeripheralClock()    (GetSystemClock() / (1 << OSCCONbits.PBDIV))
    #endif

/*********************************************************************
* Macro: #define	GetInstructionClock() 
*
* Overview: This macro returns instruction clock frequency 
*			used in Hertz.
*			* value for PIC24 is <PRE>(GetSystemClock()/2) </PRE> 
*			* value for PIC32 is <PRE>(GetSystemClock()) </PRE> 
*
********************************************************************/
    #if defined(__PIC24F__) || defined(__PIC24H__) || defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24E__)
        #define GetInstructionClock()   (GetSystemClock() / 2)
    #elif defined(__PIC32MX__)
        #define GetInstructionClock()   (GetSystemClock())
    #endif


/* ################################################################## */
/*********************************************************************
* START OF GRAPHICS RELATED MACROS
********************************************************************/
/* ################################################################## */

/*********************************************************************
* AUTO GENERATED CODE 
********************************************************************/

//Auto Generated Code
#define PIC24FJ256DA210_DEV_BOARD
#define USE_16BIT_PMP
#define GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210
#define USE_USB_INTERFACE
#define ENABLE_USB_MSD_DEMO
#define GFX_USE_DISPLAY_PANEL_PH480272T_005_I11Q
#define GFX_GCLK_DIVIDER 38
#define GFX_DISPLAY_BUFFER_START_ADDRESS 0x00020000ul
#define GFX_DISPLAY_BUFFER_LENGTH 0x0003FC00ul
#define GFX_EPMP_CS1_BASE_ADDRESS 0x00020000ul
#define GFX_EPMP_CS1_MEMORY_SIZE 0x40000ul
//End Auto Generated Code



/*********************************************************************
* END OF AUTO GENERATED CODE 
********************************************************************/

/*********************************************************************
* External Memory Programmer Settings
*********************************************************************/
#if defined (EXPLORER_16) || defined (PIC24FJ256DA210_DEV_BOARD) 
    #define USE_COMM_PKT_MEDIA_SERIAL_PORT
    #define BAUDRATE2               115200UL
    #define BRG_DIV2                4
    #define BRGH2                   1
#else
    #define USE_COMM_PKT_MEDIA_USB

    //#define USE_SELF_POWER_SENSE_IO
    #define tris_self_power     TRISAbits.TRISA2    // Input
    #define self_power          1

    //#define USE_USB_BUS_SENSE_IO
    #define tris_usb_bus_sense  TRISBbits.TRISB5    // Input
    #define USB_BUS_SENSE       U1OTGSTATbits.SESVD // Special considerations required if using SESVD for this purpose.  See documentation.

#endif

#define COMM_PKT_RX_MAX_SIZE    (1024)

/*********************************************************************
* ERROR CHECKING
*********************************************************************/
/*
   This error check are intended for Microchip Development
   Boards and Modules. When using custom hardware, remove this part
   of the hardware profile.
*/
#if !defined (GFX_PICTAIL_V3) &&            \
    !defined (GFX_PICTAIL_V3E)&&            \
    !defined (GFX_PICTAIL_V2) &&            \
    !defined (PIC24FJ256DA210_DEV_BOARD) && \
    !defined (MEB_BOARD) &&                 \
    !defined (GFX_PICTAIL_LCC) &&           \
	!defined (MIKRO_BOARD)
	#error "Error: Graphics Hardware Platform is not defined! One of the following boards (GFX_PICTAIL_V3, GFX_PICTAIL_V3E, GFX_PICTAIL_V2, PIC24FJ256DA210_DEV_BOARD, MEB_BOARD, GFX_PICTAIL_LCC, MIKRO_BOARD) must be defined.
#endif

/*
   This check verifies that the selected PMP interface supports
   16-bit interface.
*/
#if defined (__PIC24FJ128GA010__) || defined (__PIC24FJ256GA110__) ||	\
	defined (__PIC24FJ256GB110__) || defined (__dsPIC33F__)        ||   \
	defined (__PIC24HJ128GP504__)
	#if defined (USE_16BIT_PMP)	
		#error "The device selected does not support 16 bit PMP interface."
	#endif
#endif

/*********************************************************************
* HARDWARE DEVICES SELECTION
*********************************************************************/
/*
    This portion selects the different components available to 
    the application depending on the hardware platform selected.
    * EXPLORER_16 - Explorer 16 Development Board (DM240001)
    * PIC24FJ256DA210_DEV_BOARD - PIC24FJ256DA210 Development Board (DM240312)
    * GFX_PICTAIL_V3 - Graphics LCD Controller PICtail Plus SSD1926 Board (AC164127-5)
    * GFX_PICTAIL_V3E - Graphics LCD Controller PICtail Plus Epson S1D13517 Board (AC164127-7)
    * MEB_BOARD - MultiMedia Expansion Board (DM320005)
    * GFX_PICTAIL_V2 - NOT RECOMMENDED (obsolete development board)
*/
#if defined(PIC24FJ256DA210_DEV_BOARD)
	   #if defined (GFX_EPMP_CS2_BASE_ADDRESS)
	       #define  USE_SST39LF400					  // use the 4 Mbit (x16) Multi-Purpose (Parallel) Flash connected to EPMP CS 2 
       #else	
           #define	USE_SST25VF016                    // use the 16 Mbit SPI Serial Flash 
       #endif 
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
#endif

#if defined(GFX_PICTAIL_V3)
       #define      USE_SST25VF016                    // use the 16 Mbit SPI Serial Flash 
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
#endif

#if defined(GFX_PICTAIL_V3E) 
       #define      USE_SST25VF016                    // use the 16 Mbit SPI Serial Flash 
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
#endif

#if defined(GFX_PICTAIL_LCC)
       #define      USE_SST25VF016                    // use the 16 Mbit SPI Serial Flash 
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
#endif

#ifdef MEB_BOARD
	   #define      USE_XC2C64A					      // use the CPLD on the board	
       #define      USE_SST25VF016                    // use the 16 Mbit SPI Serial Flash 
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
	   #define      USE_ACCELEROMETER_BMA150		  // use the accelerometer module	
       #define      USE_JOYSTICK_MEB                  // use the joystick
#endif

#if defined(GFX_PICTAIL_V2) && defined (EXPLORER_16)
       #define      USE_SST39VF040                    // use the 4 Mbit (x8) Multi-Purpose (Parallel) Flash
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
       #define      USE_MCHP25LC256                   // use the 256K SPI Bus Serial EEPROM on Explorer 16 
	   #define		USE_GFX_PICTAIL_V2_BEEPER         // use the PWM controlled beeper 
#endif

#if defined(MIKRO_BOARD) 
       #define      USE_M25P80                        // use the 16 Mbit SPI Serial Flash 
       #define      USE_TOUCHSCREEN_RESISTIVE         // use 4-wire resistive touch screen driver
#endif

/*********************************************************************
* STARTER KIT SPECIFIC MACROS
*********************************************************************/
#ifdef PIC_SK
	#if defined (__PIC32MX__)
		   #define PIC32_SK 
	#elif defined (__dsPIC33E__) || (__PIC24E__)
		   #define dsPIC33E_SK
	#endif
#endif

/*********************************************************************
* MULTIMEDIA EXPANSION BOARD (MEB) SPECIFIC MACROS
*********************************************************************/
#ifdef MEB_BOARD
    // this display panel is needed by the MultiMedia Expansion Board.
	#define GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E
#endif
	   
/*********************************************************************
* DISPLAY PARAMETERS 
*********************************************************************/
/*
    The following are the parameters required for the 
    different display drivers that is supported.
    When adding support to a new display controller or display panel,
    follow the parameterization of the driver for reusability of the
    driver.

    Display Parameter Macros Descriptions:
    
    1. DISP_ORIENTATION - defines the display rotation with
            respect to its native orientation. For example, if the display 
            has a resolution specifications that says 240x320 (QVGA), the
            display is natively in portrait mode. If the application
            uses the display in landscape mode (320x240), then the 
            orientation musts be defined as 90 or 180 degree rotation.
            The Graphics Library will calculate the actual pixel location
            to rotate the contents of the screen. So when users view the 
            display, the image on the screen will come out in the correct
            orientation.
            
            Valid values: 0, 90, 180 and 270
            Example: #define DISP_ORIENTATION 90

    2. DISP_HOR_RESOLUTION - defines the horizontal dimension in pixels. This 
            is the native horizontal dimension of the screen. In the example
            given in DISP_ORIENTATION, a 320x240 display will have DISP_HOR_RESOLUTION
            of 320.
            
            Valid Values: dependent on the display glass resolution used.
            Example: #define DISP_HOR_RESOLUTION 320 

    3. DISP_VER_RESOLUTION - defines the vertical dimension in pixels. This 
            is the native vertical dimension of the screen. In the example
            given in DISP_ORIENTATION, a 320x240 display will have DISP_VER_RESOLUTION
            of 240.
            
            Valid Values: dependent on the display glass resolution used.
            Example: #define DISP_VER_RESOLUTION 240 

    4. COLOR_DEPTH - (NOTE: Define this macro in the GraphicsConfig.h 
             This defines the vertical dimension in pixels. 
            
            Valid Values: 1, 4, 8, 16, 24 (note 24 bpp is only used if you are 
                          using a Display Driver that supports 24 bpp color depth.
            Example: #define COLOR_DEPTH 16 

    5. DISP_DATA_WIDTH - this defines the display controller physical interface 
            to the display panel. 

            Valid Values: 1, 4, 8, 16, 18, 24 
                          1, 4, 8 are usually used in MSTN and CSTN displays
                          16, 18 and 24 are usually used in TFT displays.
            Example: #define DISP_DATA_WIDTH 18 
    
    6. DISP_INV_LSHIFT - this indicates that the color data is sampled in the
            falling edge of the pixel clock. 

            Example: #define DISP_INV_LSHIFT - define this to sample the
                          color data in the falling edge of the pixel clock.
    
    7. DISP_HOR_PULSE_WIDTH - this defines the horizontal sync signal pulse width. 

            Valid Values: See display panel data sheet                           
            Example: #define DISP_HOR_PULSE_WIDTH 25 
  
    8. DISP_VER_PULSE_WIDTH - this defines the vertical sync signal pulse width. 

            Valid Values: See display panel data sheet                           
            Example: #define DISP_VER_PULSE_WIDTH 4
            
    9. DISP_HOR_BACK_PORCH - this defines the horizontal back porch. 
            DISP_HOR_BACK_PORCH + DISP_HOR_FRONT_PORCH + DISP_HOR_PULSE_WIDTH
            makes up the horizontal blanking period.

            Valid Values: See display panel data sheet                           
            Example: #define DISP_HOR_BACK_PORCH 5

    10. DISP_HOR_FRONT_PORCH - this defines the horizontal front porch. 
            DISP_HOR_BACK_PORCH + DISP_HOR_FRONT_PORCH + DISP_HOR_PULSE_WIDTH
            makes up the horizontal blanking period.

            Valid Values: See display panel data sheet                           
            Example: #define DISP_HOR_FRONT_PORCH 10

    11. DISP_VER_BACK_PORCH - this defines the vertical back porch. 
            DISP_VER_BACK_PORCH + DISP_VER_FRONT_PORCH + DISP_VER_PULSE_WIDTH
            makes up the horizontal blanking period.

            Valid Values: See display panel data sheet                           
            Example: #define DISP_VER_BACK_PORCH 0

    12. DISP_VER_FRONT_PORCH - this defines the horizontal front porch. 
            DISP_VER_BACK_PORCH + DISP_VER_FRONT_PORCH + DISP_VER_PULSE_WIDTH
            makes up the horizontal blanking period.

            Valid Values: See display panel data sheet                           
            Example: #define DISP_VER_FRONT_PORCH 2
            
    13. GFX_LCD_TYPE - this defines the type of display glass used. 
            
            Valid Values: Dependent on the display controller supported LCD types.
                          GFX_LCD_TFT  // Type TFT Display 
                          GFX_LCD_CSTN // Type Color STN Display 
                          GFX_LCD_MSTN // Type Mono STN Display 
                          GFX_LCD_OLED // Type OLED Display

            Example: #define GFX_LCD_TYPE GFX_LCD_TFT

    14. GFX_DISPLAYENABLE_ENABLE - this enables the use of the Display Enable Port 
            (GEN) when using the Microchip Graphics Module. The signal required when 
            using a display panel that supports DATA ENABLE Mode. DATA ENABLE Mode 
            is used when the display panel do not have sync (HSYNC and VSYNC) signals.
            
            Example: #define GFX_DISPLAYENABLE_ENABLE

    15. GFX_DISPLAYENABLE_POLARITY - this sets the polarity of the Display Enable Port 
            (GEN) when using the Microchip Graphics Module. 
            
            Valid Values: GFX_ACTIVE_HIGH, GFX_ACTIVE_LOW
            Example: #define GFX_DISPLAYENABLE_POLARITY GFX_ACTIVE_HIGH
            
    16. GFX_HSYNC_ENABLE - this enables the use of the Display Horizontal Synchronization 
            Port (HSYNC) when using the Microchip Graphics Module. The signal required when 
            using a display panel that supports SYNC Mode. SYNC Mode 
            is used when the display panel has sync (HSYNC and VSYNC) signals.
            
            Example: #define GFX_HSYNC_ENABLE

    17. GFX_HSYNC_POLARITY - this sets the polarity of the Display Horizontal Synchronization 
            Port (HSYNC)when using the Microchip Graphics Module. 
            
            Valid Values: GFX_ACTIVE_HIGH, GFX_ACTIVE_LOW
            Example: #define GFX_HSYNC_POLARITY GFX_ACTIVE_LOW

    18. GFX_VSYNC_ENABLE - this enables the use of the Display Vertical Synchronization 
            Port (VSYNC) when using the Microchip Graphics Module. The signal required when 
            using a display panel that supports SYNC Mode. SYNC Mode 
            is used when the display panel has sync (HSYNC and VSYNC) signals.
            
            Example: #define GFX_VSYNC_ENABLE

    19. GFX_VSYNC_POLARITY - this sets the polarity of the Display Vertical Synchronization
            Port (VSYNC)when using the Microchip Graphics Module. 
            
            Valid Values: GFX_ACTIVE_HIGH, GFX_ACTIVE_LOW
            Example: #define GFX_VSYNC_POLARITY GFX_ACTIVE_LOW

    20. GFX_DISPLAYPOWER_ENABLE - this enables the use of the Display Power Sequencer 
            Control Port (GPWR) when using the Microchip Graphics Module. The signal 
            can be used to control the display power circuitry. The Graphics Module
            can manage the powering up and powering down of the display since 
            power up and power down sequence in display panels is essential to 
            extend display life cycle.
            
            Example: #define GFX_DISPLAYPOWER_ENABLE
            
    21. GFX_DISPLAYPOWER_POLARITY - this sets the polarity of the Display Power Sequencer 
            Control Port (GPWR) when using the Microchip Graphics Module. 
            
            Valid Values: GFX_ACTIVE_HIGH, GFX_ACTIVE_LOW
            Example: #define GFX_DISPLAYPOWER_POLARITY GFX_ACTIVE_HIGH
            
    22. GFX_CLOCK_POLARITY - this sets the polarity of the Display Glass Clock Port (GCLK) 
            when using the Microchip Graphics Module. 
            
            Valid Values: GFX_ACTIVE_HIGH, GFX_ACTIVE_LOW
            Example: #define GFX_CLOCK_POLARITY GFX_ACTIVE_HIGH
            
    
    There are two major types of controllers enumerated here:
    1. Controllers in Smart Displays - these are display modules that have  
       built in display controller. Interface to the PIC device(s) 
       are usually through parallel interface or serial interface.
       
       Required parameters:
       #define DISP_ORIENTATION 
       #define DISP_HOR_RESOLUTION 
       #define DISP_VER_RESOLUTION 
       
    2. Controller that drives the RGB Glass directly - these are display 
       controllers that comes in a separate package or built into the
       microcontrollers.
    
       Required parameters:
       #define DISP_ORIENTATION 
       #define DISP_HOR_RESOLUTION 
       #define DISP_VER_RESOLUTION 
       #define DISP_DATA_WIDTH			
       #define DISP_HOR_PULSE_WIDTH    
       #define DISP_HOR_BACK_PORCH     
       #define DISP_HOR_FRONT_PORCH    
       #define DISP_VER_PULSE_WIDTH    
       #define DISP_VER_BACK_PORCH     
       #define DISP_VER_FRONT_PORCH    

       Optional parameters:       
       #define DISP_INV_LSHIFT

       When using Microchip Graphics Module (mchpGfxDrv) required parameters:
       #define GFX_DISPLAYENABLE_ENABLE
       #define GFX_DISPLAYENABLE_POLARITY          
       
       or 
       
       #define GFX_HSYNC_ENABLE
       #define GFX_VSYNC_ENABLE
       #define GFX_HSYNC_POLARITY                  
       #define GFX_VSYNC_POLARITY                  

       #define GFX_CLOCK_POLARITY                  

       When using Microchip Graphics Module (mchpGfxDrv) Optional parameters:       
       #define GFX_DISPLAYPOWER_ENABLE
       #define GFX_DISPLAYPOWER_POLARITY           
      
    
*/

// -----------------------------------
// For SMART DISPLAYS
// -----------------------------------
// Using LGDP4531 Display Controller
#if defined(GFX_USE_DISPLAY_CONTROLLER_LGDP4531)
	#define DISP_ORIENTATION    90
    #define DISP_HOR_RESOLUTION 240
    #define DISP_VER_RESOLUTION 320
#endif // #if (DISPLAY_CONTROLLER == LGDP4531)

// Using S6D0129 Display Controller
#if defined(GFX_USE_DISPLAY_CONTROLLER_S6D0129)
	#define DISP_ORIENTATION    90
    #define DISP_HOR_RESOLUTION 240
    #define DISP_VER_RESOLUTION 320
#endif // #if (DISPLAY_CONTROLLER == S6D0129)

// Using HX8347D Display Controller
#if defined(GFX_USE_DISPLAY_CONTROLLER_HX8347D)
    #define DISP_ORIENTATION    90
    #define DISP_HOR_RESOLUTION 240
    #define DISP_VER_RESOLUTION 320
#endif

// -----------------------------------
// For RGB GLASS
// -----------------------------------
// Using TFT_G240320LTSW_118W_E, TFT2N0369_E, DT032TFT_TS, DT032TFT  Display Panel.
// These panels uses Solomon Systech SSD1289 as their controller. 
	#if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E) ||   \
	    defined (GFX_USE_DISPLAY_PANEL_TFT2N0369_E)            ||   \
		defined (GFX_USE_DISPLAY_PANEL_DT032TFT_TS)			   ||   \
		defined (GFX_USE_DISPLAY_PANEL_DT032TFT)

		/* note: For SSD1289 
			
			tHBP (horizontal back porch)= DISP_HOR_BACK_PORCH + DISP_HOR_PULSE_WIDTH
			tVBP (vertical back porch)  = DISP_VER_BACK_PORCH + DISP_VER_PULSE_WIDTH

			Horizontal Cycle (280) = tHBP + DISP_HOR_FRONT_PORCH + DISP_HOR_RESOLUTION
			Vertical Cycle (326)   = tVBP + DISP_VER_FRONT_PORCH + DISP_VER_RESOLUTION

			In summary, the DISP_HOR_PULSE_WIDTH should not exceed tHBP and 
			the DISP_VER_PULSE_WIDTH should not exceed tVBP. See SSD1289 data sheet for 
			details.
		*/
		#define DISP_ORIENTATION		90
        #define DISP_HOR_RESOLUTION		240
        #define DISP_VER_RESOLUTION		320
        #define DISP_DATA_WIDTH			18
        #define DISP_INV_LSHIFT
        #define DISP_HOR_PULSE_WIDTH    25
        #define DISP_HOR_BACK_PORCH     5
        #define DISP_HOR_FRONT_PORCH    10
        #define DISP_VER_PULSE_WIDTH    4
        #define DISP_VER_BACK_PORCH     0
        #define DISP_VER_FRONT_PORCH    2
    	#define GFX_LCD_TYPE            GFX_LCD_TFT

		#if defined(GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
            #define GFX_DISPLAYENABLE_ENABLE
            #define GFX_HSYNC_ENABLE
            #define GFX_VSYNC_ENABLE
            #define GFX_DISPLAYPOWER_ENABLE
            #define GFX_CLOCK_POLARITY                  GFX_ACTIVE_HIGH
            #define GFX_DISPLAYENABLE_POLARITY          GFX_ACTIVE_HIGH
            #define GFX_HSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_VSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYPOWER_POLARITY           GFX_ACTIVE_HIGH
        #endif
	#endif // #if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E) || defined (GFX_USE_DISPLAY_PANEL_TFT2N0369_E) ||....
	
// Using TFT_G320240DTSW_69W_TP_E Display Panel
	#if defined (GFX_USE_DISPLAY_PANEL_TFT_G320240DTSW_69W_TP_E) || defined (GFX_USE_DISPLAY_PANEL_35QVW0T)  
		#define DISP_ORIENTATION		0
        #define DISP_HOR_RESOLUTION		320
        #define DISP_VER_RESOLUTION		240
        #define DISP_DATA_WIDTH			18
        #define DISP_HOR_PULSE_WIDTH    25
        #define DISP_HOR_BACK_PORCH     8
        #define DISP_HOR_FRONT_PORCH    8
        #define DISP_VER_PULSE_WIDTH    8
        #define DISP_VER_BACK_PORCH     7
        #define DISP_VER_FRONT_PORCH    5
    	#define GFX_LCD_TYPE            GFX_LCD_TFT
	#endif // #if defined (GFX_USE_DISPLAY_PANEL_TFT_G320240DTSW_69W_TP_E) || defined (GFX_USE_DISPLAY_PANEL_35QVW0T) 

// Using PH480272T_005_I06Q Display Panel
	#if defined (GFX_USE_DISPLAY_PANEL_PH480272T_005_I06Q) 
		#define DISP_ORIENTATION		0
        #define DISP_HOR_RESOLUTION		480
        #define DISP_VER_RESOLUTION		272
        #define DISP_DATA_WIDTH			24
        #define DISP_HOR_PULSE_WIDTH    41
        #define DISP_HOR_BACK_PORCH     2
        #define DISP_HOR_FRONT_PORCH    2
        #define DISP_VER_PULSE_WIDTH    10
        #define DISP_VER_BACK_PORCH     2
        #define DISP_VER_FRONT_PORCH    2
    	#define GFX_LCD_TYPE            GFX_LCD_TFT

        #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
            #define GFX_DISPLAYENABLE_ENABLE
            #define GFX_HSYNC_ENABLE
            #define GFX_VSYNC_ENABLE
            #define GFX_DISPLAYPOWER_ENABLE
            #define GFX_CLOCK_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYENABLE_POLARITY          GFX_ACTIVE_HIGH
            #define GFX_HSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_VSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYPOWER_POLARITY           GFX_ACTIVE_HIGH
        #endif //#if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
	#endif // #if defined (GFX_USE_DISPLAY_PANEL_PH480272T_005_I06Q)

// Using PH480272T_005_I11Q Display Panel
	#if defined (GFX_USE_DISPLAY_PANEL_PH480272T_005_I11Q) 
		#define DISP_ORIENTATION		0
        #define DISP_HOR_RESOLUTION		480
        #define DISP_VER_RESOLUTION		272
        #define DISP_DATA_WIDTH			24
        #define DISP_HOR_PULSE_WIDTH    41
        #define DISP_HOR_BACK_PORCH     2
        #define DISP_HOR_FRONT_PORCH    2
        #define DISP_VER_PULSE_WIDTH    10
        #define DISP_VER_BACK_PORCH     2
        #define DISP_VER_FRONT_PORCH    2
    	#define GFX_LCD_TYPE            GFX_LCD_TFT
        
        #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
            #define GFX_DISPLAYENABLE_ENABLE
            #define GFX_HSYNC_ENABLE
            #define GFX_VSYNC_ENABLE
            #define GFX_DISPLAYPOWER_ENABLE
            #define GFX_CLOCK_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYENABLE_POLARITY          GFX_ACTIVE_HIGH
            #define GFX_HSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_VSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYPOWER_POLARITY           GFX_ACTIVE_HIGH
        #endif // #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
	#endif // 	#if defined (GFX_USE_DISPLAY_PANEL_PH480272T_005_I11Q) 

// Using TFT_640480_8_E Display Panel
	#if defined (GFX_USE_DISPLAY_PANEL_TFT_640480_8_E) 
        #define DISP_ORIENTATION        0
        #define DISP_HOR_RESOLUTION     640
        #define DISP_VER_RESOLUTION     480
        #define DISP_HOR_PULSE_WIDTH    30
        #define DISP_HOR_BACK_PORCH     128
        #define DISP_HOR_FRONT_PORCH    2
        #define DISP_VER_PULSE_WIDTH    3              
        #define DISP_VER_BACK_PORCH     35
        #define DISP_VER_FRONT_PORCH    7
        #define DISP_INV_LSHIFT
    	#define GFX_LCD_TYPE            GFX_LCD_TFT
        
        #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
            #define GFX_DISPLAYENABLE_ENABLE
            #define GFX_HSYNC_ENABLE
            #define GFX_VSYNC_ENABLE
            #define GFX_DISPLAYPOWER_ENABLE
            #define GFX_CLOCK_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYENABLE_POLARITY          GFX_ACTIVE_HIGH
            #define GFX_HSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_VSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYPOWER_POLARITY           GFX_ACTIVE_HIGH
        #endif // #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
	#endif // 	#if defined (GFX_USE_DISPLAY_PANEL_TFT_640480_8_E) 
    
// Using TFT_640480_8_E Display Panel
    #if defined (GFX_USE_DISPLAY_PANEL_TFT_800480_33_E)
        #define DISP_ORIENTATION		0
        #define DISP_HOR_RESOLUTION		800
        #define DISP_VER_RESOLUTION		480
        #define DISP_HOR_PULSE_WIDTH    128
        #define DISP_HOR_BACK_PORCH     129
        #define DISP_HOR_FRONT_PORCH    2
        #define DISP_VER_PULSE_WIDTH    2
        #define DISP_VER_BACK_PORCH     41
        #define DISP_VER_FRONT_PORCH    2
    	#define GFX_LCD_TYPE            GFX_LCD_TFT
        
        #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
            #define GFX_DISPLAYENABLE_ENABLE
            #define GFX_HSYNC_ENABLE
            #define GFX_VSYNC_ENABLE
            #define GFX_DISPLAYPOWER_ENABLE
            #define GFX_CLOCK_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYENABLE_POLARITY          GFX_ACTIVE_HIGH
            #define GFX_HSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_VSYNC_POLARITY                  GFX_ACTIVE_LOW
            #define GFX_DISPLAYPOWER_POLARITY           GFX_ACTIVE_HIGH
        #endif // #if defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
    #endif // Using TFT_640480_8_E Display Panel
    
//#endif // #if !defined (DISPLAY_PANEL) ...

// -----------------------------------
// Other driver dependencies
// -----------------------------------
#if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E)
    #define USE_TCON_SSD1289
    #define USE_TCON_MODULE
    
#elif defined (GFX_USE_DISPLAY_PANEL_TFT_G320240DTSW_69W_TP_E)
    #define GFX_USE_TCON_HX8238
    #define USE_TCON_MODULE

#else
    #define GFX_USE_TCON_CUSTOM
#endif	


/*********************************************************************
* DISPLAY PARALLEL INTERFACE 
*********************************************************************/
/*
   Select the correct Parallel Master Port Interface Driver.
   This selection is valid only for parallel interface. When using
   display drivers that uses serial interface, this portion should be
   commented out or removed.
*/
#if defined (GFX_PICTAIL_LCC)
//No PMP Setup Here
#else
	// EPMP is exclusive to GB210 devices and PMP to some devices
	#if defined (__PIC24FJ256DA210__)
		// EPMP is used by graphics controller but if EPMP is used 
		// to access external memory then we will need EPMP driver.
		#define USE_GFX_EPMP
	#elif defined (__PIC24FJ256GB210__)
		#define USE_GFX_EPMP
	#else
		#define USE_GFX_PMP
	#endif
#endif

/*********************************************************************
* PARALLEL MASTER PORT INTERFACE TIMING 
*********************************************************************/
	// When using the Parallel Master Port (or Enhanced Parallel Master Port) the 
	// PMP timing must be defined for the following:
	// PMP_DATA_SETUP_TIME or EPMPCSx_DATA_SETUP (for DWAITB) 
	// PMP_DATA_WAIT_TIME or EPMPCSx_DATA_WAIT_TIME (for DWAITM) 
	// and PMP_DATA_HOLD_TIME or EPMPCSx_DATA_HOLD_TIME (for DWAITE)
    // where x is 1 or 2 (EPMP has 2 chip selects)
	// All values are timing parameters in ns.
	// The timing is dependent on the display controller sampling period if 
	// interfacing with the display controller or device AC timing requirements
	// if interfacing with a device (such as SRAM or Parallel Flash memory).
	// Refer to your specific display controller or device to determine the 
	// optimum (fastest) timing requirement for your interface. 

#if defined (USE_GFX_PMP) 

    #if defined (GFX_USE_DISPLAY_CONTROLLER_SSD1926) 

        #define PMP_DATA_SETUP_TIME                (18)    
        #define PMP_DATA_WAIT_TIME                 (82)  // based on the minimum pulse width requirement of CS signal of SSD1926     
        #define PMP_DATA_HOLD_TIME                 (0)    

    #elif defined (GFX_USE_DISPLAY_CONTROLLER_S1D13517)

        #define PMP_DATA_SETUP_TIME                (18)    
        #define PMP_DATA_WAIT_TIME                 (82)  // See Epson S1D13517 data sheet for details
        #define PMP_DATA_HOLD_TIME                 (0)    

    #elif defined (GFX_USE_DISPLAY_CONTROLLER_LGDP4531)

        #define PMP_DATA_SETUP_TIME                (25)    
        #define PMP_DATA_WAIT_TIME                 (20)  // See LGDP4531 data sheet for details
        #define PMP_DATA_HOLD_TIME                 (5)    

    #elif defined (GFX_USE_DISPLAY_CONTROLLER_HX8347D)

        #define PMP_DATA_SETUP_TIME                (18)    
        #define PMP_DATA_WAIT_TIME                 (82)  // See HX8347 data sheet for details     
        #define PMP_DATA_HOLD_TIME                 (0)    

    #else
        #error "USE_GFX_PMP is defined but no timing values are defined for the selected hardware inteface"
    #endif

#endif //#if defined (USE_GFX_PMP) 

#if defined (USE_GFX_EPMP)

    #if defined (GFX_USE_DISPLAY_CONTROLLER_SSD1926) 

        #define EPMPCS1_DATA_SETUP_TIME             (18)    
        #define EPMPCS1_DATA_WAIT_TIME              (82)  // based on the minimum pulse width requirement of CS signal of SSD1926     
        #define EPMPCS1_DATA_HOLD_TIME              (0)    

    #elif defined (GFX_USE_DISPLAY_CONTROLLER_S1D13517)

        #define EPMPCS1_DATA_SETUP_TIME             (18)    
        #define EPMPCS1_DATA_WAIT_TIME              (82)  // See Epson S1D13517 data sheet for details
        #define EPMPCS1_DATA_HOLD_TIME              (0)          
        
    #elif defined (GFX_USE_DISPLAY_CONTROLLER_MCHP_DA210)
        
        // Since the display controller is built into the PIC24FJ256DA210
        // microcontroller, the timing shown here are based on the 
        // two memory devices (SRAM and Parallel Flash) mounted on the
        // development Board. All time are in ns.
        // EPMPCSx_DATA_SETUP_TIME (for DWAITB), 
        // EPMPCSx_DATA_WAIT_TIME (for DWAITM), 
        // and EPMPCSx_DATA_HOLD_TIME (for DWAITE)
        // are only used when accessing data from the External SRAM or External Parallel Flash
        // using CPU accesses, 
        // where:   
        //      x = 1 for CS1 
        //      x = 2 for CS2
        
        // When the Graphics Module is used, the EPMP timing is based on the EPMPCSx_DATA_AMWAIT_TIME
        
        // based on the IS61LV25616AL RAM Device
        #define EPMPCS1_ENABLE                              // use this to enable the use of EPMP CS1
        #define EPMPCS1_ADDRESS_LINE_COUNT          (18)    // use 18 address lines (PMA[0:17]
		#define EPMPCS1_DATA_SETUP_TIME             (0)	    // 
		#define EPMPCS1_DATA_WAIT_TIME		        (10)    // 
		#define EPMPCS1_DATA_HOLD_TIME		        (0)		// 
        
        // values are based on the SST39VF400A Parallel Flash Device (55 ns access time)
        // Since access time is 55 ns and Write Timing are the following:
        //      For programming (assuming a WE controlled Programming)
        //          WE pulse width = 40 ns (min)
        //      For reading
        //          OE to data active = 30 ns (max)
        //          OE to data high-Z output = 15 ns (max)
        //          55 ns access time
        //      We need to fulfill 55 ns then.
               
        #define EPMPCS2_ENABLE                              // use this to enable the use of EPMP CS2
        #define EPMPCS2_ADDRESS_LINE_COUNT          (18)    // use 18 address lines (PMA[0:17]
		#define EPMPCS2_DATA_SETUP_TIME             (0)	    // based on OE to data active 
		#define EPMPCS2_DATA_WAIT_TIME		        (55)	// based on 55 - 30 - 10 = 10 ns (since access time is 55 ns) 
		#define EPMPCS2_DATA_HOLD_TIME		        (0)     // bsaed on OE to data high-Z output 
    
    #else
        #error "USE_GFX_PMP is defined but no timing values are defined for the selected hardware inteface"
    #endif
    
#endif //#if defined (USE_GFX_PMP) || defined (USE_GFX_EPMP)

/*********************************************************************
* PARALLEL MASTER PORT INTERFACE TIMING AND POLARITIES 
*********************************************************************/
/*
    This portion sets up the EPMP port timing when Graphics Module is
    used as a Alternate Master in EPMP (See Family Reference Manual (FRM)
    Section 42. Enhanced Parallel Master Port (EPMP)) for details.

    Macros to define the access timing of the parallel device in EPMP chip 
	selects.  This value is used to calculate the AMWAIT cycles needed in EPMP
	Alternate Master I/Os direct access (EPMP bypass mode) (MSTSEL = 0x3). 
	When in this mode the Alternate Master (in this case Graphics Module)
	will use the clock specified by the G1CLKSEL bits of CLKDIV register
	in the oscillator module. There are two possible values: 48 Mhz and 
	96 Mhz. The equation used is:
	    temp = (1000000000ul) / ((CLKDIVbits.G1CLKSEL == 1)? 960000000ul : 480000000);
		
		if (EPMPCSx_ACCESS_TIME <= (temp*3))
		    PMCSxMDbits.AMWAIT = 0;
		else if (EPMPCSx_ACCESS_TIME > temp)
	    {
            PMCSxMDbits.AMWAIT = (EPMPCSx_ACCESS_TIME / temp);
            if ((EPMPCSx_ACCESS_TIME % temp) > 0)
                PMCSxMDbits.AMWAIT += 1;
        }          
		 
        where:   
            x = 1 for CS1 
            x = 2 for CS2
            the factor of 3 is used because of the fact that an AMWAIT of 0 means
            that 3 alternate master cycles are used per read/write.
            Actual cycles used is 3 + AMWAIT cycles per read/write access.

*/
#ifdef PIC24FJ256DA210_DEV_BOARD

	#if defined (GFX_EPMP_CS1_BASE_ADDRESS)
		#define EPMPCS1_CS_POLARITY	GFX_ACTIVE_LOW
		#define EPMPCS1_WR_POLARITY	GFX_ACTIVE_LOW
		#define EPMPCS1_RD_POLARITY	GFX_ACTIVE_LOW
		#define EPMPCS1_BE_POLARITY	GFX_ACTIVE_LOW


		#define EPMPCS1_ACCESS_TIME                 (10)		// chip select 1 Alternate Master access time.

	#endif

	#if defined (GFX_EPMP_CS2_BASE_ADDRESS)
		#define EPMPCS2_CS_POLARITY	GFX_ACTIVE_LOW
		#define EPMPCS2_WR_POLARITY	GFX_ACTIVE_LOW
		#define EPMPCS2_RD_POLARITY	GFX_ACTIVE_LOW
		#define EPMPCS2_BE_POLARITY	GFX_ACTIVE_LOW

		// macros to define the access timing of the parallel device in EPMP CS2
		#define EPMPCS2_ACCESS_TIME                 (55)		// chip select 1 Alternate Master access time.

	#endif
#endif


/*********************************************************************
* HARDWARE PROFILE FOR DISPLAY CONTROLLER INTERFACE
*********************************************************************/
/* 
    The following defines the different IO signals used to connect
    to the display controller.
    The hardware profile used is dependent on the PIC device 
    and the development board used.
    
    The following are used to control the following signals to the
    Display Controller:
    1. Reset Signal - this signal controls the reset pin of the display
            controller if available.
            
            Example:
            #define DisplayResetConfig()        TRISAbits.TRISA4 = 0    
            #define DisplayResetEnable()        LATAbits.LATA4 = 0
            #define DisplayResetDisable()       LATAbits.LATA4 = 1

    2. Command/Data Signal - this signal indicates to the controller
            if the command or data is being sent to the display controller.

            Example:
            #define DisplayCmdDataConfig()      TRISAbits.TRISA1 = 0
            #define DisplaySetCommand()         LATAbits.LATA1 = 0
            #define DisplaySetData()            LATAbits.LATA1 = 1

    3. Controller Chip Select Signal - this signal controls the chip select
            pin of the display controller is available.

            Example:
            #define DisplayConfig()             TRISBbits.TRISB15 = 0             
            #define DisplayEnable()             LATBbits.LATB15 = 0
            #define DisplayDisable()            LATBbits.LATB15 = 1
            
    4. Display Module Power Control Signal - this signal turns on or off
            the display module if available. In some cases, this can be an 
            IO port that will enable the power circuitry of your 
            display module.

            Example:
            #define DisplayPowerConfig()        TRISAbits.TRISA5 = 0       
            #define DisplayPowerOn()            LATAbits.LATA5 = 1           
            #define DisplayPowerOff()           LATAbits.LATA5 = 0

    5. Display Backlight Brightness Control - this controls the backlight
            brightness or ON or OFF states if available. If brightness is 
            controllable, this signal may be driven by some PWM signal. 

            Example:
            #define DisplayBacklightConfig()    TRISDbits.TRISD0 = 0  
            #define DisplayBacklightOn()        LATDbits.LATD0 = 0
            #define DisplayBacklightOff()       LATDbits.LATD0 = 1               
    
*/

// -----------------------------------
// When using GFX_PICTAIL_V3, GFX_PICTAIL_V3E, GFX_PICTAIL_LCC
// -----------------------------------
/*
    This development board will be compatible with:
    1. Explorer 16 (EXPLORER_16)
    2. PIC32 Starter Kits
       - PIC32 Starter Kit (DM320001)
       - PIC32 USB Starter Kit II (DM320003-2)
       - PIC32 Ethernet Starter Kit (DM320004)
*/

    // Depending on the display panel used, the backlight control may be
    // different. This portion sets up the correct backlight level to 
    // turn on or off the backlight.
    #if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E)
        #define BACKLIGHT_ENABLE_LEVEL      0
        #define BACKLIGHT_DISABLE_LEVEL     1
    #elif defined (GFX_USE_DISPLAY_PANEL_PH480272T_005_I11Q)    
        #define BACKLIGHT_ENABLE_LEVEL      1
        #define BACKLIGHT_DISABLE_LEVEL     0
    #elif defined (GFX_USE_DISPLAY_PANEL_TFT_800480_33_E)    
        #define BACKLIGHT_ENABLE_LEVEL      0
        #define BACKLIGHT_DISABLE_LEVEL     1
    #elif defined (GFX_USE_DISPLAY_PANEL_TFT_640480_8_E)    
        #define BACKLIGHT_ENABLE_LEVEL      0
        #define BACKLIGHT_DISABLE_LEVEL     1
    #else
        // default setting is logic low  
        #define BACKLIGHT_ENABLE_LEVEL      0
        #define BACKLIGHT_DISABLE_LEVEL     1
    #endif    

    
#if defined (GFX_PICTAIL_V3) || defined (GFX_PICTAIL_V3E) || defined(GFX_PICTAIL_LCC) 

    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
        // When using the supported dsPIC and PIC24H devices

        // Definitions for reset pin
        #define DisplayResetConfig()        TRISAbits.TRISA4 = 0    
        #define DisplayResetEnable()        LATAbits.LATA4 = 0
        #define DisplayResetDisable()       LATAbits.LATA4 = 1

        // Definitions for RS pin
        #define DisplayCmdDataConfig()      TRISAbits.TRISA1 = 0
        #define DisplaySetCommand()         LATAbits.LATA1 = 0
        #define DisplaySetData()            LATAbits.LATA1 = 1

        // Definitions for CS pin
        #define DisplayConfig()             TRISBbits.TRISB15 = 0             
        #define DisplayEnable()             LATBbits.LATB15 = 0
        #define DisplayDisable()            LATBbits.LATB15 = 1

        // Definitions for FLASH CS pin
        #define DisplayFlashConfig()       
        #define DisplayFlashEnable()       
        #define DisplayFlashDisable()      

        // Definitions for POWER ON pin
        #define DisplayPowerConfig()       
        #define DisplayPowerOn()           
        #define DisplayPowerOff()          

        // Definitions for backlight control pin
        #define DisplayBacklightConfig()      
        #define DisplayBacklightOn()        
        #define DisplayBacklightOff()          

        
    #elif defined (__PIC32MX__)
        // When using the supported PIC32 devices

        /********
         * PIC32 will use the SET and CLR SFRs for the I/O.
         * These are atomic settings that are recommended when
         * modifying SFRs
         ********/
        // Definitions for reset pin
        #define DisplayResetConfig()        TRISCCLR = _TRISC_TRISC1_MASK    
        #define DisplayResetEnable()        LATCCLR = _LATC_LATC1_MASK
        #define DisplayResetDisable()       LATCSET = _LATC_LATC1_MASK

        // Definitions for RS pin
        #define DisplayCmdDataConfig()      TRISCCLR = _TRISC_TRISC2_MASK
        #define DisplaySetCommand()         LATCCLR = _LATC_LATC2_MASK
        #define DisplaySetData()            LATCSET = _LATC_LATC2_MASK

        // Definitions for CS pin
        #define DisplayConfig()             TRISDCLR = _TRISD_TRISD10_MASK
        #define DisplayEnable()             LATDCLR = _LATD_LATD10_MASK
        #define DisplayDisable()            LATDSET = _LATD_LATD10_MASK

        // Definitions for FLASH CS pin
        #define DisplayFlashConfig()          
        #define DisplayFlashEnable()        
        #define DisplayFlashDisable()       

        // Definitions for POWER ON pin
        #define DisplayPowerConfig()        
        #define DisplayPowerOn()            
        #define DisplayPowerOff()            
        
        // Definitions for backlight control pin
        #define DisplayBacklightConfig()    (TRISDbits.TRISD0 = 0)  
        #define DisplayBacklightOn()        (LATDbits.LATD0 = BACKLIGHT_ENABLE_LEVEL)
        #define DisplayBacklightOff()       (LATDbits.LATD0 = BACKLIGHT_DISABLE_LEVEL)   

    #elif defined (__PIC24F__) || defined (__dsPIC33E__) || defined (__PIC24E__)
        /* When using the supported PIC24F devices
            PIC24FJ128GA010
            PIC24FJ256GA110
            PIC24FJ256GB110
            PIC24FJ256GB210
           NOTE: PIC24FJ256DA210 is not on the list since
                 this part has a built in display controller
                 and it directly interfaces to the display 
                 panel.
        */
        
        // Definitions for reset pin
        #define DisplayResetConfig()        TRISCbits.TRISC1 = 0    
        #define DisplayResetEnable()        LATCbits.LATC1 = 0
        #define DisplayResetDisable()       LATCbits.LATC1 = 1

        // Definitions for RS pin
        #define DisplayCmdDataConfig()      TRISCbits.TRISC2 = 0
        #define DisplaySetCommand()         LATCbits.LATC2 = 0
        #define DisplaySetData()            LATCbits.LATC2 = 1

        // Definitions for CS pin
        #define DisplayConfig()             TRISDbits.TRISD10 = 0             
        #define DisplayEnable()             LATDbits.LATD10 = 0
        #define DisplayDisable()            LATDbits.LATD10 = 1

        // Definitions for FLASH CS pin
        #define DisplayFlashConfig()         
        #define DisplayFlashEnable()        
        #define DisplayFlashDisable()       

        // Definitions for POWER ON pin
        #define DisplayPowerConfig()        
        #define DisplayPowerOn()            
        #define DisplayPowerOff()           
        
        // Definitions for backlight control pin
        #define DisplayBacklightConfig()    (TRISDbits.TRISD0 = 0)  
        #define DisplayBacklightOn()        (LATDbits.LATD0 = BACKLIGHT_ENABLE_LEVEL)
        #define DisplayBacklightOff()       (LATDbits.LATD0 = BACKLIGHT_DISABLE_LEVEL)   
        

    #else
    
        #error "Selected Device is not supported"
        
    #endif

// end of #if defined (GFX_PICTAIL_V3) || defined (GFX_PICTAIL_V3E) || defined(GFX_PICTAIL_LCC)   

// -----------------------------------
// When using MultiMedia Expansion Board
// -----------------------------------
/*
    This development board will be compatible with:
    1. PIC32 Starter Kits
       - PIC32 Starter Kit (DM320001)
       - PIC32 USB Starter Kit II (DM320003-2)
       - PIC32 Ethernet Starter Kit (DM320004)
*/

#elif defined (MEB_BOARD)
	
	#if defined(__dsPIC33E__) || defined(__PIC24E__)
		
		#define DisplayResetConfig()        ANSELAbits.ANSA10 = 0; TRISAbits.TRISA10 = 0    
        #define DisplayResetEnable()        LATAbits.LATA10 = 0 
        #define DisplayResetDisable()       LATAbits.LATA10 = 1

        // Definitions for RS pin
        #define DisplayCmdDataConfig()      ANSELBbits.ANSB10 = 0; TRISBbits.TRISB10 = 0
        #define DisplaySetCommand()         LATBbits.LATB10 = 0
        #define DisplaySetData()            LATBbits.LATB10 = 1

        // Definitions for CS pin
        #define DisplayConfig()             TRISGbits.TRISG13 = 0             
        #define DisplayEnable()             LATGbits.LATG13 = 0
        #define DisplayDisable()            LATGbits.LATG13 = 1

        // Definitions for FLASH CS pin
        #define DisplayFlashConfig()         
        #define DisplayFlashEnable()        
        #define DisplayFlashDisable()       

        // Definitions for POWER ON pin
        #define DisplayPowerConfig()        
        #define DisplayPowerOn()            
        #define DisplayPowerOff()  
        
         // Definitions for backlight control pin
        #define DisplayBacklightConfig()    (TRISDbits.TRISD0 = 0)  
        #define DisplayBacklightOn()        (LATDbits.LATD0 = BACKLIGHT_ENABLE_LEVEL)
        #define DisplayBacklightOff()       (LATDbits.LATD0 = BACKLIGHT_DISABLE_LEVEL)    
        
    #else
	     /********
	     * PIC32 will use the SET and CLR SFRs for the I/O.
	     * These are atomic settings that are recommended when
	     * modifying SFRs
	     ********/
	     // Definitions for reset pin
	     #define DisplayResetConfig()           TRISACLR = _TRISA_TRISA10_MASK    
	     #define DisplayResetEnable()           LATACLR = _LATA_LATA10_MASK
	     #define DisplayResetDisable()          LATASET = _LATA_LATA10_MASK
	
	     // Definitions for RS pin
	     #define DisplayCmdDataConfig()         AD1PCFGSET = _AD1PCFG_PCFG10_MASK, TRISBCLR = _TRISB_TRISB10_MASK
	     #define DisplaySetCommand()            LATBCLR = _LATB_LATB10_MASK
	     #define DisplaySetData()               LATBSET = _LATB_LATB10_MASK
	
	     // Definitions for CS pin
	     #define DisplayConfig()                TRISGCLR = _TRISG_TRISG13_MASK
	     #define DisplayEnable()                LATGCLR = _LATG_LATG13_MASK
	     #define DisplayDisable()               LATGSET = _LATG_LATG13_MASK
	
	     // Definitions for FLASH CS pin
	     #define DisplayFlashConfig()          
	     #define DisplayFlashEnable()        
	     #define DisplayFlashDisable()       
	
	     // Definitions for POWER ON pin
	     #define DisplayPowerConfig()        
	     #define DisplayPowerOn()            
	     #define DisplayPowerOff()           
	
	    #define DisplayBacklightConfig()    (TRISDbits.TRISD0 = 0)  
	    #define DisplayBacklightOn()        (LATDbits.LATD0 = BACKLIGHT_ENABLE_LEVEL)
	    #define DisplayBacklightOff()       (LATDbits.LATD0 = BACKLIGHT_DISABLE_LEVEL)   
	    
	#endif
    
// end of #elif defined (MEB_BOARD)

// -----------------------------------
// When using PIC24FJ256DA210 Development Board
// -----------------------------------
/*
    This development board only has PIC24FJ256DA210 device.
*/

#elif defined (PIC24FJ256DA210_DEV_BOARD)
	
    // Definitions for POWER ON pin
    #define DisplayPowerConfig()            TRISAbits.TRISA5 = 0       
    #define DisplayPowerOn()                LATAbits.LATA5 = 1           
    #define DisplayPowerOff()               LATAbits.LATA5 = 0

    // Definitions for backlight control pin
    #define DisplayBacklightConfig()        
    #define DisplayBacklightOn()        
    #define DisplayBacklightOff()          
    
    // Dummy definitions
    // Definitions for reset pin
    #define DisplayResetConfig()           
    #define DisplayResetEnable()           
    #define DisplayResetDisable()          

    // Definitions for RS pin
    #define DisplayCmdDataConfig()         
    #define DisplaySetCommand()            
    #define DisplaySetData()               

    // Definitions for CS pin
    #define DisplayConfig()                
    #define DisplayEnable()                
    #define DisplayDisable()               
    

// end of #elif defined (PIC24FJ256DA210_DEV_BOARD)

// -----------------------------------
// When using GFX_PICTAIL_V2
// -----------------------------------
/*
    This development board is obsolete and is
    not recommended to be used in new designs.
    Compatible with Explorer 16 (EXPLORER_16)
*/

#elif defined (GFX_PICTAIL_V2)

    #if defined (GFX_USE_DISPLAY_CONTROLLER_LGDP4531)

        #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)

            // Definitions for reset pin
            #define DisplayResetConfig()        TRISAbits.TRISA4 = 0    
            #define DisplayResetEnable()        LATAbits.LATA4 = 0
            #define DisplayResetDisable()       LATAbits.LATA4 = 1

            // Definitions for RS pin
            #define DisplayCmdDataConfig()      TRISAbits.TRISA1 = 0
            #define DisplaySetCommand()         LATAbits.LATA1 = 0
            #define DisplaySetData()            LATAbits.LATA1 = 1

            // Definitions for CS pin
            #define DisplayConfig()             TRISBbits.TRISB15 = 0             
            #define DisplayEnable()             LATBbits.LATB15 = 0
            #define DisplayDisable()            LATBbits.LATB15 = 1

            // Definitions for POWER ON pin
            #define DisplayPowerConfig()        TRISAbits.TRISA10 = 0
            #define DisplayPowerOn()            LATAbits.LATA10 = 0
            #define DisplayPowerOff()           LATAbits.LATA10 = 1

            #define DisplayBacklightConfig()     
            #define DisplayBacklightOn()        
            #define DisplayBacklightOff()       

            // Definitions for FLASH CS pin
            #define DisplayFlashConfig()        TRISAbits.TRISA8 = 0        
            #define DisplayFlashEnable()        LATAbits.LATA8 = 1
            #define DisplayFlashDisable()       LATAbits.LATA8 = 0

        #elif defined (__PIC32MX__)

            /********
             * PIC32 will use the SET and CLR SFRs for the I/O.
             * These are atomic settings that are recommended when
             * modifying SFRs
             ********/
	            // Definitions for reset pin
            #define DisplayResetConfig()        TRISCCLR = _TRISC_TRISC1_MASK    
            #define DisplayResetEnable()        LATCCLR = _LATC_LATC1_MASK
            #define DisplayResetDisable()       LATCSET = _LATC_LATC1_MASK

	            // Definitions for RS pin
            #define DisplayCmdDataConfig()      TRISCCLR = _TRISC_TRISC2_MASK
            #define DisplaySetCommand()         LATCCLR = _LATC_LATC2_MASK
            #define DisplaySetData()            LATCSET = _LATC_LATC2_MASK

	            // Definitions for CS pin
            #define DisplayConfig()             TRISDCLR = _TRISD_TRISD10_MASK
            #define DisplayEnable()             LATDCLR = _LATD_LATD10_MASK
            #define DisplayDisable()            LATDSET = _LATD_LATD10_MASK

            // Definitions for POWER ON pin
            #define DisplayPowerConfig()        TRISCCLR = _TRISC_TRISC3_MASK
            #define DisplayPowerOn()            LATCCLR = _LATC_LATC3_MASK 
            #define DisplayPowerOff()           LATCSET = _LATC_LATC3_MASK

            #define DisplayBacklightConfig()     
            #define DisplayBacklightOn()        
            #define DisplayBacklightOff()       

            // Definitions for FLASH CS pin
            #define DisplayFlashConfig()        TRISDCLR = _TRISD_TRISD1_MASK     
            #define DisplayFlashEnable()        LATDCLR = _LATD_LATD1_MASK
            #define DisplayFlashDisable()       LATDSET = _LATD_LATD1_MASK

        #elif defined (__PIC24F__)
    	    // Definitions for reset pin
            #define DisplayResetConfig()        TRISCbits.TRISC1 = 0    
            #define DisplayResetEnable()        LATCbits.LATC1 = 0
            #define DisplayResetDisable()       LATCbits.LATC1 = 1

	        // Definitions for RS pin
            #define DisplayCmdDataConfig()      TRISCbits.TRISC2 = 0
            #define DisplaySetCommand()         LATCbits.LATC2 = 0
            #define DisplaySetData()            LATCbits.LATC2 = 1

	        // Definitions for CS pin
            #define DisplayConfig()             TRISDbits.TRISD10 = 0             
            #define DisplayEnable()             LATDbits.LATD10 = 0
            #define DisplayDisable()            LATDbits.LATD10 = 1

            // Definitions for POWER ON pin
            #define DisplayPowerConfig()        TRISCbits.TRISC3 = 0
            #define DisplayPowerOn()            LATCbits.LATC3 = 0
            #define DisplayPowerOff()           LATCbits.LATC3 = 1

            #define DisplayBacklightConfig()     
            #define DisplayBacklightOn()        
            #define DisplayBacklightOff()       

            // Definitions for FLASH CS pin
            #define DisplayFlashConfig()        TRISDbits.TRISD1 = 0        
            #define DisplayFlashEnable()        LATDbits.LATD1 = 1
            #define DisplayFlashDisable()       LATDbits.LATD1 = 0

        #endif

    // end of #if defined (GFX_USE_DISPLAY_CONTROLLER_LGDP4531)
    #endif

// end of #elif defined (GFX_PICTAIL_V2)

// -----------------------------------
// When using MIKRO_BOARD
// -----------------------------------
/*
    This development board family currently supports:
    - Mikromedia Board for PIC24 (TMIK010)
*/

#elif defined (MIKRO_BOARD)
	#if defined(__PIC24FJ256GB110__)
    // Definitions for reset pin
    #define DisplayResetConfig()        TRISCbits.TRISC1 = 0    
    #define DisplayResetEnable()        LATCbits.LATC1 = 0
    #define DisplayResetDisable()       LATCbits.LATC1 = 1

    // Definitions for RS pin
    #define DisplayCmdDataConfig()      TRISBbits.TRISB15 = 0
    #define DisplaySetCommand()         LATBbits.LATB15 = 0
    #define DisplaySetData()            LATBbits.LATB15 = 1

    // Definitions for CS pin
    #define DisplayConfig()             TRISFbits.TRISF12 = 0             
    #define DisplayEnable()             LATFbits.LATF12 = 0
    #define DisplayDisable()            LATFbits.LATF12 = 1


    // Definitions for FLASH CS pin
    #define DisplayFlashConfig()       
    #define DisplayFlashEnable()       
    #define DisplayFlashDisable()      

    // Definitions for POWER ON pin
    #define DisplayPowerConfig()       
    #define DisplayPowerOn()           
    #define DisplayPowerOff()          

    // Definitions for backlight control pin
    #define DisplayBacklightConfig()      
    #define DisplayBacklightOn()        
    #define DisplayBacklightOff()      
	#endif
// end of #elif defined (MIKRO_BOARD)

#endif 

/*********************************************************************
* HARDWARE PROFILE FOR THE RESISTIVE TOUCHSCREEN 
*********************************************************************/
/*
	These are the hardware settings for the 4-wire resistive
	touch screen. There are two analog inputs and two digital I/Os
	needed. 
	
	This portion is divided into 3 components
	1. IO and ADC channels settings - sets up the IO pins used and the
	   ADC channel selected to evaluate the screen touch. 
	2. Touch Screen X and Y orientation settings - sets up the
	   x and y directions. This is dependent on how the resistive
	   touch signals (X-, Y-, X+, and Y+) are wired up to the 
	   IOs and ADC signals with respect to the orientation of the
	   screen. Based on these factors, we can control the calculation
	   of the touch by swapping x and/or y and flipping the x and/or y 
	   directions.
	3. Touch Screen Non-Volatile Memory Storage Macros - this defines
	   the non-volatile memory read, write and sector erase functions
	   to be used when reading or storing calibration values.    
	
	The resistive touch screen driver assumes the following: 
	1. X+ and Y+ are mapped to the A/D inputs
	2. X- and Y- are mapped to the pure digital I/Os
*/

#if defined (USE_TOUCHSCREEN_RESISTIVE)

	/*********************************************************************
	* Resistive Touch Screen A/D and I/O Specific Macros 
	*********************************************************************/
	// ADC Input Channel Selector
	#if defined(__dsPIC33F__) || defined(__PIC24H__) || defined(__dsPIC33E__) || defined(__PIC24E__)
		#define TOUCH_ADC_INPUT_SEL   AD1CHS0
    #else // all other supported devices
		#define TOUCH_ADC_INPUT_SEL   AD1CHS
    #endif

	// ADC Sample Start 
	#define TOUCH_ADC_START   AD1CON1bits.SAMP 

	// ADC Status
	#define TOUCH_ADC_DONE   AD1CON1bits.DONE

	// Hardware Platform dependend macros
	/* ----------------------------------------- */
	#if defined (PIC24FJ256DA210_DEV_BOARD)
	/* ----------------------------------------- */
		// ADC channel constants
		// Potentiometer and Temperature sensor
		/* PIC24FJ256DA210 Development Board does 
		 * not have a temperature sensor 
		 */
		#define ADC_POT			5
		#define ADC_XPOS		16
		#define ADC_YPOS		18

		// ADC Port Control Bits
		#define ADC_POT_PCFG	ANSBbits.ANSB5
		#define ADPCFG_XPOS		ANSCbits.ANSC4
		#define ADPCFG_YPOS		ANSGbits.ANSG7

		// Y port definitions
		#define LAT_XPOS    LATCbits.LATC4
		#define TRIS_XPOS   TRISCbits.TRISC4
		#define LAT_XNEG    LATAbits.LATA2
		#define TRIS_XNEG   TRISAbits.TRISA2
	     
		// X port definitions
		#define LAT_YPOS    LATGbits.LATG7
		#define TRIS_YPOS   TRISGbits.TRISG7
   		#define LAT_YNEG    LATAbits.LATA1
		#define TRIS_YNEG   TRISAbits.TRISA1
    
    // end of #if defined (PIC24FJ256DA210_DEV_BOARD)...
    
	/* ----------------------------------------- */
	#elif defined (MEB_BOARD)
	/* ----------------------------------------- */
	
		// ADC channel constants
		// Potentiometer and Temperature sensor
		/* The Multi-Media Expansion Board does not have a
		 * analog pot or temperature sensor (see BMA150 for temperature
		 * sensor data
		 */
		#if defined(__dsPIC33E__) || defined(__PIC24E__)
		
			#define ADC_XPOS    11
			#define ADC_YPOS    14
		
			// X port definitions
			#define LAT_XPOS    LATBbits.LATB11
			#define TRIS_XPOS   TRISBbits.TRISB11
			#define LAT_XNEG    LATBbits.LATB13
			#define TRIS_XNEG   ANSELBbits.ANSB13 = 1, TRISBbits.TRISB13
		
			// Y port definitions
			#define LAT_YPOS    LATBbits.LATB14
			#define TRIS_YPOS   TRISBbits.TRISB14
			#define LAT_YNEG    LATBbits.LATB12 
			#define TRIS_YNEG   ANSELBbits.ANSB12 = 1, TRISBbits.TRISB12
		
		
		#else

		
			#define ADC_XPOS    ADC_CH0_POS_SAMPLEA_AN11
			#define ADC_YPOS    ADC_CH0_POS_SAMPLEA_AN14
	
			// ADC Port Control Bits
			#define ADPCFG_XPOS AD1PCFGbits.PCFG11
			#define ADPCFG_YPOS AD1PCFGbits.PCFG14
			
			// X port definitions
			#define LAT_XPOS    LATBbits.LATB11
			#define TRIS_XPOS   TRISBbits.TRISB11
			#define LAT_XNEG    LATBbits.LATB13
			#define TRIS_XNEG   AD1PCFGbits.PCFG13 = 1, TRISBbits.TRISB13
	
			// Y port definitions
			#define LAT_YPOS    LATBbits.LATB14
			#define TRIS_YPOS   TRISBbits.TRISB14
			#define LAT_YNEG    LATBbits.LATB12 
			#define TRIS_YNEG   AD1PCFGbits.PCFG12 = 1, TRISBbits.TRISB12
		
		#endif // defined(__dsPIC33E__) || defined(__PIC24E__)

    // end of #elif defined (MEB_BOARD)...

	/* ----------------------------------------- */
	#elif defined (GFX_PICTAIL_LCC)
	/* ----------------------------------------- */

		// ADC channel constants
		// Potentiometer and Temperature sensor
		/* The GFX PICtail LCC Board does not have a
		 * analog pot or temperature sensor (see BMA150 for temperature
		 * sensor data
		 */
		#define ADC_XPOS    ADC_CH0_POS_SAMPLEA_AN0
		#define ADC_YPOS    ADC_CH0_POS_SAMPLEA_AN1

		// ADC Port Control Bits
        #define ADPCFG_XPOS AD1PCFGbits.PCFG0
        #define ADPCFG_YPOS AD1PCFGbits.PCFG1
		
		// X port definitions
        #define LAT_XPOS    LATBbits.LATB0
        #define TRIS_XPOS   TRISBbits.TRISB0

        #if defined(_USB) && !defined (PIC32_SK)
            #define LAT_XNEG    LATGbits.LATG15
            #define TRIS_XNEG   TRISGbits.TRISG15
        #else
            #define LAT_XNEG    LATDbits.LATD9
            #define TRIS_XNEG   TRISDbits.TRISD9
        #endif

		// Y port definitions

        #define LAT_YPOS    LATBbits.LATB1
        #define TRIS_YPOS   TRISBbits.TRISB1
        #define LAT_YNEG    LATBbits.LATB9
        #define TRIS_YNEG   TRISBbits.TRISB9

    // end of #elif defined (GFX_PICTAIL_LCC)...    
    
	/* ----------------------------------------- */
	#elif defined (GFX_PICTAIL_V2) // && defined (EXPLORER_16)  
	/* ----------------------------------------- */
	// NOTE: GFX_PICTAIL_V2 can only be paired with Explorer 16

		#if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
			// ADC channel constants
			// Potentiometer and Temperature sensor
			#define ADC_TEMP        4
			#define ADC_POT         0
			#define ADC_XPOS		5
			#define ADC_YPOS		4

			// ADC Port Control Bits
			#define ADC_POT_TRIS    TRISAbits.TRISA0
			#define ADC_POT_PCFG    AD1PCFGLbits.PCFG0
			#define ADPCFG_XPOS		AD1PCFGLbits.PCFG5
			#define ADPCFG_YPOS		AD1PCFGLbits.PCFG4

			// X port definitions
			#define LAT_XPOS		LATBbits.LATB3
			#define TRIS_XPOS		TRISBbits.TRISB3
			#define LAT_XNEG		LATCbits.LATC9
			#define TRIS_XNEG		TRISCbits.TRISC9

			// Y port definitions
			#define LAT_YPOS		LATBbits.LATB2
			#define TRIS_YPOS		TRISBbits.TRISB2
			#define LAT_YNEG		LATCbits.LATC8
			#define TRIS_YNEG		TRISCbits.TRISC8

		#elif defined(__PIC32MX__)

			// ADC channel constants
			// Potentiometer and Temperature sensor
			#define ADC_TEMP		ADC_CH0_POS_SAMPLEA_AN4
			#define ADC_POT			ADC_CH0_POS_SAMPLEA_AN5
			#define ADC_XPOS		ADC_CH0_POS_SAMPLEA_AN11
			#define ADC_YPOS		ADC_CH0_POS_SAMPLEA_AN10

			// ADC Port Control Bits
			#define ADC_POT_PCFG    AD1PCFGbits.PCFG5
	        #define ADPCFG_XPOS		AD1PCFGbits.PCFG11
			#define ADPCFG_YPOS		AD1PCFGbits.PCFG10

			// X port definitions
			#define LAT_XPOS		LATBbits.LATB11
			#define TRIS_XPOS		TRISBbits.TRISB11
			#define LAT_XNEG		LATGbits.LATG13
			#define TRIS_XNEG		TRISGbits.TRISG13
			// Y port definitions
			#define LAT_YPOS		LATBbits.LATB10
			#define TRIS_YPOS		TRISBbits.TRISB10
			#define LAT_YNEG		LATGbits.LATG12
			#define TRIS_YNEG		TRISGbits.TRISG12


		#else // all other supported PIC devices

			// ADC channel constants
			// Potentiometer and Temperature sensor
			#define ADC_TEMP		4
			#define ADC_POT			5
			#define ADC_XPOS		11
			#define ADC_YPOS		10

			// ADC Port Control Bits
			#define ADC_POT_PCFG    AD1PCFGbits.PCFG5
	        #define ADPCFG_XPOS		AD1PCFGbits.PCFG11
			#define ADPCFG_YPOS		AD1PCFGbits.PCFG10

			// X port definitions
			#define LAT_XPOS		LATBbits.LATB11
			#define TRIS_XPOS		TRISBbits.TRISB11
			#define LAT_XNEG		LATGbits.LATG13
			#define TRIS_XNEG		TRISGbits.TRISG13
			// Y port definitions
			#define LAT_YPOS		LATBbits.LATB10
			#define TRIS_YPOS		TRISBbits.TRISB10
			#define LAT_YNEG		LATGbits.LATG12
			#define TRIS_YNEG		TRISGbits.TRISG12

		#endif

    // end of #elif defined (GFX_PICTAIL_V2) ...
    
	/* ----------------------------------------- */
	#elif defined (GFX_PICTAIL_V3) || defined (GFX_PICTAIL_V3E)  // && defined (EXPLORER_16) || PIC32 Starter Kits 
	/* ----------------------------------------- */
	// NOTE: GFX_PICTAIL_V3 can be paired with Explorer 16 or with PIC32 Starter Kits
    
		#if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
			// ADC channel constants
			// Potentiometer and Temperature sensor
			#define ADC_TEMP        4
			#define ADC_POT         0
			#define ADC_XPOS		5
			#define ADC_YPOS		4

			// ADC Port Control Bits
			#define ADC_POT_TRIS    TRISAbits.TRISA0
			#define ADC_POT_PCFG    AD1PCFGLbits.PCFG0
			#define ADPCFG_XPOS		AD1PCFGLbits.PCFG5
			#define ADPCFG_YPOS		AD1PCFGLbits.PCFG4

			// X port definitions
			#define LAT_XPOS		LATBbits.LATB3
			#define TRIS_XPOS		TRISBbits.TRISB3
			#define LAT_XNEG		LATCbits.LATC9
			#define TRIS_XNEG		TRISCbits.TRISC9

			// Y port definitions
			#define LAT_YPOS		LATBbits.LATB2
			#define TRIS_YPOS		TRISBbits.TRISB2
			#define LAT_YNEG		LATCbits.LATC8
			#define TRIS_YNEG		TRISCbits.TRISC8

		#elif defined(__PIC32MX__)

			// ADC channel constants
            // resistive touch X and Y voltage sensing
			#define ADC_XPOS		ADC_CH0_POS_SAMPLEA_AN11
			#define ADC_YPOS		ADC_CH0_POS_SAMPLEA_AN10

			// Potentiometer and Temperature sensor
			#define ADC_TEMP		ADC_CH0_POS_SAMPLEA_AN4
            #if !defined (PIC32_SK)
                // potentiometer is not present in PIC32 Starter Kits
                #define ADC_POT			ADC_CH0_POS_SAMPLEA_AN5
            #endif    

            
			// ADC Port Control Bits
            #if !defined (PIC32_SK)
                // potentiometer is not present in PIC32 Starter Kits
                #define ADC_POT_PCFG    AD1PCFGbits.PCFG5
            #endif    
	        #define ADPCFG_XPOS		AD1PCFGbits.PCFG11
			#define ADPCFG_YPOS		AD1PCFGbits.PCFG10

			// X port definitions
			#define LAT_XPOS		LATBbits.LATB11
			#define TRIS_XPOS		TRISBbits.TRISB11

            #if defined(_USB) && !defined (PIC32_SK)
 				#define LAT_XNEG		LATGbits.LATG15
				#define TRIS_XNEG		TRISGbits.TRISG15
			#else  // other supported PIC 32 devices
				#define LAT_XNEG		LATDbits.LATD9
				#define TRIS_XNEG		TRISDbits.TRISD9
			#endif

			// Y port definitions
			#define LAT_YPOS		LATBbits.LATB10
			#define TRIS_YPOS		TRISBbits.TRISB10

            #if defined (GFX_PICTAIL_V3E) && defined(PIC32_SK)
                  #define LAT_YNEG		LATBbits.LATB15
            #define TRIS_YNEG		TRISBbits.TRISB15
                  #else
                #define LAT_YNEG		LATDbits.LATD8
                #define TRIS_YNEG		TRISDbits.TRISD8
            #endif
       
       #else	//#else defined (__PIC24F__) || defined(__dsPIC33E__) || defined(__PIC24E__)

			// ADC channel constants
			// Potentiometer and Temperature sensor
			#if defined(__PIC24F__)
			    #define ADC_TEMP        4
			    #define ADC_POT         5

			// ADC Port Control Bits
    		#if defined(__PIC24FJ256GB210__)
	        	#define ADC_POT_PCFG	ANSBbits.ANSB5
    		    #define ADPCFG_XPOS		ANSBbits.ANSB11
		        #define ADPCFG_YPOS		ANSBbits.ANSB10
            #else
        		#define ADC_POT_PCFG    AD1PCFGbits.PCFG5
    	        #define ADPCFG_XPOS		AD1PCFGbits.PCFG11
    			#define ADPCFG_YPOS		AD1PCFGbits.PCFG10
            #endif
			#endif

			#define ADC_XPOS        11
			#define ADC_YPOS        10

            // X port definitions
			#define LAT_XPOS		LATBbits.LATB11
			#define TRIS_XPOS		TRISBbits.TRISB11
			#define LAT_XNEG		LATDbits.LATD9
			#define TRIS_XNEG		TRISDbits.TRISD9 
			
            // Y port definitions
			#define LAT_YPOS		LATBbits.LATB10
			#define TRIS_YPOS		TRISBbits.TRISB10
			#define LAT_YNEG		LATDbits.LATD8
			#define TRIS_YNEG		TRISDbits.TRISD8

		#endif

	#elif defined(MIKRO_BOARD)
	    #if defined(__PIC24FJ256GB110__)
            #define ADC_XPOS    13
            #define ADC_YPOS    12

	        // Y port definitions
            #define ADPCFG_XPOS AD1PCFGbits.PCFG13
            #define LAT_XPOS    LATBbits.LATB13
            #define TRIS_XPOS   TRISBbits.TRISB13
            #define LAT_XNEG    LATBbits.LATB11
            #define TRIS_XNEG   TRISBbits.TRISB11
 
        	// X port definitions
            #define ADPCFG_YPOS AD1PCFGbits.PCFG12
            #define LAT_YPOS    LATBbits.LATB12
            #define TRIS_YPOS   TRISBbits.TRISB12
	        #define LAT_YNEG    LATBbits.LATB10
            #define TRIS_YNEG   TRISBbits.TRISB10
		#endif
	#endif // end of #elif defined (GFX_PICTAIL_V3) || defined (GFX_PICTAIL_V3E) ...

	/*********************************************************************
	* Touch Screen X and Y orientation
	*********************************************************************/
	/*********************************************************************
	Description:
		The usage of the resistive touch screen will be affected 
		by the way the hardware is mapped to the A/D channels that
		samples the touch. Since resistive touch is basically a 
		measurement of X and Y coordinates the following are macros
		that can modify the touch algorithm when sampling the 
		touch.
		TOUCHSCREEN_RESISTIVE_FLIP_X - will flip the x direction. 	
		TOUCHSCREEN_RESISTIVE_FLIP_Y - will flip the y direction.
		TOUCHSCREEN_RESISTIVE_SWAP_XY - will swap the x and y sampling.
		
		As long as the (X-,Y-) and (X+,Y+) are used consistently,
		and connected properly in hardware, the macros above
		can provide options to the user to align the touch screen
		to the screen orientation.

        Another macro that may affect the way the x and y measurement 
        are the following:
        TOUCHSCREEN_RESISTIVE_PRESS_THRESHOLD - determines how light the 
            touch on the screen. The smaller the  value the lighter the 
            touch. Valid range of values: 0-0x03ff
        TOUCHSCREEN_RESISTIVE_CALIBRATION_SCALE_FACTOR - this is the scale
            factor used to calculate the touch coefficients. The equation 
            to calculate the scale factor is:
               (1 << TOUCHSCREEN_RESISTIVE_CALIBRATION_SCALE_FACTOR).
            Valid values: 0 - 15 (most resistive touch screens will work 
                                  in the range of 5 - 7)

	*********************************************************************/

	/* ----------------------------------------- */
	#if defined (GFX_PICTAIL_V2)
	/* ----------------------------------------- */
        #define TOUCHSCREEN_RESISTIVE_FLIP_Y

	/* ----------------------------------------- */
	#elif defined (GFX_PICTAIL_V3)              || \
		  defined (GFX_PICTAIL_V3E)             || \
          defined (GFX_PICTAIL_LCC)             || \
		  defined (PIC24FJ256DA210_DEV_BOARD)   || \
	      defined (MEB_BOARD) 
	/* ----------------------------------------- */
		#if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E) ||     \
            defined (GFX_USE_DISPLAY_PANEL_TFT_640480_8_E)	       ||     \
            defined (GFX_USE_DISPLAY_PANEL_TFT_800480_33_E)	

			#if (DISP_ORIENTATION == 0)	
				#define TOUCHSCREEN_RESISTIVE_SWAP_XY
				#define TOUCHSCREEN_RESISTIVE_FLIP_Y
			#elif (DISP_ORIENTATION == 180)	
				#define TOUCHSCREEN_RESISTIVE_SWAP_XY
				#define TOUCHSCREEN_RESISTIVE_FLIP_X
			#elif (DISP_ORIENTATION == 270)	
				#define TOUCHSCREEN_RESISTIVE_FLIP_X
				#define TOUCHSCREEN_RESISTIVE_FLIP_Y
			#endif	

        #endif

		//#if (DISPLAY_PANEL == PH480272T_005_I11Q)	
		#if defined (GFX_USE_DISPLAY_PANEL_PH480272T_005_I11Q)	

            #if (DISP_ORIENTATION == 90)	
				#define TOUCHSCREEN_RESISTIVE_SWAP_XY
				#define TOUCHSCREEN_RESISTIVE_FLIP_X
			#elif (DISP_ORIENTATION == 180)	
				#define TOUCHSCREEN_RESISTIVE_FLIP_X
				#define TOUCHSCREEN_RESISTIVE_FLIP_Y
			#elif (DISP_ORIENTATION == 270)	
				#define TOUCHSCREEN_RESISTIVE_SWAP_XY
				#define TOUCHSCREEN_RESISTIVE_FLIP_Y
			#endif	
            
		#endif
	#elif defined (MIKRO_BOARD)
        #define TOUCHSCREEN_RESISTIVE_PRESS_THRESHOLD           500
        #define TOUCHSCREEN_RESISTIVE_CALIBRATION_SCALE_FACTOR  6
	#endif
	
	/*********************************************************************
	* Touch Screen Non-Volatile Memory Storage Macros
	*********************************************************************/

	/* ----------------------------------------- */
	#if defined (USE_MCHP25LC256)  
	/* ----------------------------------------- */
		// for  GFX_PICTAIL_V1 or GFX_PICTAIL_V2
		// Addresses for calibration and version values in EEPROM on Explorer 16
        #define ADDRESS_RESISTIVE_TOUCH_VERSION (unsigned)0x7FFE
        #define ADDRESS_RESISTIVE_TOUCH_COEFA   (unsigned)0x7FFC
        #define ADDRESS_RESISTIVE_TOUCH_COEFB   (unsigned)0x7FFA
        #define ADDRESS_RESISTIVE_TOUCH_COEFC   (unsigned)0x7FF8
        #define ADDRESS_RESISTIVE_TOUCH_COEFD   (unsigned)0x7FF6

        // define the functions to call for the non-volatile memory
        // check out touch screen module for definitions of the following function pointers
        // used: NVM_READ_FUNC, NVM_WRITE_FUNC & NVM_SECTORERASE_FUNC
		#define NVMSectorErase					((NVM_SECTORERASE_FUNC)0)
    	#define NVMWrite 						((NVM_WRITE_FUNC)&MCHP25LC256WriteWord)
    	#define NVMRead 						((NVM_READ_FUNC)&MCHP25LC256ReadWord)
   	

	/* ----------------------------------------- */
    #elif defined (USE_SST25VF016) || defined (USE_M25P80)
	/* ----------------------------------------- */
		// Addresses for calibration and version values in SPI Flash on Graphics PICtail 3 & PIC24FJ256DA210 Development Board.
		// Or Addresses for calibration and version values in Parallel Flash on PIC24FJ256DA210 Development Board.
        #define ADDRESS_RESISTIVE_TOUCH_VERSION	(unsigned long)0xFFFFFFFE
        #define ADDRESS_RESISTIVE_TOUCH_COEFA   (unsigned long)0xFFFFFFFC
        #define ADDRESS_RESISTIVE_TOUCH_COEFB   (unsigned long)0xFFFFFFFA
        #define ADDRESS_RESISTIVE_TOUCH_COEFC   (unsigned long)0xFFFFFFF8
        #define ADDRESS_RESISTIVE_TOUCH_COEFD   (unsigned long)0xFFFFFFF6

        // define the functions to call for the non-volatile memory
        // check out touch screen module for definitions of the following function pointers
        // used: NVM_READ_FUNC, NVM_WRITE_FUNC & NVM_SECTORERASE_FUNC
		#define NVMSectorErase					((NVM_SECTORERASE_FUNC)&SST25SectorErase)
    	#define NVMWrite 						((NVM_WRITE_FUNC)&SST25WriteWord)
    	#define NVMRead 						((NVM_READ_FUNC)&SST25ReadWord)

	/* ----------------------------------------- */
	#elif defined (USE_SST39LF400)
	/* ----------------------------------------- */
		// for  PIC24FJ256DA210 Dev Board 
		#define ADDRESS_RESISTIVE_TOUCH_VERSION	(unsigned long)0x0003FFFE
	    #define ADDRESS_RESISTIVE_TOUCH_COEFA   (unsigned long)0x0003FFFC
	    #define ADDRESS_RESISTIVE_TOUCH_COEFB   (unsigned long)0x0003FFFA
	    #define ADDRESS_RESISTIVE_TOUCH_COEFC   (unsigned long)0x0003FFF8
	    #define ADDRESS_RESISTIVE_TOUCH_COEFD   (unsigned long)0x0003FFF6
	    
        // define the functions to call for the non-volatile memory
        // check out touch screen module for definitions of the following function pointers
        // used: NVM_READ_FUNC, NVM_WRITE_FUNC & NVM_SECTORERASE_FUNC
		#define NVMSectorErase					((NVM_SECTORERASE_FUNC)&SST39LF400SectorErase)
    	#define NVMWrite 						((NVM_WRITE_FUNC)&SST39LF400WriteWord)
    	#define NVMRead 						((NVM_READ_FUNC)&SST39LF400ReadWord)

	/* ----------------------------------------- */
	#else	// when no non-volatile memory is used
	/* ----------------------------------------- */
		#warning "Non-Volatile Memory addresses is not set for touch screen calibration"

		#define ADDRESS_RESISTIVE_TOUCH_VERSION	0
	    #define ADDRESS_RESISTIVE_TOUCH_COEFA   0
	    #define ADDRESS_RESISTIVE_TOUCH_COEFB   0
	    #define ADDRESS_RESISTIVE_TOUCH_COEFC   0
	    #define ADDRESS_RESISTIVE_TOUCH_COEFD   0

		#define NVMSectorErase					((void *)0)
    	#define NVMWrite 						((void *)0)
    	#define NVMRead 						((void *)0)

    #endif    

#endif // defined (USE_TOUCHSCREEN_RESISTIVE)



/*********************************************************************
* HARDWARE PROFILE FOR THE SPI FLASH MEMORY
*********************************************************************/
/*
	These are the hardware settings for the SPI peripherals used.
*/

#if defined (USE_MCHP25LC256) 

    /*********************************************************************
	* Serial Bus SPI EEPROM (MCHP 25LC256) On Explorer 16  
	*********************************************************************/
	// When using Explorer 16, the on board EEPROM SPI (25LC256) is present 
	// so we define the chip select signal used. This is needed even 
	// if the memory is not used. Set to de-asserted state to avoid conflicts
	// when not used. That is why the EXPLORER_16 check is also needed.
	// see...#if defined (USE_MCHP25LC256) || defined (EXPLORER_16)

    /* Define all the SPI channels that will be used here.
       These will be used to determine how the SPI Driver (drv_spi)
       will be compiled.
    */
    // Chip Select signal 
    #if defined (GFX_PICTAIL_V2)   
        #define MCHP25LC256_SPI_CHANNEL 2
    #endif // #if defined (GFX_PICTAIL_V2)...   

    #if (MCHP25LC256_SPI_CHANNEL == 1)
        #define SPI_CHANNEL_1_ENABLE
    #elif (MCHP25LC256_SPI_CHANNEL == 2)
        #define SPI_CHANNEL_2_ENABLE
    #elif (MCHP25LC256_SPI_CHANNEL == 3)
        #define SPI_CHANNEL_3_ENABLE
    #elif (MCHP25LC256_SPI_CHANNEL == 4)
        #define SPI_CHANNEL_4_ENABLE
    #endif

    // Clock, SDO and SDI signals
    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
        #define MCHP25LC256_SCK_TRIS TRISCbits.TRISC2
        #define MCHP25LC256_SDO_TRIS TRISCbits.TRISC0
        #define MCHP25LC256_SDI_TRIS TRISCbits.TRISC1
    #else
	    #define MCHP25LC256_SCK_TRIS TRISGbits.TRISG6
	    #define MCHP25LC256_SDO_TRIS TRISGbits.TRISG8
	    #define MCHP25LC256_SDI_TRIS TRISGbits.TRISG7
    #endif    

#endif // #if defined (USE_MCHP25LC256)

    // The MCHP25LC256 chip select signal, even if not used must be
    // driven to high so it does not interfere with other SPI peripherals
    // that uses the same SPI signals. 
    #if  defined(__PIC24F__) || defined(__PIC24H__) || defined(__dsPIC33F__) || defined(__dsPIC33E__) || defined(__PIC24E__)
        #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
            #define MCHP25LC256_CS_TRIS  TRISAbits.TRISA0
            #define MCHP25LC256_CS_LAT   LATAbits.LATA0
        #elif defined(__PIC24FJ256GB110__)
			// This PIM has RD12 rerouted to RG0
            #define MCHP25LC256_CS_TRIS  TRISGbits.TRISG0
            #define MCHP25LC256_CS_LAT   LATGbits.LATG0
        #else
            #define MCHP25LC256_CS_TRIS  TRISDbits.TRISD12
            #define MCHP25LC256_CS_LAT   LATDbits.LATD12
        #endif
    #elif defined(__PIC32MX__)
        #define MCHP25LC256_CS_TRIS  TRISDbits.TRISD12
        #define MCHP25LC256_CS_LAT   LATDbits.LATD12
    #endif

#if defined (USE_SST25VF016) 

	/*********************************************************************
	* SPI Flash Memory on GFX_PICTAIL_V2, GFX_PICTIAL_V3, GFX_PICTAIL_V3e, 
	* PIC24FJ256DA210 Development Board and MEB_BOARD
	*********************************************************************/
	// Set up the signals used to communicate to the SPI Flash device 

    // define the SPI channel to be used
      #if defined (GFX_PICTAIL_LCC)
        #define SST25_SPI_CHANNEL 1
      #elif defined (GFX_PICTAIL_V3) || defined (GFX_PICTAIL_V3E)
        #define SST25_SPI_CHANNEL 2
    #elif defined (PIC24FJ256DA210_DEV_BOARD)    
        #ifdef PIC24FJ256DA210_DEV_BOARD_ENC624J600
            #define SST25_SPI_CHANNEL 1
        #else
            #define SST25_SPI_CHANNEL 2
        #endif
    #elif defined (MEB_BOARD)
        // this is dependent on the Starter Kit used
    	#if defined (PIC32_GP_SK) || defined (PIC32_USB_SK) || defined (dsPIC33E_SK)
            #define SST25_SPI_CHANNEL 2
    	#elif defined (PIC32_ETH_SK)
            #define SST25_SPI_CHANNEL 4
    	#else
    		#error "Please define the starter kit that you are using"
    	#endif
    #endif	

    /* Define all the SPI channels that will be used here.
       These will be used to determine how the SPI Driver (drv_spi)
       will be compiled.
    */
    #if (SST25_SPI_CHANNEL == 1)
        #define SPI_CHANNEL_1_ENABLE
    #elif (SST25_SPI_CHANNEL == 2)
        #define SPI_CHANNEL_2_ENABLE
    #elif (SST25_SPI_CHANNEL == 3)
        #define SPI_CHANNEL_3_ENABLE
    #elif (SST25_SPI_CHANNEL == 4)
        #define SPI_CHANNEL_4_ENABLE
    #endif


    // Chip Select, SCLK, SDI and SDO signals used 
    #if defined (GFX_PICTAIL_V3) || defined (GFX_PICTAIL_V3E) || defined(GFX_PICTAIL_LCC)
        #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
            #define SST25_CS_TRIS   TRISAbits.TRISA8
            #define SST25_CS_LAT    LATAbits.LATA8
            
            #define SST25_SCK_TRIS  TRISCbits.TRISC2
            #define SST25_SDO_TRIS  TRISCbits.TRISC0
            #define SST25_SDI_TRIS  TRISCbits.TRISC1
            
        #else
            #define SST25_CS_TRIS   TRISDbits.TRISD1
            #define SST25_CS_LAT    LATDbits.LATD1
            
            #define SST25_SCK_TRIS  TRISGbits.TRISG6
            #define SST25_SDO_TRIS  TRISGbits.TRISG8
            #define SST25_SDI_TRIS  TRISGbits.TRISG7
            
            #if defined (__dsPIC33E__) || defined(__PIC24E__)
			#define SST25_SCK_LAT  	LATGbits.LATG6
	    	#define SST25_SCK_ANS   ANSELGbits.ANSG6
	    	#define SST25_SDO_ANS   ANSELGbits.ANSG8
	    	#define SST25_SDO_LAT  	LATGbits.LATG8
	        #define SST25_SDI_LAT  	LATGbits.LATG7  
	        #define SST25_SDI_ANS   ANSELGbits.ANSG7       		
    		#else            
    			#define SST25_SDI_ANS   ANSGbits.ANSG7
    		#endif
        #endif
    #elif defined (PIC24FJ256DA210_DEV_BOARD)
    
        #define SST25_CS_TRIS   TRISAbits.TRISA14
        #define SST25_CS_LAT    LATAbits.LATA14
        
        #define SST25_SCK_TRIS  TRISDbits.TRISD8
        #define SST25_SDO_TRIS  TRISBbits.TRISB1
        #define SST25_SDI_TRIS  TRISBbits.TRISB0
        
        #define SST25_SDI_ANS   ANSBbits.ANSB0
        #define SST25_SDO_ANS   ANSBbits.ANSB1
            
    #elif defined (MEB_BOARD)
        
        // this is dependent on the Starter Kit used
	    // define the CPLD SPI selection and chip select     
	    #if defined(__dsPIC33E__) || defined(__PIC24E__)
	    	#if (SST25_SPI_CHANNEL == 2)
		    	#define SPI_FLASH_CHANNEL   CPLD_SPI2
		    	#define SST25_CS_TRIS   TRISGbits.TRISG9    // SPI slave select, Input or Output selection.
				#define SST25_CS_LAT    LATGbits.LATG9      // SPI slave select I/O pin latch.
				#define SST25_CS_ANS    ANSELGbits.ANSG9    // SPI slave select I/O pin analog/digital selection.
				
				#define SST25_SCK_TRIS   TRISGbits.TRISG6    // SPI clock , Input or Output selection.
				#define SST25_SCK_LAT    LATGbits.LATG6      // SPI clock, I/O pin latch.
				#define SST25_SCK_ANS    ANSELGbits.ANSG6    // SPI clock , I/O pin analog/digital selection.
				
				#define SST25_SDO_TRIS   TRISGbits.TRISG8    // SPI data out , Input or Output selection.
				#define SST25_SDO_LAT    LATGbits.LATG8      // SPI data out,  I/O pin latch.
				#define SST25_SDO_ANS    ANSELGbits.ANSG8    // SPI data out, I/O pin analog/digital selection.
				
				#define SST25_SDI_TRIS  TRISGbits.TRISG7	 // SPI data in , Input or Output selection.
				#define SST25_SDI_LAT    LATGbits.LATG7      // SPI data in,  I/O pin latch.
				#define SST25_SDI_ANS    ANSELGbits.ANSG7    // SPI data in, I/O pin analog/digital selection.
			#else
				#error "SPI Channel can't be used for SPI Flash"
			#endif
			
		#else
	    	#if (SST25_SPI_CHANNEL == 2)
		    	#define SST25_CS_TRIS       TRISGbits.TRISG9
			    #define SST25_CS_LAT        LATGbits.LATG9
	    		#define SPI_FLASH_CHANNEL   CPLD_SPI2
		    #elif (SST25_SPI_CHANNEL == 3)
			    #define SST25_CS_TRIS       TRISGbits.TRISG9
			    #define SST25_CS_LAT        LATGbits.LATG9
			    #define SPI_FLASH_CHANNEL   CPLD_SPI2A
	    	#elif (SST25_SPI_CHANNEL == 4)
	    		#define SST25_CS_TRIS       TRISFbits.TRISF12
	    		#define SST25_CS_LAT        LATFbits.LATF12
	    		#define SPI_FLASH_CHANNEL   CPLD_SPI3A
	    	#else
	    		#error "SPI Channel can't be used for SPI Flash"
	    	#endif
	    #endif

    #endif

#endif // #if defined (USE_SST25VF016)


#if defined (USE_M25P80) 

	/*********************************************************************
	* SPI Flash Memory on MIKRO_BOARD
	*********************************************************************/
	// Set up the signals used to communicate to the SPI Flash device 

    // define the SPI channel to be used
    #if defined (MIKRO_BOARD)
		#if defined (__PIC24FJ256GB110__)
		    #define SST25_SPI_CHANNEL 2
        #endif
    #endif

    /* Define all the SPI channels that will be used here.
       These will be used to determine how the SPI Driver (drv_spi)
       will be compiled.
    */
    #if (SST25_SPI_CHANNEL == 1)
        #define SPI_CHANNEL_1_ENABLE
    #elif (SST25_SPI_CHANNEL == 2)
        #define SPI_CHANNEL_2_ENABLE
    #elif (SST25_SPI_CHANNEL == 3)
        #define SPI_CHANNEL_3_ENABLE
    #elif (SST25_SPI_CHANNEL == 4)
        #define SPI_CHANNEL_4_ENABLE
    #endif
	
    #if defined (MIKRO_BOARD)
		#if defined (__PIC24FJ256GB110__)
            #define SST25_CS_TRIS   TRISCbits.TRISC2
            #define SST25_CS_LAT    LATCbits.LATC2
            #define SST25_SCK_TRIS  TRISGbits.TRISG6
            #define SST25_SDO_TRIS  TRISGbits.TRISG8
            #define SST25_SDI_TRIS  TRISGbits.TRISG7
        #endif
    #endif

#endif // #if defined (USE_M25P80)

/*********************************************************************
* HARDWARE PROFILE FOR THE PARALLEL FLASH MEMORY
*********************************************************************/
/*
	These are the hardware settings for parallel flash 
	memory on GFX2 and PIC24FJ256DA210 Development Board 
*/	

#if defined (USE_SST39LF400)
    /* 
        Driver controls the parallel flash interface since it is connected to 
        EPMP in PIC24FJ256DA210 Development Board
    */   
#endif // #if defined (USE_SST39LF400)

#if defined (USE_SST39VF040)
    /* 
        When using GFX_PICTAIL_V2 
    */   
	#if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__) 
		#define SST39_CS_TRIS    TRISAbits.TRISA8
		#define SST39_CS_LAT     LATAbits.LATA8
		#define SST39_A18_TRIS   TRISAbits.TRISA1
		#define SST39_A18_LAT    LATAbits.LATA1
		#define SST39_A17_TRIS   TRISCbits.TRISC5
		#define SST39_A17_LAT    LATCbits.LATC5
		#define SST39_A16_TRIS   TRISCbits.TRISC4
		#define SST39_A16_LAT    LATCbits.LATC4
	#else
		#define SST39_CS_TRIS    TRISDbits.TRISD1
		#define SST39_CS_LAT     LATDbits.LATD1
		#define SST39_A18_TRIS   TRISCbits.TRISC2
		#define SST39_A18_LAT    LATCbits.LATC2
		#define SST39_A17_TRIS   TRISGbits.TRISG15
		#define SST39_A17_LAT    LATGbits.LATG15
		#define SST39_A16_TRIS   TRISGbits.TRISG14
		#define SST39_A16_LAT    LATGbits.LATG14
	#endif

#endif // #if defined (USE_SST39VF040)


/*********************************************************************
* HARDWARE PROFILE FOR THE TIMING CONTROLLER
*********************************************************************/
/*
	Timing Controllers (TCON) are used by some displays.
	The display selected will determine the TCON that will be used
	in the build. 
	When using SSD1926, the TCON is connected through the SSD1926 
	GPIO and SPI transfers is BitBanged on these GPIO ports.
	Refer to SSD1926 implementation for details.
*/
	/*********************************************************************
	* I/Os for the TCON 
	*********************************************************************/

	/* ----------------------------------------- */
	#if defined (PIC24FJ256DA210_DEV_BOARD) 
		#if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E)
	/* ----------------------------------------- */
		
		#define TCON_CS_LAT      LATAbits.LATA0   //_RA0
		#define TCON_CS_TRIS     TRISAbits.TRISA0 //_TRISA0
		#define TCON_CS_DIG()
	    
		#define TCON_SCL_LAT     LATDbits.LATD8   //_RD8
		#define TCON_SCL_TRIS    TRISDbits.TRISD8 //_TRISD8
		#define TCON_SCL_DIG()
	    
		#define TCON_SDO_LAT     LATBbits.LATB1   //_RB1
		#define TCON_SDO_TRIS    TRISBbits.TRISB1 //_TRISB1
		#define TCON_SDO_DIG()   _ANSB1 = 0;
	    
		#define TCON_DC_LAT      LATBbits.LATB0   //_RB0
		#define TCON_DC_TRIS     TRISBbits.TRISB0 //_TRISB0
		#define TCON_DC_DIG()    _ANSB0 = 0;
		
		#endif // #if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E)
	#endif // #if defined (DA210_DEV_BOARD)...

	/* ----------------------------------------- */
	#if defined (GFX_PICTAIL_LCC) 
		#if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E)
	/* ----------------------------------------- */
		
		#define TCON_CS_LAT      LATCbits.LATC2   //_RA0
		#define TCON_CS_TRIS     TRISCbits.TRISC2 //_TRISA0
		#define TCON_CS_DIG()
	    
		#define TCON_SCL_LAT     LATDbits.LATD10   //_RD8
		#define TCON_SCL_TRIS    TRISDbits.TRISD10 //_TRISD8
		#define TCON_SCL_DIG()
	    
		#define TCON_SDO_LAT     LATDbits.LATD0   //_RD0
		#define TCON_SDO_TRIS    TRISDbits.TRISD0 //_TRISB1
		#define TCON_SDO_DIG()   1;
	    
		#define TCON_DC_LAT      LATBbits.LATB3   //_RB0
		#define TCON_DC_TRIS     TRISBbits.TRISB3 //_TRISB0
		#define TCON_DC_DIG()    1;
		
		#endif // #if defined (GFX_USE_DISPLAY_PANEL_TFT_G240320LTSW_118W_E)
	#endif // #if defined (DA210_DEV_BOARD)...


/*********************************************************************
* IPU OPERATION MACROS.
*********************************************************************/
/* ********************************************************************
* These defines the cache areas when using IPU of the Graphics Module. 
* The IPU operation will need two cache areas:
* - for compressed data (GFX_COMPRESSED_DATA_RAM_ADDRESS, 
*   GFX_COMPRESSED_BUFFER_SIZE)
* - for decompressed data (GFX_DECOMPRESSED_DATA_RAM_ADDRESS, 
*   GFX_DECOMPRESSED_BUFFER_SIZE)
* These two areas are not part of the memory that the Display Driver 
* uses for the viewable pixels. These two areas will exclusively be 
* used by the IPU operation to perform the decompression.
* The use of the IPU cache areas assumes that the hardware used
* is the PIC24FJ256DA210 Development Board where the EPMP CS1 is hooked
* up to SRAM and EPMP CS2 is hooked up to a parallel flash memory.
* Make sure that the buffer sizes are word aligned since IPU operates 
* only on WORD aligned addresses.
* Users can derive the size of the two areas based on the output of the
* "Graphics Resource Converter" tool used to generate the hex or C array
* of the compressed images. Please refer to the "Graphics Resource 
* Converter" Help file for details.
* If the compressed image is placed in Parallel Flash, then the
* GFX_COMPRESSED_BUFFER_SIZE is not needed since the IPU module
* can access the compressed data directly.
********************************************************************  */

#if defined (PIC24FJ256DA210_DEV_BOARD)
	#if defined (GFX_EPMP_CS1_BASE_ADDRESS)

		#define GFX_COMPRESSED_BUFFER_SIZE              (13950)
        #define GFX_DECOMPRESSED_BUFFER_SIZE            (19216)
        #define GFX_IPU_TEMP_DATA_TRANSFER_ARRAY_SIZE   (1024)

	#else
		#warning "EPMP CS1 Base Address not defined. If you are using IPU make sure that the GFX_COMPRESSED_DATA_RAM_ADDRESS & GFX_DECOMPRESSED_DATA_RAM_ADDRESS are allocated properly in internal memory."                   
    #endif

#endif //#if defined (PIC24FJ256DA210_DEV_BOARD)

/*********************************************************************
* IOS FOR THE SWITCHES (SIDE BUTTONS)
*********************************************************************/
typedef enum
{
    HW_BUTTON_PRESS = 0,
    HW_BUTTON_RELEASE = 1
}HW_BUTTON_STATE;

#if defined (PIC24FJ256DA210_DEV_BOARD)
    #if defined(__PIC24FJ256DA210__)
        #define HardwareButtonInit()
        #define GetHWButtonProgram()        (PORTEbits.RE9)
        #define GetHWButtonScanDown()       (HW_BUTTON_RELEASE)
        #define GetHWButtonScanUp()         (HW_BUTTON_RELEASE) 
        #define GetHWButtonCR()             (PORTGbits.RG8)
        #define GetHWButtonFocus()          (PORTEbits.RE9)
        #define GetHWButtonLeft()           (PORTGbits.RG8)
        #define GetHWButtonCenter()         (PORTEbits.RE9)
        #define GetHWButtonRight()          (PORTBbits.RB5)
    #endif 
 
#elif defined (MEB_BOARD)
	#if defined(__dsPIC33E__) || defined(__PIC24E__)
		#define HardwareButtonInit()         ANSELBbits.ANSB15 = 0; TRISBbits.TRISB15 = 1;
	    #define GetHWButtonProgram()        (PORTBbits.RB15)
	    #define GetHWButtonScanDown()       (PORTBbits.RB3)
	    #define GetHWButtonScanUp()         (PORTBbits.RB1)  
	    #define GetHWButtonCR()             (PORTBbits.RB15)
	    #define GetHWButtonFocus()          (PORTBbits.RB0 & PORTBbits.RB4)
	#else
	    #define HardwareButtonInit()        (AD1PCFGSET = _AD1PCFG_PCFG1_MASK | _AD1PCFG_PCFG0_MASK | _AD1PCFG_PCFG3_MASK | _AD1PCFG_PCFG4_MASK | _AD1PCFG_PCFG15_MASK,\
	                                         CNPUESET = _CNPUE_CNPUE2_MASK | _CNPUE_CNPUE3_MASK | _CNPUE_CNPUE5_MASK | _CNPUE_CNPUE6_MASK | _CNPUE_CNPUE12_MASK)
	    #define GetHWButtonProgram()        (PORTBbits.RB15)
	    #define GetHWButtonScanDown()       (PORTBbits.RB3)
	    #define GetHWButtonScanUp()         (PORTBbits.RB1)  
	    #define GetHWButtonCR()             (PORTBbits.RB15)
	    #define GetHWButtonFocus()          (PORTBbits.RB0 & PORTBbits.RB4)
	#endif
#elif defined (MIKRO_BOARD)
    #if defined(__PIC24FJ256GB110__)
        #define HardwareButtonInit()
        #define GetHWButtonProgram()        (HW_BUTTON_RELEASE)
        #define GetHWButtonScanDown()       (HW_BUTTON_RELEASE)
        #define GetHWButtonScanUp()         (HW_BUTTON_RELEASE)
        #define GetHWButtonCR()             (HW_BUTTON_RELEASE)
        #define GetHWButtonFocus()          (HW_BUTTON_RELEASE)
    #endif
#else
    #if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
        #define HardwareButtonInit()
        #define GetHWButtonProgram()    (_RA9)
        #define GetHWButtonScanDown()   (_RA9)
        #define GetHWButtonScanUp()		(HW_BUTTON_RELEASE)
        #define GetHWButtonCR()			(HW_BUTTON_RELEASE)
        #define GetHWButtonFocus()  	(HW_BUTTON_RELEASE)
      #elif defined (PIC32_SK) 
        #ifdef USE_16BIT_PMP
            #define HardwareButtonInit()
            #define GetHWButtonProgram()        (HW_BUTTON_RELEASE)
            #define GetHWButtonScanDown()       (HW_BUTTON_RELEASE)
            #define GetHWButtonScanUp()         (HW_BUTTON_RELEASE)
            #define GetHWButtonCR()             (HW_BUTTON_RELEASE)
            #define GetHWButtonFocus()          (HW_BUTTON_RELEASE)
        #else
            #define HardwareButtonInit()        (CNPUESET = _CNPUE_CNPUE16_MASK | _CNPUE_CNPUE15_MASK | _CNPUE_CNPUE19_MASK)
            #define GetHWButtonProgram()        (PORTDbits.RD6)
            #define GetHWButtonScanDown()       (HW_BUTTON_RELEASE)
            #define GetHWButtonScanUp()         (HW_BUTTON_RELEASE)  
            #define GetHWButtonCR()             (PORTDbits.RD6)
            #define GetHWButtonFocus()          (PORTDbits.RD7 & PORTDbits.RD13)
        #endif
      #else
        #define HardwareButtonInit()
        #ifdef USE_16BIT_PMP
            #define GetHWButtonProgram()        (PORTAbits.RA7)
            #define GetHWButtonScanDown()       (HW_BUTTON_RELEASE)
            #define GetHWButtonScanUp()         (HW_BUTTON_RELEASE)
            #define GetHWButtonCR()             (HW_BUTTON_RELEASE)
            #define GetHWButtonFocus()          (HW_BUTTON_RELEASE)
        #else
            #define GetHWButtonProgram()        (PORTDbits.RD7)
            #define GetHWButtonScanDown()       (PORTDbits.RD13)
            #define GetHWButtonScanUp()         (PORTAbits.RA7)  
            #define GetHWButtonCR()             (PORTDbits.RD6)
            #define GetHWButtonFocus()          (PORTDbits.RD7)
        #endif
    #endif
#endif 


/*********************************************************************
* IOS FOR THE UART
*********************************************************************/
#if defined(__dsPIC33FJ128GP804__) || defined(__PIC24HJ128GP504__)
    #define TX_TRIS TRISCbits.TRISC1
    #define RX_TRIS TRISCbits.TRISC0
#elif defined(__PIC24FJ256DA210__)    
    #define TX_TRIS TRISFbits.TRISF3
    #define RX_TRIS TRISDbits.TRISD0
#else
    #define TX_TRIS TRISFbits.TRISF5
    #define RX_TRIS TRISFbits.TRISF4
#endif

/*********************************************************************
* RTCC DEFAULT INITIALIZATION (these are values to initialize the RTCC
*********************************************************************/
#define RTCC_DEFAULT_DAY        02      // 2nd
#define RTCC_DEFAULT_MONTH      06      // June
#define RTCC_DEFAULT_YEAR       11      // 2011
#define RTCC_DEFAULT_WEEKDAY    05      // Friday
#define RTCC_DEFAULT_HOUR       10      // 10:10:01
#define RTCC_DEFAULT_MINUTE     10
#define RTCC_DEFAULT_SECOND     01

#if defined (MEB_BOARD)

	#if defined(__PIC32MX__)
		#include <plib.h>
		
		/*********************************************************************
		* Configuration for the CPLD
		*********************************************************************/
		#ifdef USE_16BIT_PMP
		#define GRAPHICS_HW_CONFIG     CPLD_GFX_CONFIG_16BIT
		#else
		#define GRAPHICS_HW_CONFIG     CPLD_GFX_CONFIG_8BIT
		#endif
		
		/*********************************************************************
		* MMB LEDs
		*********************************************************************/
		typedef enum
		{
		    LED_2,
		    LED_3,
		    LED_4,
		    LED_5,
		    LED_10
		}MMB_LED;
		
		extern inline void __attribute__((always_inline)) SetLEDDirection(void)
		{
		   PORTSetPinsDigitalOut(IOPORT_D, (BIT_1 | BIT_2 | BIT_3));
		    PORTSetPinsDigitalOut(IOPORT_C, (BIT_1 | BIT_2));
		}
		
		extern inline void __attribute__((always_inline)) TurnLEDOn(MMB_LED led)
		{
		    if(led == LED_2)
		      PORTSetBits(IOPORT_D, BIT_1);
		
		    if(led == LED_3)
		      PORTSetBits(IOPORT_D, BIT_2);
		
		    if(led == LED_4)
		      PORTSetBits(IOPORT_D, BIT_3);
		
		    if(led == LED_5)
		      PORTSetBits(IOPORT_C, BIT_1);
		
		    if(led == LED_10)
		      PORTSetBits(IOPORT_C, BIT_2);
		
		}
		
		extern inline void __attribute__((always_inline)) TurnLEDOff(MMB_LED led)
		{
		    if(led == LED_2)
		      PORTClearBits(IOPORT_D, BIT_1);
		
		    if(led == LED_3)
		      PORTClearBits(IOPORT_D, BIT_2);
		
		    if(led == LED_4)
		      PORTClearBits(IOPORT_D, BIT_3);
		
		    if(led == LED_5)
		      PORTClearBits(IOPORT_C, BIT_1);
		
		    if(led == LED_10)
		      PORTClearBits(IOPORT_C, BIT_2);
		
		}
		
		extern inline void __attribute__((always_inline)) ToggleLED(MMB_LED led)
		{
		    if(led == LED_2)
		      PORTToggleBits(IOPORT_D, BIT_1);
		
		    if(led == LED_3)
		      PORTToggleBits(IOPORT_D, BIT_2);
		
		    if(led == LED_4)
		      PORTToggleBits(IOPORT_D, BIT_3);
		
		    if(led == LED_5)
		      PORTToggleBits(IOPORT_C, BIT_1);
		
		    if(led == LED_10)
		      PORTToggleBits(IOPORT_C, BIT_2);
		
		}
		
		extern inline void __attribute__((always_inline)) TurnLEDAllOn(void)
		{
		      PORTSetBits(IOPORT_D, BIT_1);
		      PORTSetBits(IOPORT_D, BIT_2);
		      PORTSetBits(IOPORT_D, BIT_3);
		      PORTSetBits(IOPORT_C, BIT_1);
		      PORTSetBits(IOPORT_C, BIT_2);
		
		}
		
		extern inline void __attribute__((always_inline)) TurnLEDAllOff(void)
		{
		      PORTClearBits(IOPORT_D, BIT_1);
		      PORTClearBits(IOPORT_D, BIT_2);
		      PORTClearBits(IOPORT_D, BIT_3);
		      PORTClearBits(IOPORT_C, BIT_1);
		      PORTClearBits(IOPORT_C, BIT_2);
		
		}
	#endif // #ifdef (__PIC32MX__)
	
	#if defined(__dsPIC33E__) || defined (__PIC24E__)
	
		/*********************************************************************
		* Configuration for the CPLD
		*********************************************************************/
		#ifdef USE_16BIT_PMP
		#define GRAPHICS_HW_CONFIG     CPLD_GFX_CONFIG_16BIT
		#else
		#define GRAPHICS_HW_CONFIG     CPLD_GFX_CONFIG_8BIT
		#endif
		
		
		#if defined (USE_XC2C64A)
			// If using the CPLD.
			 #define BIT_15                       (1 << 15)
			 #define BIT_14                       (1 << 14)
			 #define BIT_13                       (1 << 13)
			 #define BIT_12                       (1 << 12)
			 #define BIT_11                       (1 << 11)
			 #define BIT_10                       (1 << 10)
			 #define BIT_9                        (1 << 9)
			 #define BIT_8                        (1 << 8)
			 #define BIT_7                        (1 << 7)
			 #define BIT_6                        (1 << 6)
			 #define BIT_5                        (1 << 5)
			 #define BIT_4                        (1 << 4)
			 #define BIT_3                        (1 << 3)
			 #define BIT_2                        (1 << 2)
			 #define BIT_1                        (1 << 1)
			 #define BIT_0                        (1 << 0)
			 
			typedef	unsigned char		__uint8_t;
			#define	uint8_t		__uint8_t
		
			 typedef struct
			{
				volatile unsigned int	tris;
				volatile unsigned int	port;					
				volatile unsigned int	lat;					
				volatile unsigned int	odc;
				volatile unsigned int	cnen;
				volatile unsigned int	cnpu;
				volatile unsigned int	cnpd;
				volatile unsigned int	ansel;					
			}PortRegMap;	// port registers layout
				
			#define IOPORT_A (unsigned int*)&TRISA
			#define IOPORT_B (unsigned int*)&TRISB
			#define IOPORT_C (unsigned int*)&TRISC
			#define IOPORT_D (unsigned int*)&TRISD
			#define IOPORT_E (unsigned int*)&TRISE
			#define IOPORT_F (unsigned int*)&TRISF 
			#define IOPORT_G (unsigned int*)&TRISG
		
			
			extern inline void __attribute__((always_inline)) PORTSetBits(unsigned int *regBase, unsigned int bits)
			{
				PortRegMap *PortMap = (PortRegMap*)regBase;
				PortMap->lat |= bits;			
			}	
			
			extern inline void __attribute__((always_inline)) PORTClearBits(unsigned int *regBase, unsigned int bits)
			{
				PortRegMap *PortMap = (PortRegMap*)regBase;
				PortMap->lat &= ~bits;		
					
			}	
			
			
			extern inline unsigned int __attribute__((always_inline)) PORTReadBits(unsigned int *regBase, unsigned int bits)
			{
				PortRegMap *PortMap = (PortRegMap*)regBase;
				return(PortMap->lat & bits);
			}	
			
			extern inline void __attribute__((always_inline)) PORTSetPinsDigitalOut(unsigned int *regBase, unsigned int bits)
			{
				PortRegMap *PortMap = (PortRegMap*)regBase;
				PortMap->tris &= ~bits;								
			}			
			
					
		
		#endif
	
	#endif // #ifdef (__dsPIC33E__) || (__PIC24E__)
	
	
#endif // #ifdef (MEB_BOARD)

/*********************************************************************
 *********************************************************************
 * IOS FOR THE SD Card INTERFACE
 * Used only when Demos using SD Card is enabled
 * For PIC24FJ256GB110 Use SPI1 only. SPI2 pins in PICtail Plus is
 * used by USB.
 * For PIC24FJ256GA110 Use SPI2 only. SPI2 pins in PICtail Plus is
 * used by USB.
 * For PIC32MX360F512L Use SPI1 only. 
 ********************************************************************* 
*********************************************************************/
/* SD Card definitions: Change these to fit your application when using
   an SD-card-based physical layer                                   */
	#if defined (__32MX460F512L__)

		//SPI Configuration
		#define SPI_START_CFG_1 (PRI_PRESCAL_64_1 | SEC_PRESCAL_8_1 | MASTER_ENABLE_ON | SPI_CKE_ON | SPI_SMP_ON)
		#define SPI_START_CFG_2 (SPI_ENABLE)
		// Define the SPI frequency
		#define SPI_FREQUENCY   (20000000)

		// Description: SD-SPI Chip Select Output bit
		#define SD_CS   PORTBbits.RB1
		// Description: SD-SPI Chip Select TRIS bit
		#define SD_CS_TRIS  TRISBbits.TRISB1
		// Description: SD-SPI Card Detect Input bit
		#define SD_CD   PORTFbits.RF0
		// Description: SD-SPI Card Detect TRIS bit
		#define SD_CD_TRIS  TRISFbits.TRISF0
		// Description: SD-SPI Write Protect Check Input bit
		#define SD_WE   PORTFbits.RF1
		// Description: SD-SPI Write Protect Check TRIS bit
		#define SD_WE_TRIS  TRISFbits.TRISF1

		// Description: The main SPI control register
		#define SPICON1 SPI1CON
		// Description: The SPI status register
		#define SPISTAT SPI1STAT
		// Description: The SPI Buffer
		#define SPIBUF  SPI1BUF
		// Description: The receive buffer full bit in the SPI status register
		#define SPISTAT_RBF SPI1STATbits.SPIRBF
		// Description: The bitwise define for the SPI control register (i.e. _____bits)
		#define SPICON1bits SPI1CONbits
		// Description: The bitwise define for the SPI status register (i.e. _____bits)
		#define SPISTATbits SPI1STATbits
		// Description: The enable bit for the SPI module
		#define SPIENABLE   SPICON1bits.ON
		// Description: The definition for the SPI baud rate generator register (PIC32)
		#define SPIBRG  SPI1BRG

		// Tris pins for SCK/SDI/SDO lines
		// Description: The TRIS bit for the SCK pin
		#define SPICLOCK TRISDbits.TRISD10
		// Description: The TRIS bit for the SDI pin
		#define SPIIN   TRISCbits.TRISC4
		// Description: The TRIS bit for the SDO pin
		#define SPIOUT  TRISDbits.TRISD0
		
		//SPI library functions
		#define putcSPI                     putcSPI1
		#define getcSPI                     getcSPI1
		#define OpenSPI(config1, config2)   OpenSPI1(config1, config2)

	#elif defined (__32MX360F512L__)
		//SPI Configuration
		#define SPI_START_CFG_1     (PRI_PRESCAL_64_1 | SEC_PRESCAL_8_1 | MASTER_ENABLE_ON | SPI_CKE_ON | SPI_SMP_ON)
		#define SPI_START_CFG_2     (SPI_ENABLE)

		// Define the SPI frequency
		#define SPI_FREQUENCY		(20000000)

		// Description: SD-SPI Chip Select Output bit
		#define SD_CS               PORTBbits.RB1
		// Description: SD-SPI Chip Select TRIS bit
		#define SD_CS_TRIS          TRISBbits.TRISB1
	            
		// Description: SD-SPI Card Detect Input bit
		#define SD_CD               PORTFbits.RF0
		// Description: SD-SPI Card Detect TRIS bit
		#define SD_CD_TRIS          TRISFbits.TRISF0

		// Description: SD-SPI Write Protect Check Input bit
		#define SD_WE               PORTFbits.RF1
		// Description: SD-SPI Write Protect Check TRIS bit
		#define SD_WE_TRIS          TRISFbits.TRISF1
	                   
		// Description: The main SPI control register
		#define SPICON1             SPI1CON
		// Description: The SPI status register
		#define SPISTAT             SPI1STAT
		// Description: The SPI Buffer
		#define SPIBUF              SPI1BUF
		// Description: The receive buffer full bit in the SPI status register
		#define SPISTAT_RBF         SPI1STATbits.SPIRBF
		// Description: The bitwise define for the SPI control register (i.e. _____bits)
		#define SPICON1bits         SPI1CONbits
		// Description: The bitwise define for the SPI status register (i.e. _____bits)
		#define SPISTATbits         SPI1STATbits
		// Description: The enable bit for the SPI module
		#define SPIENABLE           SPICON1bits.ON
		// Description: The definition for the SPI baud rate generator register (PIC32)
		#define SPIBRG			    SPI1BRG

		// Tris pins for SCK/SDI/SDO lines
		// Description: The TRIS bit for the SCK pin
		
		#define SPICLOCK            TRISFbits.TRISF6
		// Description: The TRIS bit for the SDI pin
		#define SPIIN               TRISFbits.TRISF7
		// Description: The TRIS bit for the SDO pin
		#define SPIOUT              TRISFbits.TRISF8
		//SPI library functions
		#define putcSPI             putcSPI1
		#define getcSPI             getcSPI1
		#define OpenSPI(config1, config2)   OpenSPI1(config1, config2)

		// If SPI2 on PICTail Plus Port is used use this:
		/*
		// Description: SD-SPI Chip Select Output bit
		#define SD_CS               PORTBbits.RB9
		// Description: SD-SPI Chip Select TRIS bit
		#define SD_CS_TRIS          TRISBbits.TRISB9
	    
		// Description: SD-SPI Card Detect Input bit
		#define SD_CD               PORTGbits.RG0
		// Description: SD-SPI Card Detect TRIS bit
		#define SD_CD_TRIS          TRISGbits.TRISG0

		// Description: SD-SPI Write Protect Check Input bit
		#define SD_WE               PORTGbits.RG1
		// Description: SD-SPI Write Protect Check TRIS bit
		#define SD_WE_TRIS          TRISGbits.TRISG1
	    
		// Description: The main SPI control register
		#define SPICON1             SPI2CON
		// Description: The SPI status register
		#define SPISTAT             SPI2STAT
		// Description: The SPI Buffer
		#define SPIBUF              SPI2BUF
		// Description: The receive buffer full bit in the SPI status register
		#define SPISTAT_RBF         SPI2STATbits.SPIRBF
		// Description: The bitwise define for the SPI control register (i.e. _____bits)
		#define SPICON1bits         SPI2CONbits
		// Description: The bitwise define for the SPI status register (i.e. _____bits)
		#define SPISTATbits         SPI2STATbits
		// Description: The enable bit for the SPI module
		#define SPIENABLE           SPI2CONbits.ON
		// Description: The definition for the SPI baud rate generator register (PIC32)
		#define SPIBRG			    SPI2BRG

		// Tris pins for SCK/SDI/SDO lines

		// Description: The TRIS bit for the SCK pin
		#define SPICLOCK            TRISGbits.TRISG6
		// Description: The TRIS bit for the SDI pin
		#define SPIIN               TRISGbits.TRISG7
		// Description: The TRIS bit for the SDO pin
		#define SPIOUT              TRISGbits.TRISG8
		//SPI library functions
		#define putcSPI             putcSPI2
		#define getcSPI             getcSPI2
		#define OpenSPI(config1, config2)   OpenSPI2(config1, config2)

		*/

	#elif defined (__PIC24FJ256DA210__)

		// Description: SD-SPI Chip Select Output bit
		#define SD_CS   PORTGbits.RG6
		// Description: SD-SPI Chip Select TRIS bit
		#define SD_CS_TRIS  TRISGbits.TRISG6
		// Description: SD-SPI Card Detect Input bit
		#define SD_CD   PORTAbits.RA15
		// Description: SD-SPI Card Detect TRIS bit
		#define SD_CD_TRIS  TRISAbits.TRISA15
		// Description: SD-SPI Write Protect Check Input bit
		#define SD_WE   PORTAbits.RA7
		// Description: SD-SPI Write Protect Check TRIS bit
		#define SD_WE_TRIS  TRISAbits.TRISA7

		// Registers for the SPI module you want to use
		// Description: The main SPI control register
		#define SPICON1 SPI1CON1
		// Description: The SPI status register
		#define SPISTAT SPI1STAT
		// Description: The SPI Buffer
		#define SPIBUF  SPI1BUF
		// Description: The receive buffer full bit in the SPI status register
		#define SPISTAT_RBF SPI1STATbits.SPIRBF
		// Description: The bitwise define for the SPI control register (i.e. _____bits)
		#define SPICON1bits SPI1CON1bits
		// Description: The bitwise define for the SPI status register (i.e. _____bits)
		#define SPISTATbits SPI1STATbits
		// Description: The enable bit for the SPI module
		#define SPIENABLE   SPISTATbits.SPIEN

		// Tris pins for SCK/SDI/SDO lines
		// for (PIC24FJ256GB110 SPI 1)
		// Description: The TRIS bit for the SCK pin
		#define SPICLOCK    TRISDbits.TRISD8

		// Description: The TRIS bit for the SDI pin
		#define SPIIN   TRISBbits.TRISB1

		// Description: The TRIS bit for the SDO pin
		#define SPIOUT  TRISBbits.TRISB0

	#elif defined (__PIC24FJ256GB110__) || defined (__PIC24FJ256GB210__)
		
		// Description: SD-SPI Chip Select Output bit
		#define SD_CS   PORTBbits.RB1
		// Description: SD-SPI Chip Select TRIS bit
		#define SD_CS_TRIS  TRISBbits.TRISB1
		// Description: SD-SPI Card Detect Input bit
		#define SD_CD   PORTFbits.RF0
		// Description: SD-SPI Card Detect TRIS bit
		#define SD_CD_TRIS  TRISFbits.TRISF0
		// Description: SD-SPI Write Protect Check Input bit
		#define SD_WE   PORTFbits.RF1
		// Description: SD-SPI Write Protect Check TRIS bit
		#define SD_WE_TRIS  TRISFbits.TRISF1
		
		// Registers for the SPI module you want to use
		// Description: The main SPI control register
		#define SPICON1 SPI1CON1
		// Description: The SPI status register
		#define SPISTAT SPI1STAT
		// Description: The SPI Buffer
		#define SPIBUF  SPI1BUF
		// Description: The receive buffer full bit in the SPI status register
		#define SPISTAT_RBF SPI1STATbits.SPIRBF
		// Description: The bitwise define for the SPI control register (i.e. _____bits)
		#define SPICON1bits SPI1CON1bits
		// Description: The bitwise define for the SPI status register (i.e. _____bits)
		#define SPISTATbits SPI1STATbits
		// Description: The enable bit for the SPI module
		#define SPIENABLE   SPISTATbits.SPIEN

		// Tris pins for SCK/SDI/SDO lines
		// for (PIC24FJ256GB110 SPI 1)
		// Description: The TRIS bit for the SCK pin
		#define SPICLOCK    TRISBbits.TRISB0

		// Description: The TRIS bit for the SDI pin
		#define SPIIN   TRISDbits.TRISD2

		// Description: The TRIS bit for the SDO pin
		#define SPIOUT  TRISFbits.TRISF8

	#elif defined (__PIC24FJ256GA110__)
		// Description: SD-SPI Chip Select Output bit
		#define SD_CS               PORTBbits.RB9
		// Description: SD-SPI Chip Select TRIS bit
		#define SD_CS_TRIS          TRISBbits.TRISB9
		        
		// Description: SD-SPI Card Detect Input bit
		#define SD_CD               PORTGbits.RG0
		// Description: SD-SPI Card Detect TRIS bit
		#define SD_CD_TRIS          TRISGbits.TRISG0
		        
		// Description: SD-SPI Write Protect Check Input bit
		#define SD_WE               PORTGbits.RG1
		// Description: SD-SPI Write Protect Check TRIS bit
		#define SD_WE_TRIS          TRISGbits.TRISG1	    
		
		// Registers for the SPI module you want to use

		// Description: The main SPI control register
		#define SPICON1             SPI2CON1
		// Description: The SPI status register
		#define SPISTAT             SPI2STAT
		// Description: The SPI Buffer
		#define SPIBUF              SPI2BUF
		// Description: The receive buffer full bit in the SPI status register
		#define SPISTAT_RBF         SPI2STATbits.SPIRBF
		// Description: The bitwise define for the SPI control register (i.e. _____bits)
		#define SPICON1bits         SPI2CON1bits
		// Description: The bitwise define for the SPI status register (i.e. _____bits)
		#define SPISTATbits         SPI2STATbits
		// Description: The enable bit for the SPI module
		#define SPIENABLE           SPISTATbits.SPIEN

		// Tris pins for SCK/SDI/SDO lines
		// for (PIC24FJ256GA110 SPI 2)
		// Description: The TRIS bit for the SCK pin 
		#define SPICLOCK            TRISGbits.TRISG6
		// Description: The TRIS bit for the SDI pin
		#define SPIIN               TRISGbits.TRISG7
		//Description: The TRIS bit for the SDO pin
		#define SPIOUT              TRISGbits.TRISG8

	#endif

	// Will generate an error if the clock speed is too low to interface to the card
	#if (GetSystemClock() < 100000)
		#error Clock speed must exceed 100 kHz
	#endif



#endif // __HARDWARE_PROFILE_H



