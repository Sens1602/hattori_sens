/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        ElevatorDemo.c
 * Dependencies:    ElevatorDemo.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30 V3.00, MPLAB C32
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
 * Author               Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * PAT					07/27/10	...
 *****************************************************************************/
#include "ElevatorDemo.h"

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

/////////////////////////////////////////////////////////////////////////////
//                            LOCAL PROTOTYPES
/////////////////////////////////////////////////////////////////////////////
void 			NumberToString(WORD Value, XCHAR *pText, BYTE NoOfDigits, BYTE DotPos);
void 			CreateError(char* string);

/////////////////////////////////////////////////////////////////////////////
//                            IMAGES USED
/////////////////////////////////////////////////////////////////////////////
extern const IMAGE_EXTERNAL flower16bitIPU;
extern const IMAGE_EXTERNAL flower8bitIPU;
extern const IMAGE_EXTERNAL flower4bitIPU;
extern const IMAGE_EXTERNAL flower1bitIPU;

extern const IMAGE_FLASH flower16bit;
extern const IMAGE_FLASH flower8bit;

extern const IMAGE_EXTERNAL TestImageIPU;
extern const IMAGE_FLASH    TestImageIPUInternal1, TestImageIPUInternal2;


// Glucose Demo Data
extern const IMAGE_EXTERNAL background;
extern const IMAGE_EXTERNAL glucose1210;
extern const IMAGE_EXTERNAL glucose1210_y;
extern const IMAGE_EXTERNAL databook1210;
extern const IMAGE_EXTERNAL databook1210_y;
extern const IMAGE_EXTERNAL graphic1210;
extern const IMAGE_EXTERNAL graphic1210_y;
extern const IMAGE_EXTERNAL setting1210;
extern const IMAGE_EXTERNAL setting1210_y;

/////////////////////////////////////////////////////////////////////////////
//                            MACROS USED
/////////////////////////////////////////////////////////////////////////////
#define INT_FLASH_IMAGES_MAX 	2
#define EXT_FLASH_IMAGES_MAX 	5
#define IMAGES_COUNT_MAX		7
#define MODEMAX					3



#define CTRLBTN_HEIGHT		36
#define TOP_MARGIN			(20)
#define BOTTOM_MARGIN		(36)
#define VERTICAL_AREA		(GetMaxY()- TOP_MARGIN - BOTTOM_MARGIN)
#define ICON_WIDTH          (101)
#define ICON_HEIGHT         (100)
#define ICON_COLUMNSNUM     2
#define ICON_ROWSNUM        2
#define ICON_XINDENT        ((GetMaxX() - ICON_COLUMNSNUM * ICON_WIDTH) / (ICON_COLUMNSNUM + 1))
#define ICON_YINDENT        ((VERTICAL_AREA - (ICON_ROWSNUM * ICON_HEIGHT)) / (ICON_ROWSNUM + 1))
#define IconTop(row)        (((row + 1) * ICON_YINDENT) + (row * ICON_HEIGHT) + TOP_MARGIN)
#define IconBottom(row)     ((row + 1) * (ICON_YINDENT + ICON_HEIGHT) + TOP_MARGIN)
#define IconLeft(column)    (((column + 1) * ICON_XINDENT) + (column * ICON_WIDTH))
#define IconRight(column)   ((column + 1) * (ICON_XINDENT + ICON_WIDTH))






/////////////////////////////////////////////////////////////////////////////
//                                  MAIN
/////////////////////////////////////////////////////////////////////////////

