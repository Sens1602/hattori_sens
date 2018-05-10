/*********************************************************************
 * Microchip Graphic Library Demo Application
 * The header file joins all header files used in the project.
 *********************************************************************
 * FileName:        ElevatorDemo.h
 * Dependencies:    See INCLUDES section below
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:        C30/C32
 * Company:         Microchip Technology, Inc.
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
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * PAT                  07/27/2010
 ********************************************************************/
#ifndef _ELEVATORDEMO_H
    #define _ELEVATORDEMO_H

////////////////////////////// INCLUDES //////////////////////////////
    #include "Compiler.h"
    #include "GenericTypeDefs.h"
    #include "Graphics/Graphics.h"
    #include "UART.h"
    #include "SST39LF400.h"    
    #include "ProgramFlash.h"    

/////////////////////////////////////////////////////////////////////////////
//                              DEMO MACROS
/////////////////////////////////////////////////////////////////////////////
	#define DEMODELAY			(1000)
	#define TEXTCOLORS      	(RGB565CONVERT(246,130,18))
	#define XMARGIN				(20)
	#define YMARGIN				(0)

	#define ELEVATOR_STOPPED	0
	#define ELEVATOR_GOINGUP	1
	#define ELEVATOR_GOINGDOWN	2
	


/////////////////////////////////////////////////////////////////////////////
//                              OBJECT DIMENSIONS
/////////////////////////////////////////////////////////////////////////////

	// arrow area	
	#define ARROWSX				(XMARGIN)
	#define ARROWSY				(YMARGIN)
	#define ARROWHEIGHT			(GetMaxY()) 
	#define ARROWWIDTH			(160 + YMARGIN)

	// floor number area
	#define FLOORSX				(XMARGIN+ARROWWIDTH+1)
	#define FLOORSY				(YMARGIN)
	#define FLOORHEIGHT			(210) 
	#define FLOORWIDTH			(GetMaxX()-FLOORSX)

	// status area
	#define STATUSSX			(XMARGIN+ARROWWIDTH+1) 
	#define STATUSSY			(FLOORSY+FLOORHEIGHT)
	#define STATUSWIDTH			(FLOORWIDTH)
	#define STATUSHEIGHT		(GetMaxY()-FLOORHEIGHT) 
	
	#define GetHWButtonDown()  	(PORTGbits.RG8)
	#define GetHWButtonUp()    	(PORTEbits.RE9)
	

#endif //_ELEVATORDEMO
