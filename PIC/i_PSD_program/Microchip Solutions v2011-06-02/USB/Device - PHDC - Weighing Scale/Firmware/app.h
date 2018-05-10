/************************************************************************
  File Information:
    FileName:       app.h
    Dependencies:   See INCLUDES section
    Processor:      PIC18 or PIC24 USB Microcontrollers
    Hardware:       The code is natively intended to be used on the following
                    hardware platforms: PICDEM™ FS USB Demo Board,
                    PIC18F87J50 FS USB Plug-In Module, or
                    Explorer 16 + PIC24 USB PIM.  The firmware may be
                    modified for use on other USB platforms by editing the
                    HardwareProfile.h file.
    Complier:   Microchip C18 (for PIC18) or C30 (for PIC24)
    Company:        Microchip Technology, Inc.

    Software License Agreement:

    The software supplied herewith by Microchip Technology Incorporated
    (the “Company”) for its PIC® Microcontroller is intended and
    supplied to you, the Company’s customer, for use solely and
    exclusively on Microchip PIC Microcontroller products. The
    software is owned by the Company and/or its supplier, and is
    protected under applicable copyright laws. All rights are reserved.
    Any use in violation of the foregoing restrictions may subject the
    user to criminal sanctions under applicable laws, as well as to
    civil liability for the breach of the terms and conditions of this
    license.

    THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
    WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
    TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
    PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
    IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
    CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

  Summary:
    This file contains all of functions, macros, definitions, variables,
    datatypes, etc. that are required for usage with the application software
	.
       
    This file is located in the project directory

  Description:
    Application file
    
    This file contains all of functions, macros, definitions, variables,
    datatypes, etc. that are required for usage with the application software.
    
    This file is located in the project directory.
    
                        

********************************************************************/

/********************************************************************
 Change History:
  Rev    Description
  ----   -----------
  1.0   Initial release

********************************************************************/
#ifndef _APP_H
#define  _APP_H

// *****************************************************************************
// *****************************************************************************
// Section: Includes
// *****************************************************************************
// *****************************************************************************
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "HardwareProfile.h"


// *****************************************************************************
// *****************************************************************************
// Section: Constants & Data Types
// *****************************************************************************
// *****************************************************************************
#define BYTE_SWAP16(a) (UINT16)((((UINT16)(a)&0xFF00)>>8) | \
                                    (((UINT16)(a)&0x00FF)<<8))

#define BYTE_SWAP32(a) 	(UINT32)((((UINT32)(a) & 0xFF000000) >> 24) |   \
         						(((UINT32)(a) & 0x00FF0000) >> 8)  |   \
         						(((UINT32)(a) & 0x0000FF00) << 8)  |   \
         						(((UINT32)(a) & 0x000000FF) << 24)  )
                                        

/*Application States*/
#define INITIALIZED 0x00
#define CONNECTED 0x01
#define MEASUREMENT_SENT 0x02
#define DISCONNECTED 0x03
#define DISCONNECTING 0x04



/* Request/Response Sizes */
#define ASSOCIATION_REQUEST_SIZE           54
#define RELEASE_REQUEST_SIZE                6
#define RELEASE_RESPONSE_SIZE               6
#define ABORT_SIZE                          6
#define CONFIG_EVENT_REPORT_SIZE           166
#define GET_ATTR_RESPONSE_SIZE             114
#define MEASUREMENT_DATA_SIZE               94


/** E X T E R N S ************************************************************/
extern UINT8  ROM ASSOCIATION_REQUEST[];
extern UINT8  ROM CONFIG_EVENT_REPORT[];
extern UINT8  ROM RELEASE_REQUEST[];
extern UINT8  ROM RELEASE_RESPONSE[];
extern UINT8  ROM ABORT[];
extern UINT8  ROM GET_ATTR_RESPONSE[];
extern UINT8  ROM MEASUREMENT_DATA[];

extern volatile BOOL buttonPressedsw2;
extern volatile BOOL buttonPressedsw3;
extern volatile BYTE buttonCountsw2;
extern volatile BYTE buttonCountsw3;

extern void ApplicationInit(void);
extern void ApplicationTask(void);
extern void UpdateWeighScaleMeasurements(UINT8*);






#endif