/* */
int main(void)
{
	WORD width, height, i, bppMode;
	WORD mode;
	char msgString[50], *pSrcStr;
	char intString[] = "Internal";
	char extString[] = "External";

	void *pImage[7] = {
					   (void*)&TestImageIPUInternal1, (void*)&TestImageIPUInternal2, (void*)&TestImageIPU, 
//					   (void*)&TestImageIPU, (void*)&TestImageIPU, (void*)&TestImageIPU, 
//					   (void*)&flower16bit, (void*)&flower8bit, (void*)&flower4bitIPU, (void*)&flower1bitIPU };
					   (void*)&flower16bitIPU, (void*)&flower8bitIPU, (void*)&flower4bitIPU, (void*)&flower1bitIPU };
//					   (void*)&TestImageIPU, (void*)&TestImageIPU, (void*)&TestImageIPU, (void*)&TestImageIPU };

	
	/////////////////////////////////////////////////
		
//	WORD arrowWidth, arrowHeight, stringWidth, stringHeight;
//	WORD arrowXPos, arrowYPos, stringXPos, stringYPos;
//	WORD dir, updateStatus, temp;
//	WORD floor, i, adjust;
//	XCHAR currentFloor[4] = {0,0,0,0};
//	void *pArrowImage, *pFontUsed;
	
	WORD EPMPSFRTemp[12];
    
     #if defined(PIC24FJ256DA210_DEV_BOARD)
    
    _ANSG8 = 0; /* S1 */
    _ANSE9 = 0; /* S2 */
    _ANSB5 = 0; /* S3 */
        
    #endif
    
    /////////////////////////////////////////////////////////////////////////////
	/* =============================================== */
	// Before Anything else, let's check if the 		
	// parallel flash is accessible 
	/* =============================================== */

	// before anything else let's check if the parallel flash is accessible 
	// check if we can read the Product ID ( note that this is specific to SST39LF400A or SST39VF400A)
	
	SST39LF400Init(EPMPSFRTemp);
	if (SST39LF400CheckID() == 0)
	{
	    InitGraph();                      	// initialize graphics library &
		CreateError("Parallel Flash is not accessible");
	}	
	SST39LF400DeInit(EPMPSFRTemp);

	/* =============================================== */

    InitGraph();                      	// initialize graphics library &
    HardwareButtonInit();           	// Initialize the hardware buttons

	SetFont((void*)&GOLFontDefault);	// use the default font
	
	// check if programming is prompted    
    if(GetHWButtonDown() == HW_BUTTON_PRESS)
    {
	    SetColor(BRIGHTRED);
	    while(!OutTextXY(0,0, "Entering Parallel Flash Programming"));
	    
    	while(GetHWButtonDown() == HW_BUTTON_PRESS);
   
	    // The ProgramFlash() function will not return. 
	    // Application must be reset after programming.
	    ProgramFlash();
	} 
	
	
	// glocuse demo
	PutImage(0,0,(void *) &background, 1);
	
	PutImage(IconLeft(0),IconTop(0),(void *) &glucose1210, 1);
	PutImage(IconLeft(1),IconTop(0),(void *) &databook1210, 1);
	PutImage(IconLeft(0),IconTop(1),(void *) &graphic1210, 1);
	PutImage(IconLeft(1),IconTop(1),(void *) &setting1210, 1);
	
	
	while(1);
	
	
	/* mode is used to display the different demo modes
		0 - display compressed images for IPU decompression
		1 - display characters using the CHRGPU
		2 - display some primitives and composite shapes using RCCGPU
	*/
	mode = 0;
	while(1)
	{

#if 1	
		// display all images from Iternal Flash
		for(mode = 0; mode < MODEMAX; mode++)
		{
			if (mode == 0)
			{

				/*  //////////////////////////////////////////////////////////////////////////
				
					Showing an image stored in the internal flash but is IPU compressed.
					The process to display it to the screen will need two buffers:
					1. #define GFX_COMPRESSED_BUFFER_SIZE    (46294)
					2. #define GFX_DECOMPRESSED_BUFFER_SIZE  (153606) 
					The GFX_COMPRESSED_BUFFER_SIZE is taken from the largest compressed data.
					There are two main sources of compressed images.
					1. internal flash (see DAFeaturesDataInternal.h)
					2. parallel flash hooked up on the PIC24FJ256DA210 EPMP  
					   (see DAFeaturesData.h)
					Only the DAFeaturesDataInternal.h data is used since the compressed data 
					in the parallel flash will not need an compressed buffer. The reason
					is that, the IPU module can access the compressed data directly.
					The compressed data in flash has to be transferred to EDS memory since
					only EDS area is accessible by the Graphics Module.
					
					Both the compressed data from internal and external parallel flash will
					need the GFX_DECOMPRESSED_BUFFER_SIZE to be initialized. Again the value
					used will depend on the largest decompressed data (image).
					From the two sources (again see the header files for the two sources 
					of images) the largest is used.
					
					//////////////////////////////////////////////////////////////////////////
				*/
				
				// show the images from the internal flash
				for (i = 0; i < IMAGES_COUNT_MAX; i++)
				{
					
					// set the source if internal flash or external parallel flash
					if ((*((SHORT *)pImage[i]) & EXTERNAL) == EXTERNAL)
						pSrcStr = extString;
					else	
						pSrcStr = intString;
					
					// set the bpp mode: note that this switch is based on the sequence 
					// of the images in the array (see pImage[] array declaration)
					switch (i)
					{
						case 0:
						case 1:
						case 2:
						case 3:
							bppMode = 16;
							break;
						case 4:
							bppMode = 8;
							break;
						case 5:
							bppMode = 4;
							break;
						case 6:
							bppMode = 1;
							break;
						default:
							break;
					}			
					sprintf(msgString, "Compressed Image for IPU: %d bpp, %s", bppMode, pSrcStr);
					
					// clear the screen
					SetColor(BLACK);
					ClearDevice();
	
					// get image dimensions
			        width = (GetImageWidth((void *) pImage[i]));
	       			height = (GetImageHeight((void *) pImage[i]));
					
					// display the image
				    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) pImage[i], 1);
					
					// show the caption
					SetColor(WHITE);
					while(!OutTextXY(0,0, msgString));
					DelayMs(DEMODELAY);
					
				}

				
			}
			else if (mode == 1)
			{
				
			}
			else if (mode == 2)
			{
				
			}			
				
			
		}	
				
