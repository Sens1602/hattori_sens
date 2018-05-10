/************************************************************************
  File Information:
    FileName:       phd_com_model.c
    Dependencies:   See INCLUDES section
    Processor:      PIC18 or PIC24 USB Microcontrollers
    Hardware:       The code is natively intended to be used on the following
                    hardware platforms: PICDEM™ FS USB Demo Board,
                    PIC18F87J50 FS USB Plug-In Module, or
                    Explorer 16 + PIC24 USB PIM.  The firmware may be
                    modified for use on other USB platforms by editing the
                    HardwareProfile.h file.
    Complier:       Microchip C18 (for PIC18) or C30 (for PIC24)
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
/** I N C L U D E S **********************************************************/
#include "app.h"
#include "usb_config.h"
//#include "USB/usb_device.h"
#include "USB/usb_function_phdc.h"
#include "USB/usb.h"
#include "phd_com_model.h"
#include "ieee_11073_phd_types.h"



/** Definitions ****************************************************/


/*****************************************************************************
 * Constant and Macro's
 *****************************************************************************/


/** V A R I A B L E S ********************************************************/
#pragma udata

UINT16 PhdAppBufferOffset;
UINT8 PhdAppBuffer[PHD_APP_BUFFER_SIZE];
PHDC_APP_CB AppCB;

static UINT8 PhdComState = PHD_COM_STATE_UNASSOCIATED;

/** P R I V A T E  P R O T O T Y P E S ***************************************/
void USBAppDataRxHandler(BYTE* apdu);
static void PhdAssocResponseHandler(BYTE* apdu_val);
static void PhdPrstApduHandler(BYTE* apdu_val);
static void PhdReleaseResponseHandler(BYTE* apdu_val);
static void PhdReleaseRequestHandler(BYTE* apdu_val);
static void PhdAbortRequestHandler(BYTE* apdu_val);



/******************************************************************************
 * Function:        void PHDCAppInit(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine register all the application related items.
 *                  Also a call back function is sent to the Transport layer.
 *
 * Note:            
 *
 *****************************************************************************/
void PHDCAppInit(PHDC_APP_CB callback)
{
	AppCB = callback;
	USBDevicePHDCInit(UsbToPHDComCB); //register the call back function
//	USBDevicePHDCReceiveData(Qos,PhdAppBuffer,0);
	
}


/******************************************************************************
 * Function:        void UsbToPHDComCB(UINT8 USB_Event, void * val)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine is called from the transport layer informing about 
 *                  its events	
 *
 * Note:            
 *
 *****************************************************************************/
void UsbToPHDComCB(UINT8 USB_Event, void * val)
{

    UINT16 *size;
    APDU *ptr;
    //UINT16 swap;
    UINT16 length, choice;//, count;	
    #if defined(__18CXX)
        UINT16 *PTR;
    #elif defined(__C30__)
        //UINT16 *PTR;
    #elif defined(__PIC32MX__)
        UINT32 *PTR;
    #endif


	switch(USB_Event)
	{
		case USB_APP_SEND_COMPLETE:
		    Nop();
		    if(PhdComState==PHD_COM_STATE_ASSOC_CFG_SENDING_CONFIG)
		    {
			    PhdComState=PHD_COM_STATE_ASSOC_CFG_WAITING_APPROVAL;
		    }
		break;

		case USB_APP_DATA_RECEIVED:
			USBDevicePHDCReceiveData(PHDC_BULK_OUT_QOS,PhdAppBuffer,0); //get ready to receive
			USBAppDataRxHandler(PhdAppBuffer);
			
		break;
		
		case USB_APP_GET_TRANSFER_SIZE:
		    size=(UINT16*)val;
		    ptr = (APDU*)&PhdAppBuffer;
		    length = BYTE_SWAP16(ptr->length);
		    choice = BYTE_SWAP16(ptr->choice);
		    *size = (UINT8)(ptr->length + 4);
		    PhdAppBufferOffset = 0;	
		break;
		
		default:
		break;
	}//End of switch(USB_Event)
}


/******************************************************************************
 * Function:        void USBAppDataRxHandler(APDU* apdu)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles the received APDU	
 *
 * Note:            
 *
 *****************************************************************************/

