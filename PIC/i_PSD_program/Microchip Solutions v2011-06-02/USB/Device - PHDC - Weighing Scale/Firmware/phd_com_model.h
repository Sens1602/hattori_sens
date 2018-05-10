/************************************************************************
  File Information:
    FileName:       phd_com_model.h
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
#ifndef _PHD_COM_H
#define _PHD_COM_H

// *****************************************************************************
// *****************************************************************************
// Section: Includes
// *****************************************************************************
// *****************************************************************************



#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "HardwareProfile.h"

#define BYTE_SWAP16(a) (UINT16)((((UINT16)(a)&0xFF00)>>8) | \
                                    (((UINT16)(a)&0x00FF)<<8))

#define PHD_APP_BUFFER_SIZE 116
//#define PHD_APP_TX_BUFFER_SIZE 94

/* callback function pointer structure for Application to handle events */
typedef void(* PHDC_APP_CB)(UINT8);

//extern volatile FAR UINT8 PhdRxAppBuffer[PHD_APP_RX_BUFFER_SIZE];
//extern volatile FAR UINT8 PhdTxAppBuffer[PHD_APP_TX_BUFFER_SIZE];
extern FAR UINT8 PhdAppBuffer[];


#define SEND_QOS PHDC_BULK_IN_QOS
/* Agent states */
#define  PHD_COM_STATE_DISCONNECTED                  0x00
#define  PHD_COM_STATE_UNASSOCIATED                  0x01
#define  PHD_COM_STATE_ASSOCIATING                   0x02
#define  PHD_COM_STATE_ASSOC_CFG_SENDING_CONFIG      0x03
#define  PHD_COM_STATE_ASSOC_CFG_WAITING_APPROVAL    0x04
#define  PHD_COM_STATE_ASSOC_OPERATING               0x05
#define  PHD_COM_STATE_DISASSOCIATING                0x06


#define PHD_ASSOCIATION_REQUEST 	0xE200
#define PHD_ASSOCIATION_RESPONSE    0xE300  
#define PHD_RELEASE_REQUEST         0xE400
#define PHD_RELEASE_RESPONSE        0xE500
#define PHD_ABORT_REQUEST           0xE600
#define PHD_PRESET_APDU             0xE700

extern void PHDConnect(void);
extern void PHDDisConnect(void);
extern void PHDCAppInit(PHDC_APP_CB);
extern void UsbToPHDComCB(UINT8 USB_Event, void*);

extern void PHDSendMeasuredData(void);



#endif