#endif
//        width = (GetImageWidth((void *) &TestImageIPUInternal1)) << 1;
//        height = (GetImageHeight((void *) &TestImageIPUInternal1)) << 1;
//        width = (GetImageWidth((void *) &TestImageIPUInternal1));
//        height = (GetImageHeight((void *) &TestImageIPUInternal1));

//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &TestImageIPUInternal1, 1);
	    
//		while(1);	    
	    
//
//		SetColor(WHITE);
//		while(!OutTextXY(0,0,"IPU Compressed Image 16 bpp, Internal"));
//		DelayMs(DEMODELAY);
//
//		SetColor(BLACK);
//		ClearDevice();
//
//        //width = (GetImageWidth((void *) &TestImageIPUInternal2)) << 1;
//        //height = (GetImageHeight((void *) &TestImageIPUInternal2)) << 1;
//
//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &TestImageIPUInternal2, 1);
//
//		SetColor(WHITE);
//		while(!OutTextXY(0,0,"IPU Compressed Image 16 bpp, Internal"));
//		DelayMs(DEMODELAY);
//	
//		SetColor(BLACK);
//		ClearDevice();
//
//        width = GetImageWidth((void *) &TestImageIPU);
//        height = GetImageHeight((void *) &TestImageIPU);
//
//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &TestImageIPU, 1);
//
//		SetColor(WHITE);
//		while(!OutTextXY(0,0,"IPU Compressed Image 16 bpp, External"));
//		DelayMs(DEMODELAY);
//
//        width = GetImageWidth((void *) &flower16bitIPU);
//        height = GetImageHeight((void *) &flower16bitIPU);
//
//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower16bitIPU, 1);
//		DelayMs(DEMODELAY);

//		SetColor(BLACK);
//		ClearDevice();
//		SetColor(WHITE);
//		while(!OutTextXY(0,0,"IPU Compressed Image 8 bpp, External"));
//
//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower8bitIPU, 1);
//		DelayMs(DEMODELAY);
//
//		SetColor(BLACK);
//		ClearDevice();
//		SetColor(WHITE);
//		while(!OutTextXY(0,0,"IPU Compressed Image 4 bpp, External"));
//
//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower4bitIPU, 1);
//		DelayMs(DEMODELAY);
//
//		SetColor(BLACK);
//		ClearDevice();
//		SetColor(WHITE);
//		while(!OutTextXY(0,0,"IPU Compressed Image 1 bpp, External"));


//	    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower1bitIPU, 1);
//		DelayMs(DEMODELAY);
//		
//		for(i=0;i<10;i++)
//		{
//		    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower16bitIPU, 1);
//			DelayMs(100);
//		    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower8bitIPU, 1);
//			DelayMs(100);
//		    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower4bitIPU, 1);
//			DelayMs(100);
//		    PutImage((GetMaxX()-width)>>1, (GetMaxY()-height)>>1, (void *) &flower1bitIPU, 1);
//			DelayMs(100);
//		}	