void USBAppDataRxHandler(BYTE* apdu)
{
	UINT16_VAL  apduChoiceLength, apduChoiceType;
	
	apduChoiceType.byte.HB = apdu[PHD_APDU_CHOICE_FIELD]; 
	apduChoiceType.byte.LB = apdu[PHD_APDU_CHOICE_FIELD + 1];
	
	apduChoiceLength.byte.HB = apdu[PHD_APDU_LENGTH_FIELD]; 
	apduChoiceLength.byte.LB = apdu[PHD_APDU_LENGTH_FIELD + 1]; 


	switch (apduChoiceType.Val)
	{
		case PHD_ASSOCIATION_REQUEST:
		    Nop();
		break;

		case PHD_ASSOCIATION_RESPONSE:
		    PhdAssocResponseHandler(apdu);
		break;

		case PHD_RELEASE_REQUEST:
		    PhdReleaseRequestHandler(apdu);
		break;

		case PHD_RELEASE_RESPONSE:
		    PhdReleaseResponseHandler(apdu);
		break;

		case PHD_ABORT_REQUEST:
		    PhdAbortRequestHandler(apdu);
		break;

		case PHD_PRESET_APDU:
		    PhdPrstApduHandler(apdu);
		break;
	}// end of switch (apduChoiceType.Val)

}


/******************************************************************************
 * Function:        void PHDConnect(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine sends a Association request to manager	
 *
 * Note:            
 *
 *****************************************************************************/
void PHDConnect(void)
{
	if(PhdComState == PHD_COM_STATE_UNASSOCIATED)
	{
		PhdComState= PHD_COM_STATE_ASSOCIATING;
		USBDevicePHDCSendData(SEND_QOS,(UINT8 *) ASSOCIATION_REQUEST,ASSOCIATION_REQUEST_SIZE,MEM_ROM);
		USBDevicePHDCReceiveData(PHDC_BULK_OUT_QOS,PhdAppBuffer,0); //get ready to receive
	}

}

/******************************************************************************
 * Function:        void PHDDisConnect(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles the dissociation procedure.Sends release request 	
 *
 * Note:            
 *
 *****************************************************************************/
void PHDDisConnect(void)
{
	if(PhdComState == PHD_COM_STATE_ASSOCIATING)
	{
		PhdComState= PHD_COM_STATE_UNASSOCIATED;
		USBDevicePHDCSendData(SEND_QOS,(UINT8 *)ABORT,ABORT_SIZE,MEM_ROM);
		
	}
	else if((PhdComState==PHD_COM_STATE_DISASSOCIATING)||
			(PhdComState==PHD_COM_STATE_UNASSOCIATED))
	{
		//do nothing
	}
	else
	{
		PhdComState= PHD_COM_STATE_DISASSOCIATING;
		USBDevicePHDCSendData(SEND_QOS,(UINT8 *) RELEASE_REQUEST,RELEASE_REQUEST_SIZE,MEM_ROM);
	}

}

/******************************************************************************
 * Function:        void PHDSendMeasuredData(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine sends measurements to manager 	
 *
 * Note:            
 *
 *****************************************************************************/
void PHDSendMeasuredData(void)
{

	POINTER Src;
	UINT16 i;

	Src.bRom = MEASUREMENT_DATA;
	for(i=0;i<MEASUREMENT_DATA_SIZE;i++)
	{
	    PhdAppBuffer[i] = *Src.bRom++; 	
	}
		
	UpdateWeighScaleMeasurements(PhdAppBuffer);
	USBDevicePHDCSendData(SEND_QOS,PhdAppBuffer,MEASUREMENT_DATA_SIZE,MEM_RAM);
 
}


/******************************************************************************
 * Function:        static void PhdAssocResponseHandler(APDU* apdu_val)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles association response 	
 *
 * Note:            
 *
 *****************************************************************************/
static void PhdAssocResponseHandler(BYTE* apdu_val)
{
	UINT16_VAL apduChoiceLength, apduChoiceType,result;
    BYTE* assoc_response_res; 
    apduChoiceType.byte.HB = apdu_val[0];
	apduChoiceType.byte.LB = apdu_val[1]; 
	
	apduChoiceLength.byte.HB = apdu_val[2];
	apduChoiceLength.byte.LB = apdu_val[3];  

	if((PhdComState== PHD_COM_STATE_ASSOCIATING) && (apduChoiceType.Val == AARE_CHOSEN))
	{
		assoc_response_res = &apdu_val[4]; 
		result.byte.HB  = apdu_val[4]; 
		result.byte.LB  = apdu_val[5];  
		if(result.Val == ACCEPTED_UNKNOWN_CONFIG)
		{
			PhdComState=PHD_COM_STATE_ASSOC_CFG_SENDING_CONFIG;
			USBDevicePHDCSendData(SEND_QOS,(UINT8 *)CONFIG_EVENT_REPORT,CONFIG_EVENT_REPORT_SIZE,MEM_ROM);	
			
		}
		else
		{
			PhdComState=PHD_COM_STATE_ASSOC_OPERATING;
			AppCB(CONNECTED);
		}
	}	
}


