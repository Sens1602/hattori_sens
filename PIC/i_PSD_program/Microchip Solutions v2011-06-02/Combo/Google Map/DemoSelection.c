/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        DemoSelection.c
 * Dependencies:    MainDemo.h, DemoSelection.h
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30 V3.00, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software LicenseJpeg
 * Agreement
 *
 * Copyright © 2007 Microchip Technology Inc.  All rights reserved.
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
 * Anton Alkhimenok
 * Paolo Tamayo         03/10/08    ...
 *****************************************************************************/
#include "DemoSelection.h"

#define ENABLE_PICTURES_DEMO

// images used
#define ICON1P  Language_mono_72x72		// used when icon (button) is pressed
#define ICON1   Language_4bpp_72x72		// used when icon (button) is not pressed
#define ICON2P  FolderPhoto_mono_72x72	// used when icon (button) is pressed
#define ICON2   FolderPhoto_4bpp_72x72	// used when icon (button) is not pressed

extern IMAGE_EXTERNAL      ICON1;
extern IMAGE_EXTERNAL      ICON1P;
extern IMAGE_EXTERNAL      ICON2;
extern IMAGE_EXTERNAL      ICON2P;

// strings used
extern XCHAR                LeftArrowStr[];
extern XCHAR                RightArrowStr[];
extern XCHAR                UpArrowStr[];
extern XCHAR                DownArrowStr[];
extern XCHAR                DemoStr[];

extern BYTE                 usbMSDStatus;
BYTE                        sdCardStatus;

// global tick counter
extern DWORD    tick;
DWORD           demoTick;

const XCHAR iconGoogleMapStr[] 	= {'G','o','o','g','l','e',' ','M','a','p',0};
const XCHAR iconDemoStr[] 		= {'D','e','m','o',' ','A',0};

/************************************************************************
 Function: CreateDemoSelection()
                                                                       
 Overview: Creates the menu of small demos each represented 
 		   by an icon.
                                                                       
 Input: none                                                          
                                                                       
 Output: none
************************************************************************/
void CreateDemoSelection(void)
{
    GOLFree();                      // free memory for the objects in the previous linked list and start new list

    // USB HID or Mood Lighting demo icon
    BtnCreate
    (
        ID_BUTTON1,                 // button ID
        IconLeft(0),                // button dimensions
        IconTop(0),
        IconRight(0),
        IconBottom(0),
        0,                          // set no radius
        BTN_DRAW | BTN_TEXTBOTTOM,
        (void *) &ICON1,            // bitmap that overlaps the button
        (XCHAR *)iconGoogleMapStr,  // icon label
        pIconScheme
    );                              // use alternate scheme

#if 0
    // Demo 2 icon
    BtnCreate
    (
        ID_BUTTON2,
        IconLeft(1),
        IconTop(0),
        IconRight(1),
        IconBottom(0),
        0,
        BTN_DRAW | BTN_TEXTBOTTOM,
        (void *) &ICON2,
        (XCHAR *)iconDemoStr,
        pIconScheme
    );
#endif    

}

/************************************************************************
 Function: WORD MsgDemoSelectionCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)
                                                                       
 Overview: Message callback for the demo selection. Based on user selection
 		   A demo is enabled by switching the screen state. Icons used
 		   changes from colored version to monochrome version when pressed. 
 		                                                                          
 Input: objMsg - translated message for the object,
        pObj - pointer to the object,
        pMsg - pointer to the non-translated, raw GOL message 
                                                                       
 Output: none
************************************************************************/
WORD MsgDemoSelectionCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg)
{
    switch(GetObjID(pObj))
    {
        case ID_BUTTON1:
            if(objMsg == BTN_MSG_PRESSED)
            {           // change face picture
                BtnSetBitmap(pObj, (void *) &ICON1P);
            }
            else if(objMsg == BTN_MSG_CANCELPRESS)
            {
                BtnSetBitmap(pObj, (void *) &ICON1);
            }
            else if(objMsg == BTN_MSG_RELEASED)
            {
                BtnSetBitmap(pObj, (void *) &ICON1);
                screenState = CREATE_GOOGLEMAP;
            }
            break;
#if 0
        case ID_BUTTON2:
            if(objMsg == BTN_MSG_PRESSED)
            {           // change face picture
                BtnSetBitmap(pObj, (void *) &ICON2P);
            }
            else if(objMsg == BTN_MSG_CANCELPRESS)
            {
                BtnSetBitmap(pObj, (void *) &ICON2);
            }
            else if(objMsg == BTN_MSG_RELEASED)
            {
                BtnSetBitmap(pObj, (void *) &ICON2);
                screenState = CREATE_DEMO_A;
            }
            break;
#endif
        default:
            return (1); // process by default
    }
	
    return (1);
}