#if 0

		// this button selects elevator movement
	    if(GetHWButtonDown() == HW_BUTTON_PRESS)
	    {
		    dir = ELEVATOR_GOINGDOWN;
		    updateStatus = 1;
		} 
	    if(GetHWButtonUp() == HW_BUTTON_PRESS)
	    {
		    dir = ELEVATOR_GOINGUP;
		    updateStatus = 1;
		} 

	    if (updateStatus)
	    {
		    /* ******************************************* */
			// render the status information		    
		    /* ******************************************* */
			// render the background first
			while(!MoveWindow(Background.address, GFX_DISPLAY_BUFFER_START_ADDRESS, 
				  	  (STATUSSY * (DWORD)DISP_HOR_RESOLUTION) + STATUSSX + 3,
				  	  (STATUSSY * (DWORD)DISP_HOR_RESOLUTION) + STATUSSX, 
				  	  RCC_SRC_ADDR_DISCONTINUOUS, RCC_DEST_ADDR_DISCONTINUOUS, STATUSWIDTH, STATUSHEIGHT));

			SetColor(WHITE);
	    	//SetFont((void*)&Gentium_56);
	    	SetFont((void*)&Gentium_42);
	    	
	    			    
			// this button selects elevator movement
		    if(dir == ELEVATOR_GOINGDOWN)
		    {
			    pArrowImage = (void *) &arrowDownElevator_160x192;
			    while(!OutTextXY(STATUSSX, STATUSSY, (XCHAR*)GoDownStr));
			} 
		    if(dir == ELEVATOR_GOINGUP)
		    {
			    pArrowImage = (void *) &arrowUpElevator_160x192;
		    	while(!OutTextXY(STATUSSX, STATUSSY, (XCHAR*)GoUpStr));
			} 
		    if(dir == ELEVATOR_STOPPED)
		    {
				// render the background first only on the area that the arrow occupies
				while(!MoveWindow(Background.address, GFX_DISPLAY_BUFFER_START_ADDRESS, 
				  	  (arrowYPos * (DWORD)DISP_HOR_RESOLUTION) + arrowXPos + 3,
				  	  (arrowYPos * (DWORD)DISP_HOR_RESOLUTION) + arrowXPos, 
				  	  RCC_SRC_ADDR_DISCONTINUOUS, RCC_DEST_ADDR_DISCONTINUOUS, arrowWidth, arrowHeight));
		    	while(!OutTextXY(STATUSSX, STATUSSY, (XCHAR*)StoppedStr));
			} 
			updateStatus = 0;
		}
		
		if (pArrowImage != NULL)
		{
		    /* ******************************************* */
		    // Render the Floor number
		    /* ******************************************* */
			
			// before putting on the string, clean the area first with background image
			// refresh only the area where the previous string has occupied
			while(!MoveWindow(Background.address, GFX_DISPLAY_BUFFER_START_ADDRESS, 
				  	  (stringYPos * (DWORD)DISP_HOR_RESOLUTION) + stringXPos + 3,
				  	  (stringYPos * (DWORD)DISP_HOR_RESOLUTION) + stringXPos, 
				  	  RCC_SRC_ADDR_DISCONTINUOUS, RCC_DEST_ADDR_DISCONTINUOUS, stringWidth, stringHeight));

			// convert to string
			if (floor < 3)
			{	
				// this is brute force. There is a better way but due to time
				// constraints I implemented it this way
				switch(floor)
				{
					case 2:
						NumberToString(1, currentFloor, 2, 0);
						break;
					case 1:
						NumberToString(2, currentFloor, 2, 0);
						break;
					case 0:
						NumberToString(3, currentFloor, 2, 0);
						break;
					default:	
						break;
				}		
				currentFloor[0] = '-';
			}
			else
			{	
				if (floor < 13)
					NumberToString(floor-3, currentFloor, 1, 0);
				else	
					NumberToString(floor-3, currentFloor, 2, 0);
			}	

			// calculate the string dimension (needed to refresh the area)
			stringWidth  = GetTextWidth(currentFloor,pFontUsed);
			stringHeight = GetTextHeight(pFontUsed);

			if (stringHeight >= FLOORHEIGHT)
				stringYPos = FLOORSY;
			else	
				stringYPos   = FLOORSY + ((FLOORHEIGHT-stringHeight)>>1);
				
			if (stringWidth >= FLOORWIDTH)
				stringXPos = FLOORSX;
			else
				stringXPos   = FLOORSX + ((FLOORWIDTH-stringWidth)>>1);

			SetFont(pFontUsed);
			SetColor(TEXTCOLORS);
			while(!OutTextXY(stringXPos, stringYPos, currentFloor));	
			
			if (dir == ELEVATOR_GOINGUP)
			{
				if (floor <= 14)
					floor++;
				else 
				{	
					pArrowImage = NULL;
					updateStatus = 1;
					dir = ELEVATOR_STOPPED;
				}	
			}		
			else if (dir == ELEVATOR_GOINGDOWN)
			{
				if (floor > 0)
					floor--;	
				else	
				{
					pArrowImage = NULL;
					updateStatus = 1;
					dir = ELEVATOR_STOPPED;
				}	
			}
			DelayMs(DEMODELAY>>2);
					    
		    /* ******************************************* */
			// render the arrow image
		    /* ******************************************* */

			for(i=0;i<3;i++) 
			{			
				// animate the arrow

				adjust = 20;

				if (dir == ELEVATOR_GOINGUP)
					temp = (arrowYPos+adjust) - (adjust*i);
				else if (dir == ELEVATOR_GOINGDOWN)
					temp = (arrowYPos-adjust) + (adjust*i);
				else
					break;
						
				// now render the arrow with alternating start positions
			    // Instead of PutImage() we use the RopBlock() to have flexibility on the 
			    // transparency bit.
				while(!ROPBlock(((IMAGE_EXTERNAL*)pArrowImage)->address, GFX_DISPLAY_BUFFER_START_ADDRESS, 
					  	  3,
					  	  ((temp) * (DWORD)DISP_HOR_RESOLUTION) + arrowXPos, 
					  	  RCC_SRC_ADDR_CONTINUOUS, RCC_DEST_ADDR_DISCONTINUOUS, 
					  	  RCC_TRANSPARENT_COPY, RCC_ROP_C, WHITE, arrowWidth, arrowHeight));
				
				DelayMs(DEMODELAY>>2);
			
			} // for(i=0;i<3;i++)...
			
			// erase the arrow by overwriting the background data.
			// To save time, a portion of the background image (covered by the arrow) 
			// is refreshed.
			while(!MoveWindow(Background.address, GFX_DISPLAY_BUFFER_START_ADDRESS, 
				  	  (ARROWSY * (DWORD)DISP_HOR_RESOLUTION) + ARROWSX + 3,
				  	  (ARROWSY * (DWORD)DISP_HOR_RESOLUTION) + ARROWSX, 
				  	  RCC_SRC_ADDR_DISCONTINUOUS, RCC_DEST_ADDR_DISCONTINUOUS, ARROWWIDTH, ARROWHEIGHT));
		}
		