/******************************************************************************
 * Function:        static void PhdPrstApduHandler(APDU* apdu_val)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles prst APDU 	
 *
 * Note:            
 *
 *****************************************************************************/
static void PhdPrstApduHandler(BYTE* apdu_val)
{
    UINT16_VAL data,result,count,invoke_id;
	UINT16 i;
	POINTER Src; 
	if(	(PhdComState==PHD_COM_STATE_ASSOC_OPERATING)||
		(PhdComState==PHD_COM_STATE_ASSOCIATING)||
		(PhdComState==PHD_COM_STATE_ASSOC_CFG_SENDING_CONFIG)||
		(PhdComState==PHD_COM_STATE_ASSOC_CFG_WAITING_APPROVAL)	)
		{
			data.byte.HB = apdu_val[8]; 
			data.byte.LB = apdu_val[9]; 
			
			if(data.Val == ROIV_CMIP_GET_CHOSEN) //Get command from Manager
			{
				count.byte.HB =  apdu_val[14]; 
				count.byte.LB =  apdu_val[15]; 
				if(count.Val == 0)
				{
                    invoke_id.byte.HB = apdu_val[6]; 
                    invoke_id.byte.LB = apdu_val[7]; 
					Src.bRom = GET_ATTR_RESPONSE;//reply with MDS attributes
					for(i=0;i<GET_ATTR_RESPONSE_SIZE;i++)
					{
						PhdAppBuffer[i] = *Src.bRom++; 	
					}
					PhdAppBuffer[6]= (UINT8)((invoke_id.Val>>8)&0xff);
					PhdAppBuffer[7]= (UINT8)(invoke_id.Val&0xff);
					USBDevicePHDCSendData(SEND_QOS,PhdAppBuffer,GET_ATTR_RESPONSE_SIZE,MEM_RAM);
				}
			}
			else if(data.Val == RORS_CMIP_CONFIRMED_EVENT_REPORT_CHOSEN)//response for CONFIG_EVENT (sent by Manager)
			{
				if(PhdComState==PHD_COM_STATE_ASSOC_CFG_WAITING_APPROVAL)
				{
					result.byte.HB = apdu_val[24]; 
					result.byte.LB = apdu_val[25]; 
					if(result.Val == ACCEPTED_CONFIG)
					{
						PhdComState=PHD_COM_STATE_ASSOC_OPERATING; //change the state if Accepted config
						AppCB(CONNECTED);
					}
					else
					{
						PhdComState=PHD_COM_STATE_ASSOC_CFG_SENDING_CONFIG;
					}
				}
				else
				{
				    AppCB(MEASUREMENT_SENT);
				}
			}
		

		}
}

/******************************************************************************
 * Function:        static void PhdReleaseResponseHandler(APDU* apdu_val)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles Release response 	
 *
 * Note:            
 *
 *****************************************************************************/
static void PhdReleaseResponseHandler(BYTE* apdu_val)
{

	PhdComState=PHD_COM_STATE_UNASSOCIATED;
	AppCB(DISCONNECTED);
}


/******************************************************************************
 * Function:        static void PhdReleaseRequestHandler(APDU* apdu_val)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles Release request from manager 	
 *
 * Note:            
 *
 *****************************************************************************/
static void PhdReleaseRequestHandler(BYTE* apdu_val)
{
	if(	(PhdComState==PHD_COM_STATE_ASSOC_OPERATING)||
		(PhdComState==PHD_COM_STATE_ASSOCIATING)||
		(PhdComState==PHD_COM_STATE_ASSOC_CFG_SENDING_CONFIG)||
		(PhdComState==PHD_COM_STATE_ASSOC_CFG_WAITING_APPROVAL)	)
	{
		PhdComState=PHD_COM_STATE_UNASSOCIATED;
		USBDevicePHDCSendData(SEND_QOS, (UINT8 *)RELEASE_RESPONSE,RELEASE_RESPONSE_SIZE,MEM_ROM);
		AppCB(DISCONNECTED);
	}
	
}


/******************************************************************************
 * Function:        static void PhdAbortRequestHandler(APDU* apdu_val)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine handles Abort request from manager 	
 *
 * Note:            
 *
 *****************************************************************************/

static void PhdAbortRequestHandler(BYTE* apdu_val)
{
		PhdComState=PHD_COM_STATE_UNASSOCIATED;
		AppCB(DISCONNECTED);
	
}

