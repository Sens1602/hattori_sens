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
#include "MainDemo.h"//** Remove when complete!!!!!!!!!
#include "gfx_strings.h"
#include "gfx_screens.h"
#include "gfx_schemes.h"
#include "gol_ids.h"
#include "timer_tick.h"
/*****************************************************************************
 * SECTION: Local Prototypes
 *****************************************************************************/
void PreLoadDrawProgress(void);
/*****************************************************************************
 * SECTION: Defines
 *****************************************************************************/
#define PRE_LOAD_ANIMATION_RADIUS       (10)
#define PRE_LOAD_NUM_ANIMATION_CIRCLES  (5)
#define PRE_LOAD_AMINATION_CIRCLE_X_DELTA (GetMaxX() / (PRE_LOAD_NUM_ANIMATION_CIRCLES + 1))

#define ORANGE  RGBConvert(255, 140, 0)

#define GFX_BlockUntilFinished(function)   while(!function)
/*****************************************************************************
 * SECTION: Variables
 *****************************************************************************/
PRE_LOAD_BACKGROUND preLoadBackGroundScheme = PRE_LOAD_BACKGROUND_SCHEME_BLUE;
PRE_LOAD_PAGE preLoadPage = PRE_LOAD_PAGE_1;
static int animationStage = 0;
/*****************************************************************************
 * void CreatePreLoadScreen(void)
 *****************************************************************************/
void CreatePreLoadScreen(void)
{
    SHORT x, y;

    SetActivePage(IMAGE2_PINGPONG);
    SetColor(WHITE);
    ClearDevice();

    SetColor(BLACK);
    SetFont((void *) &FONTDEFAULT);

    x = (GetMaxX() - GetTextWidth((XCHAR *)loading, (void *)&FONTDEFAULT)) >> 1;
    y = (GetMaxY() - GetTextHeight((void *)&FONTDEFAULT)) >> 1;

    MoveTo(x, y);
    GFX_BlockUntilFinished(OutText((XCHAR *)loading));  //Loading Text
    PreLoadDrawProgress();

    SetVisualPage(IMAGE2_PINGPONG);
    SetActivePage(0);                                   //BackGround is contained here

    if(preLoadBackGroundScheme == PRE_LOAD_BACKGROUND_SCHEME_RAINBOW)
    {     
        //Rainbow Background
        BarGradient(0,0,GetMaxX()>>2,GetMaxY(),BRIGHTRED,ORANGE,100,GRAD_RIGHT);
        BarGradient(GetMaxX()>>2,0,GetMaxX()>>1,GetMaxY(),ORANGE,BRIGHTGREEN,100,GRAD_RIGHT);
        BarGradient(GetMaxX()>>1,0,(GetMaxX()*3)>>2,GetMaxY(),BRIGHTGREEN,BRIGHTBLUE,100,GRAD_RIGHT);
        BarGradient((GetMaxX()*3)>>2,0,GetMaxX(),GetMaxY(),BRIGHTBLUE,RGBConvert(128,0,255),100,GRAD_RIGHT);
    }  
    else
    { 
        //DarkBlue Gradient Background
         BarGradient(0,0,GetMaxX(),GetMaxY(),BRIGHTBLUE,BLACK,100,GRAD_RIGHT);
    }

}
/*****************************************************************************
 * void CreatePreLoadScreen(void)
 *****************************************************************************/
WORD PreLoadDrawScreens(void)
{
    PreLoadDrawProgress();

    switch(preLoadPage)
    {
        case PRE_LOAD_PAGE_1:                  //Contains the background image
            SetDestinationPage(1);
            SetActivePage(1);
			AlphaBlendWindow(GFXGetPageXYAddress(DISPLAY_BUFFER, 0, 0),
				GFXGetPageXYAddress(DISPLAY_BUFFER, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue);  
            preLoadPage = PRE_LOAD_PAGE_2;                                      // switch to next state
            return (1);                                                 // draw objects created 

        case PRE_LOAD_PAGE_2: 
            SetDestinationPage(2);

           SetActivePage(2);
			AlphaBlendWindow(GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE2, 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue);  
            
            CreateMainScreen();                                            // create window and check boxes
            preLoadPage = PRE_LOAD_PAGE_3;                                         // switch to next state
            return (1);         

       case PRE_LOAD_PAGE_3:
            SetDestinationPage(3);
           SetActivePage(3);
           AlphaBlendWindow(GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE3, 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue);  
             
            CreatePanelScreen();                                            // create window and check boxes
            preLoadPage = PRE_LOAD_PAGE_4;                                         // switch to next state
            return (1);      
 
       case PRE_LOAD_PAGE_4:
            SetDestinationPage(4);
           SetActivePage(4);
           AlphaBlendWindow(GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE4, 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue); 
             
            CreatePerformanceScreen();                                          // create window and check boxes
            preLoadPage = PRE_LOAD_PAGE_5;                                         // switch to next state
            return (1);                                              

       case PRE_LOAD_PAGE_5:
            SetDestinationPage(5);
           SetActivePage(5);
           AlphaBlendWindow(GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE5, 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue); 
             
            CreateConfigScreen();                                         // create window and check boxes
            preLoadPage = PRE_LOAD_PAGE_6;                                         // switch to next state
            return (1);   

       case PRE_LOAD_PAGE_6:                 //Lighting Screen
           SetDestinationPage(6);
           SetActivePage(6);

           AlphaBlendWindow(GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE1, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE6, 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue); 
             
            CreateLightingScreen();                                         // create window and check boxes
            preLoadPage = PRE_LOAD_PAGE_7;                                             // switch to next state
            return (1);   

         case PRE_LOAD_PAGE_7:
            SetDestinationPage(0);
             AlphaBlendWindow(GFXGetPageXYAddress(GFX_PAGE2, 0, 0),
				GFXGetPageXYAddress(GFX_PAGE2, 0, 0),
				GFXGetPageXYAddress(GetDestinationPage(), 0, 0),
				GetMaxX(), 
				GetMaxY(),   	
				GFX_SchemeGetDefaultScheme()->AlphaValue); 
             SetActivePage(GetDestinationPage());
           
             CreateMainScreen();                                            // Start the first demo screen     
             preLoadPage = NUM_PRE_LOAD_PAGES;                
             
             SetVisualPage(0);
             screenState = DISPLAY_MAIN;
             return (1);      
        
         default: 
            return (10);        //Number states that rendering is
    }


}
/*****************************************************************************
 * void PreLoadDrawProgress(void)
 *****************************************************************************/
void PreLoadDrawProgress(void)
{
    SHORT x, y;
    int idx;

    SetVisualPage(IMAGE2_PINGPONG);
	SetActivePage(IMAGE2_PINGPONG);

    y = (GetMaxY() >> 1) + GetTextHeight((void *)&FONTDEFAULT) + PRE_LOAD_ANIMATION_RADIUS;
    x = PRE_LOAD_AMINATION_CIRCLE_X_DELTA;

    for(idx = 0; idx < PRE_LOAD_NUM_ANIMATION_CIRCLES; idx++)
    {
        if(idx == animationStage)
        {    SetColor(RED);}
        else
            SetColor(GRAY0);

        FillCircle(x, y, PRE_LOAD_ANIMATION_RADIUS);
        x += PRE_LOAD_AMINATION_CIRCLE_X_DELTA;
    }

    animationStage++;

    if(animationStage >= PRE_LOAD_NUM_ANIMATION_CIRCLES)
        animationStage = 0;

	SetActivePage(IMAGE1_PINGPONG);
}