#endif		
			
	}
}


/************************************************************************************
* Function: NumberToString(WORD Value,XCHAR *pText, BYTE NoOfDigits, BYTE DotPos )
*
* Notes: convert the number to string
*
*************************************************************************************/
void NumberToString(WORD Value, XCHAR *pText, BYTE NoOfDigits, BYTE DotPos)
{
    BYTE    i;
    BYTE    bIndex;

    for(bIndex = 0; bIndex < NoOfDigits; bIndex++)
    {
        pText[NoOfDigits - bIndex - 1] = '0' + (Value % 10);
        Value /= 10;
    }

    if(DotPos != 0 && DotPos <= NoOfDigits)
    {
        for(i = 0; i < DotPos; i++)
        {
            pText[NoOfDigits - i] = pText[NoOfDigits - 1 - i];
        }

        pText[NoOfDigits - DotPos] = '.';
        pText[NoOfDigits + 1] = '\0';
    }

    //If dot position is 0 or greater than number of digits, then don't put dot in the display
    else
    {
        pText[NoOfDigits] = '\0';
    }
}

//  Create Error Flash (Blue Screen)
void CreateError(char* string)
{
	// Blue Screen Error
	SetColor(119);
	ClearDevice();
	SetColor(-1);
	
	// Flash Error Message
	SetFont((void*)&GOLFontDefault);
	if(string == NULL)
		{while(!OutTextXY(0, 0, "Runtime Error."));}
	else{while(!OutTextXY(0,0, string));}
	while(1);
}

// dummy function
WORD ExternalMemoryCallback(GFX_EXTDATA *memory, LONG offset, WORD nCount, void *buffer)
{
	// dummy function
    return (1);
}

