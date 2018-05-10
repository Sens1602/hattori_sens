/*****************************************************************************
 * Microchip Graphics Library Demo Application
 * This program shows how to use the Graphics Objects Layer.
 *****************************************************************************
 * FileName:        main_screen.c
 * Dependencies:    See Includes Section
 * Processor:       PIC24, PIC32
 * Compiler:       	MPLAB C30 V3.00, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 *
 * Copyright © 2011 Microchip Technology Inc.  All rights reserved.
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
 *****************************************************************************/

/*****************************************************************************
 * SECTION: Includes
 *****************************************************************************/
#include "Graphics/Graphics.h"
#include "icons.h"
#include "MainDemo.h"//** Remove when complete!!!!!!!!!
#include "gfx_schemes.h"
#include "gfx_screens.h"
#include "gol_ids.h"
#include "timer_tick.h"
/*****************************************************************************
 * SECTION: Defines
 *****************************************************************************/
#define LIGHTING_SCREEN_SIZE_X  (GetMaxX() - (GetMaxX() >> 2) - 100)
#define LIGHTING_SCREEN_SIZE_Y  (GetMaxY()  - 120)
#define LIGHTING_SCREEN_START   (GetMaxX() - LIGHTING_SCREEN_SIZE_X - 50)
#define LIGHTING_SCREEN_END     (GetMaxX() -50)

#define GFX_BlockUntilFinished(function)   while(!function)
/*****************************************************************************
 * SECTION: Variables
 *****************************************************************************/

/*****************************************************************************
 * void CreateLightingScreen(void)
 *****************************************************************************/
void CreateLightingScreen(void)
{
    GOLFree();                              // free memory for the objects in the previous linked list and start new list

    CreatePanelScreen();                    // This adds the widgets seen on the left of the screen

    SetState(GOLFindObject(PANEL_SCREEN_ID_LIGHTING_BUT), BTN_DISABLED);
 
    GFX_BlockUntilFinished(PutImage((GetMaxX() >> 2)+40, 90+10, (void *) &House, IMAGE_NORMAL));

    SetActivePage(GetDestinationPage());

}
/*****************************************************************************
 * void DisplayLightingScreen(void)
 *****************************************************************************/
void DisplayLightingScreen(void)
{
    static DWORD prevTick = 0;
    static BYTE blink = 0;

    if((TimerTick_GetTick() - prevTick) > 1000)
    {
	    prevTick = TimerTick_GetTick();
	    blink ^=1;
	    
        if(blink == 1)
	       { SetColor(GREEN);}
	    else
	        SetColor(WHITE);

	    FillCircle(LIGHTING_SCREEN_START + 65, 140, 5);           //Bed 3
	    FillCircle(LIGHTING_SCREEN_START+290, 160, 5);            //Terrace
	    FillCircle(LIGHTING_SCREEN_START+250, GetMaxY() - 80, 5);  //Living
	    FillCircle(LIGHTING_SCREEN_START + 65, GetMaxY() - 200, 5);  //Bed 4
    }
    
}
/*****************************************************************************
 * WORD MsgLightingScreen(WORD objMsg, OBJ_HEADER *pObj)
 *****************************************************************************/
WORD MsgLightingScreen(WORD objMsg, OBJ_HEADER *pObj)
{
    MsgPanelScreen(objMsg, pObj);  //Adds UI from PanelScreen
    return(1);
}