/************************************************************************
 Function: void InitDemoSelectStyleScheme(GOL_SCHEME *pScheme)
                                                                       
 Overview: This function initializes the style scheme used by this
 		   demo.
 		                                                                          
 Input: pScheme - pointer to the style scheme used.
                                                                       
 Output: none
************************************************************************/
void InitDemoSelectStyleScheme(GOL_SCHEME *pDemoScheme)
{
    pDemoScheme->EmbossDkColor = SCREEN_BACKGROUND_COLOR;
    pDemoScheme->EmbossLtColor = SCREEN_BACKGROUND_COLOR;
    pDemoScheme->pFont = (void *) &GOLSmallFont;
    pDemoScheme->TextColor0 = BLACK;
    pDemoScheme->ColorDisabled = SCREEN_BACKGROUND_COLOR;
    pDemoScheme->Color0 = SCREEN_BACKGROUND_COLOR;
    pDemoScheme->Color1 = SCREEN_BACKGROUND_COLOR;
}

/************************************************************************
 Function: WORD GOLDrawCallback()

 Overview: This function must be implemented by user. GOLDraw() function 
 		   calls it each time when GOL objects drawing is completed. User 
 		   drawing should be done here. GOL will not change color, line 
 		   type and clipping region settings while  this function 
 		   returns zero.

 Input: none

 Output: If the function returns non-zero the draw control will be passed 
		to GOL. GOLDraw() can proceed and re-draw objects that needs 
		to be redrawn.
************************************************************************/
WORD GOLDrawCallback(void)
{
	
	switch(screenState)
    {
        case CREATE_DEMOSELECTION:
            CreateDemoSelection();                  // create demo selection screen
            screenState = DISPLAY_DEMOSELECTION;    // switch to next state
            break;

        case DISPLAY_DEMOSELECTION:
            //CheckDemoStatus();
            break;

        case CREATE_GOOGLEMAP:
            CreateGoogleMapScreen();                  	// create google map screen and menu
            screenState = DISPLAY_GOOGLEMAP;    		// switch to next state
            return (1);                             	// draw objects created

        case DISPLAY_GOOGLEMAP:
        	GoogleMapDrawCallback();
            return (1);                             // redraw objects if needed

//        case DISPLAY_DEMO_A:
//            Demo_A_DemoDrawCallback();
//            break;

        default:
            break;
    }

	/* *********************************************************************** */	
	// THIS IS TEMPORARY, to be removed when the functions to create/display 
	// other demo states are defined and used.
	/* *********************************************************************** */	
    screenState = DISPLAY_DEMOSELECTION;    // switch to next state
	/* *********************************************************************** */	

    return (1); // release drawing control to GOL

}


/************************************************************************
 Function: WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER* pObj, GOL_MSG* pMsg)

 Overview: This function must be implemented by user. GOLMsg() function 
 		   calls it each time the valid message for the object received.
           
 Input: objMsg - translated message for the object,
        pObj - pointer to the object,
        pMsg - pointer to the non-translated, raw GOL message 

 Output: If the function returns non-zero the message will 
 		 be processed by the object directly affected by the message.
 		 Default action on the object based on the message will be 
 		 performed.
************************************************************************/
WORD GOLMsgCallback(WORD objMsg, OBJ_HEADER *pObj, GOL_MSG *pMsg)
{
	
    switch(screenState)
    {
        case DISPLAY_DEMOSELECTION:
            return (MsgDemoSelectionCallback(objMsg, pObj, pMsg));

        case DISPLAY_GOOGLEMAP:
            return (GoogleMapMsgCallback(objMsg, pObj, pMsg));

        case DISPLAY_DEMO_A:
//            return (Demo_A_MsgCallback(objMsg, pObj, pMsg));


        default:
            return (1); // process message by default
    }	
	
}	

