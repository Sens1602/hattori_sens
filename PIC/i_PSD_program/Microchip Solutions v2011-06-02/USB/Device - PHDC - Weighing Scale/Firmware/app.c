/********************************************************************
 FileName:      app.c
 Dependencies:  See INCLUDES section
 Processor:		PIC18, PIC24, and PIC32 USB Microcontrollers
 Hardware:		This demo is natively intended to be used on Microchip USB demo
 				boards supported by the MCHPFSUSB stack.  See release notes for
 				support matrix.  This demo can be modified for use on other hardware
 				platforms.
 Complier:  	Microchip C18 (for PIC18), C30 (for PIC24), C32 (for PIC32)
 Company:		Microchip Technology, Inc.

 Software License Agreement:

 The software supplied herewith by Microchip Technology Incorporated
 (the �Company�) for its PIC� Microcontroller is intended and
 supplied to you, the Company�s customer, for use solely and
 exclusively on Microchip PIC Microcontroller products. The
 software is owned by the Company and/or its supplier, and is
 protected under applicable copyright laws. All rights are reserved.
 Any use in violation of the foregoing restrictions may subject the
 user to criminal sanctions under applicable laws, as well as to
 civil liability for the breach of the terms and conditions of this
 license.

 THIS SOFTWARE IS PROVIDED IN AN �AS IS� CONDITION. NO WARRANTIES,
 WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.

********************************************************************
 File Description:

 Change History:
  Rev   Description
  ----  -----------------------------------------
  1.0   Initial release

********************************************************************/

/** I N C L U D E S **********************************************************/
#include "app.h"
#include "usb_config.h"
#include "USB/usb_function_phdc.h"
#include "USB/usb.h"
#include "phd_com_model.h"



/** Definitions ****************************************************/


/*****************************************************************************
 * Constant and Macro's
 *****************************************************************************/




/* Association Request. The agent sends the following message to the manager. This example assumes the agent is an extended
weighing scale. */

UINT8  ROM ASSOCIATION_REQUEST[ASSOCIATION_REQUEST_SIZE] = {
  
0xE2, 0x00,                         /* APDU CHOICE Type (AarqApdu) */
0x00, 0x32,                         /* CHOICE.length = 50 */
0x80, 0x00, 0x00, 0x00,             /* assoc-version */
0x00, 0x01, 0x00, 0x2A,             /* data-proto-list.count=1 | length=42*/
0x50, 0x79,                         /* data-proto-id = 20601 */
0x00, 0x26,                         /* data-proto-info length = 38 */
0x80, 0x00, 0x00, 0x00,             /* protocolVersion */
0xA0, 0x00,                         /* encoding rules = MDER or PER */
0x80, 0x00, 0x00, 0x00,             /* nomenclatureVersion */
0x40, 0x00, 0x00, 0x00,             /* functionalUnits |
                                      no test association capabilities */
0x00, 0x80, 0x00, 0x00,             /* systemType = sys-type-agent */
0x00, 0x08,                         /* system-id length = 8 and value
                                     (manufacturer- and device- specific) */
0x4C, 0x4E, 0x49, 0x41, 0x47, 0x45, 0x4E, 0x54,
//0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
0x05, 0xDC,                         /* dev-config-id | extended configuration*/
0x00, 0x01,                         /* data-req-mode-flags */
0x01, 0x00,                         /* data-req-init-agent-count,
                                      data-req-init-manager-count */
0x00, 0x00, 0x00, 0x00              /* Atribute list */
};

/* Configuration information exchange. The agent reports its configuration to the manager */

UINT8  ROM CONFIG_EVENT_REPORT[CONFIG_EVENT_REPORT_SIZE] = {
0xE7, 0x00,                           /* APDU CHOICE Type (PrstApdu) */
0x00, 0xA2,                           /* CHOICE.length = 162 */
0x00, 0xA0,                           /* OCTET STRING.length = 160 */
0x00, 0x02,                           /*  invoke-id = 0x1235 (start of DataApdu
                                          . MDER encoded.) */
0x01, 0x01,                           /*  CHOICE(Remote Operation Invoke |
                                          Confirmed Event Report) */
0x00, 0x9A,                           /*  CHOICE.length = 154 */
0x00, 0x00,                           /*  obj-handle = 0 (MDS object) */
0xFF, 0xFF, 0xFF, 0xFF,               /*  event-time = 0xFFFFFFFF    */
0x0D, 0x1C,                           /*  event-type = MDC_NOTI_CONFIG */
0x00, 0x90,                           /*  event-info.length = 144 (start of
                                          ConfigReport) */
0x05, 0xDC,                           /*  config-report-id */
0x00, 0x03,                           /*  config-obj-list.count = 3 Measurement
                                          objects will be announced */
0x00, 0x8A,                           /*  config-obj-list.length = 138 */
0x00, 0x06,                           /*  obj-class = MDC_MOC_VMO_METRIC_NU */
0x00, 0x01,                           /*  obj-handle = 1 (.. 1st Measurement is
                                          body weight) */
0x00, 0x04,                           /*  attributes.count = 4  */
0x00, 0x24,                           /*  attributes.length = 36  */
0x09, 0x2F,                           /*  attribute-id = MDC_ATTR_ID_TYPE */
0x00, 0x04,                           /*  attribute-value.length = 4      */
0x00, 0x02, 0xE1, 0x40,               /*  0xE1 0x40 MDC_PART_SCADA |
                                          MDC_MASS_BODY_ACTUAL */
0x0A, 0x46,                           /*  attribute-id =
                                          MDC_ATTR_METRIC_SPEC_SMALL      */
0x00, 0x02,                           /*  attribute-value.length = 2  */
0xF0, 0x40,                           /*  intermittent, stored data, upd & msmt
                                          aperiodic, agent init, measured */
0x09, 0x96,                           /*  attribute-id = MDC_ATTR_UNIT_CODE */
0x00, 0x02,                           /*  attribute-value.length = 2 */
0x06, 0xC3,                           /*  MDC_DIM_KILO_G             */
0x0A, 0x55,                           /*  attribute-id =
                                          MDC_ATTR_ATTRIBUTE_VAL_MAP  */
0x00, 0x0C,                           /*  attribute-value.length = 12     */
0x00, 0x02,                           /*  AttrValMap.count = 2         */
0x00, 0x08,                           /*  AttrValMap.length = 8          */
0x0A, 0x56, 0x00, 0x04,               /*  MDC_ATTR_NU_VAL_OBS_SIMP |
                                          value length = 4   */
0x09, 0x90, 0x00, 0x08,               /*  MDC_ATTR_TIME_STAMP_ABS |
                                          value length = 8     */
0x00, 0x06,                           /*  obj-class = MDC_MOC_VMO_METRIC_NU */
0x00, 0x02,                           /*  obj-handle = 2 (..2nd Measurement
                                          is body height) */
0x00, 0x04,                           /*  attributes.count = 4   */
0x00, 0x24,                           /*  attributes.length = 36   */
0x09, 0x2F,                           /*  attribute-id = MDC_ATTR_ID_TYPE */
0x00, 0x04,                           /*  attribute-value.length = 4  */
0x00, 0x02, 0xE1, 0x44,               /*  MDC_PART_SCADA |
                                          MDC_LEN_BODY_ACTUAL */
0x0A, 0x46,                           /*  attribute-id =
                                          MDC_ATTR_METRIC_SPEC_SMALL   */
0x00, 0x02,                           /*  attribute-value.length = 2   */
0xF0, 0x48,                           /*  intermittent, stored data, upd & msmt
                                          aperiodic, agent init, manual */
0x09, 0x96,                           /*  attribute-id = MDC_ATTR_UNIT_CODE*/
0x00, 0x02,                           /*  attribute-value.length = 2*/
0x05, 0x11,                           /*  MDC_DIM_CENTI_M            */
0x0A, 0x55,                           /*  attribute-id =
                                          MDC_ATTR_ATTRIBUTE_VAL_MAP */
0x00, 0x0C,                           /*  attribute-value.length = 12 */
0x00, 0x02,                           /*  AttrValMap.count = 2*/
0x00, 0x08,                           /*  AttrValMap.length = 8*/
0x0A, 0x56, 0x00, 0x04,               /*  MDC_ATTR_NU_VAL_OBS_SIMP, 4 */
0x09, 0x90, 0x00, 0x08,               /*  MDC_ATTR_TIME_STAMP_ABS, 8 */
0x00, 0x06,                           /*  obj-class = MDC_MOC_VMO_METRIC_NU*/
0x00, 0x03,                           /*  obj-handle = 3 (..3rd Measurement
                                          is body mass index) */
0x00, 0x05,                           /*  attributes.count = 5*/
0x00, 0x2A,                           /*  attributes.length = 42*/
0x09, 0x2F,                           /*  attribute-id = MDC_ATTR_ID_TYPE */
0x00, 0x04,                           /*  attribute-value.length = 4 */
0x00, 0x02, 0xE1, 0x50,               /*  MDC_PART_SCADA |
                                          MDC_RATIO_MASS_BODY_LEN_SQ    */
0x0A, 0x46,                           /*  attribute-id =
                                          MDC_ATTR_METRIC_SPEC_SMALL       */
0x00, 0x02,                           /*  attribute-value.length = 2    */
0xF0, 0x42,                           /*  intermittent, stored data, upd &
                                      msmt aperiodic, agent init, calculated */
0x09, 0x96,                           /*  attribute-id = MDC_ATTR_UNIT_CODE*/
0x00, 0x02,                           /*  attribute-value.length = 2       */
0x07, 0xA0,                           /*  MDC_DIM_KG_PER_M_SQ               */
0x0A, 0x47,                           /*  attribute-id =
                                          MDC_ATTR_SOURCE_HANDLE_REF        */
0x00, 0x02,                           /*  attribute-value.length = 2 */
0x00, 0x01,                           /*  reference handle = 1         */
0x0A, 0x55,                           /*  attribute-id =
                                          MDC_ATTR_ATTRIBUTE_VAL_MAP*/
0x00, 0x0C,                           /*  attribute-value.length = 12  */
0x00, 0x02,                           /*  AttrValMap.count = 2          */
0x00, 0x08,                           /*  AttrValMap.length = 8         */
0x0A, 0x56, 0x00, 0x04,               /*  MDC_ATTR_NU_VAL_OBS_SIMP, 4   */
0x09, 0x90, 0x00, 0x08                /*  MDC_ATTR_TIME_STAMP_ABS, 8   */
};

/*Release Request APDU */

UINT8  ROM RELEASE_REQUEST[RELEASE_REQUEST_SIZE] = {
0xE4, 0x00,                           /* APDU CHOICE Type (RlrqApdu) */
0x00, 0x02,                           /* CHOICE.length = 2 */
0x00, 0x00                            /* reason = normal */
};

/* Release Response APDU */

UINT8  ROM RELEASE_RESPONSE[RELEASE_RESPONSE_SIZE] = {
0xE5, 0x00,                           /* APDU CHOICE Type (RlrsApdu) */
0x00, 0x02,                           /* CHOICE.length = 2 */
0x00, 0x00                            /* reason = normal */
};


/* Abort APDU */

UINT8  ROM ABORT[ABORT_SIZE] = {
0xE6, 0x00,                           /* APDU CHOICE Type (RlrsApdu) */
0x00, 0x02,                           /* CHOICE.length = 2 */
0x00, 0x02                            /* reason = normal */
};

/* Get Attributes Response. The agent responds to the manager with its attributes. This example assumes the agent supports
AbsoluteTime, but does not support RelativeTime. Further, some optional fields are communicated as well. */
UINT8  ROM GET_ATTR_RESPONSE[GET_ATTR_RESPONSE_SIZE] = {
0xE7, 0x00,                      /* APDU CHOICE Type (PrstApdu) */
0x00, 0x6E,                      /* CHOICE.length = 110 */
0x00, 0x6C,                      /* OCTET STRING.length = 108 */
0x00, 0x02,                      /* invoke-id =0x0002 (mirrored from request)*/
0x02, 0x03,                      /* CHOICE (Remote Operation Response | Get)*/
0x00, 0x66,                      /* CHOICE.length = 102                     */
0x00, 0x00,                      /* handle = 0 (MDS object)                */
0x00, 0x06,                      /* attribute-list.count = 6               */
0x00, 0x60,                      /* attribute-list.length = 96              */
0x0A, 0x5A,                      /* attribute id=MDC_ATTR_SYS_TYPE_SPEC_LIST */
0x00, 0x08,                      /* attribute-value.length = 8              */
0x00, 0x01,                      /* TypeVerList count = 1                   */
0x00, 0x04,                      /* TypeVerList length = 4                  */
0x10, 0x0F,                      /* type = MDC_DEV_SPEC_PROFILE_SCALE  */
0x00, 0x01,                      /* version=ver 1 of the specialization  */
0x09, 0x28,                      /* attribute-id = MDC_ATTR_ID_MODEL    */
0x00, 0x1A,                      /* attribute-value.length = 26        */
0x00, 0x0A, 0x4D, 0x49,          /* string length = 10 | TheCompany  */
0x43, 0x52, 0x4f, 0x43,
0x48, 0x49, 0x50,0x00, 
0x00, 0x0C, 0x54, 0x68,          /* string length = 12 | TheScaleABC\0    */
0x65, 0x53, 0x63, 0x61,
0x6C, 0x65,0x41,0x42,0x43,0x00, 
0x09, 0x84,                      /* attribute-id = MDC_ATTR_SYS_ID        */
0x00, 0x0A,                      /* attribute-value.length = 10            */
0x00, 0x08, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77, 0x88,
                                 /* octet string length = 8 | EUI-64  */
0x0a, 0x44,                      /* attribute-id = MDC_ATTR_DEV_CONFIG_ID   */
0x00, 0x02,                      /* attribute-value.length = 2             */
0x40, 0x00,                      /* dev-config-id = 16384
                                    (extended-config-start)*/
0x09, 0x2D,                      /* attribute-id = MDC_ATTR_ID_PROD_SPECN */
0x00, 0x12,                      /* attribute-value.length = 18           */
0x00, 0x01,                      /* ProductionSpec.count = 1              */
0x00, 0x0E,                      /* ProductionSpec.length = 14             */
0x00, 0x01,                      /* ProdSpecEntry.spec-type=1(serial-number)*/
0x00, 0x00,                      /* ProdSpecEntry.component-id = 0     */
0x00, 0x08, 0x44, 0x45,          /* string length = 8 |
                                    prodSpecEntry.prod-spec = DE124567 */
0x31, 0x32, 0x34, 0x35,
0x36, 0x37,
0x09, 0x87,                      /* attribute-id =MDC_ATTR_TIME_ABS */
0x00, 0x08,                      /* attribute-value.length = 8  */
0x20, 0x09, 0x06, 0x12,          /* Absolute-Time-Stamp=2009-06-12T12:05:0000*/
0x12, 0x05, 0x00, 0x00
};

/* Agent-initiated measurement data transmission. The agent sends a spontaneous event report to the 
   manager with measurement observations */
UINT8  ROM MEASUREMENT_DATA[MEASUREMENT_DATA_SIZE] = {
0xE7, 0x00, /*APDU CHOICE Type (PrstApdu)*/
0x00, 0x5A, /*CHOICE.length = 90*/
0x00, 0x58, /*OCTET STRING.length = 88*/
0x12, 0x36, /*invoke-id = 0x1236*/
0x01, 0x01, /*CHOICE(Remote Operation Invoke | Confirmed Event Report)*/
0x00, 0x52, /*CHOICE.length = 82*/
0x00, 0x00, /*obj-handle = 0 (MDS object)*/
0x00, 0x00, 0x00, 0x00, /*event-time = 0*/
0x0D, 0x1D, /*event-type = MDC_NOTI_SCAN_REPORT_FIXED*/
0x00, 0x48, /*event-info.length = 72*/
0xF0, 0x00, /*ScanReportInfoFixed.data-req-id = 0xF000*/
0x00, 0x00, /*ScanReportInfoFixed.scan-report-no = 0*/
0x00, 0x04, /*ScanReportInfoFixed.obs-scan-fixed.count = 4*/
0x00, 0x40, /*ScanReportInfoFixed.obs-scan-fixed.length = 64*/
0x00, 0x01, /*ScanReportInfoFixed.obs-scan-fixed.value[0].obj-handle = 1*/
0x00, 0x0C, /*ScanReportInfoFixed.obs-scan-fixed.value[0]. obs-val-data.length
              = 12*/
0xFF, 0x00, 0x02, 0xFA, /*Simple-Nu-Observed-Value = 76.2 (kg)*/
0x20, 0x11, 0x04, 0x06, /*Absolute-Time-Stamp = 2011-04-06T12:10:0000*/
0x12, 0x10, 0x00, 0x00,
0x00, 0x03, /* ScanReportInfoFixed.obs-scan-fixed.value[1].obj-handle = 3*/
0x00, 0x0C, /* ScanReportInfoFixed.obs-scan-fixed.value[1]. obs-val-data.length
               = 12*/
0xFF, 0x00, 0x00, 0xF3, /* Simple-Nu-Observed-Value = 24.3 (kg/m2)*/
0x20, 0x11, 0x04, 0x06, /*Absolute-Time-Stamp = 2011-04-06T12:10:0000*/
0x12, 0x10, 0x00, 0x00,
0x00, 0x01, /*ScanReportInfoFixed.obs-scan-fixed.value[0].obj-handle = 1*/
0x00, 0x0C, /*ScanReportInfoFixed.obs-scan-fixed.value[0]. obs-val-data.length
            = 12*/
0xFF, 0x00, 0x02, 0xF8, /*Simple-Nu-Observed-Value = 76.0 (kg)*/
0x20, 0x11, 0x04, 0x06, /*Absolute-Time-Stamp = 2011-04-06T20:05:0000*/
0x20, 0x05, 0x00, 0x00,
0x00, 0x03, /*ScanReportInfoFixed.obs-scan-fixed.value[1].obj-handle = 3*/
0x00, 0x0C, /*ScanReportInfoFixed.obs-scan-fixed.value[1]. obs-val-data.length
                = 12*/
0xFF, 0x00, 0x00, 0xF2, /*Simple-Nu-Observed-Value = 24.2 (kg/m2)*/
0x20, 0x11, 0x04, 0x06, /*Absolute-Time-Stamp = 2011-04-06T20:05:0000*/
0x20, 0x05, 0x00, 0x00
};




/** V A R I A B L E S ********************************************************/
#pragma udata

volatile BOOL buttonPressedsw2;
volatile BOOL buttonPressedsw3;
volatile BYTE buttonCountsw2;
volatile BYTE buttonCountsw3;

static UINT8 AppState = INITIALIZED;
static BOOL connectionUnderProgress = FALSE,dataSendingUnderProgress = FALSE;

/** P R I V A T E  P R O T O T Y P E S ***************************************/


static void PhdComToAppCb(UINT8);

/******************************************************************************
 * Function:        void ApplicationInit(void)
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
 *                  Also a call back function is sent to the PHD_COM layer.
 *
 * Note:            
 *
 *****************************************************************************/
void ApplicationInit()
{
	PHDCAppInit(PhdComToAppCb);	
}

/******************************************************************************
 * Function:        void ApplicationTask(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine is called periodically from the main.
 *
 * Note:            
 *
 *****************************************************************************/
void ApplicationTask(void)
{

#if defined(PIC18F46J50_PIM) || defined(PIC18F_STARTER_KIT_1) || defined(PIC18F47J53_PIM) || defined (PIC18F87J50_PIM) || defined(LOW_PIN_COUNT_USB_DEVELOPMENT_KIT)
// The above demo borads have only one pushbutton. The demo works the following way for all the above demo boards. If the pushbutton is pressed for the first time
// then the Weig Scale Agent sends an Association request to the  Manager. If the push button is pressed for the second time the Agent sends some measured data 
// to the Manager. If the Pushbutton is pressed for the third time the Agent disconnects from the Manager. 
    static BOOL dataSentInitiated = FALSE; 
    if (buttonPressedsw2)
    {
       if(dataSendingUnderProgress == FALSE)
       {
	       if(AppState == INITIALIZED)
		   {
		       PHDConnect();
		   }
		   else if(AppState == CONNECTED)
		   {
    		   if (dataSentInitiated == FALSE)
    		   {    
        	       dataSentInitiated = TRUE; 
    		       PHDSendMeasuredData();
    		   }     
    		   else
    		   {
        		   dataSentInitiated = FALSE; 
    		   	   AppState = DISCONNECTING;
				   PHDDisConnect();
			   }
		   }
		   dataSendingUnderProgress=TRUE;
		}
	}
	else
	{
	    dataSendingUnderProgress=FALSE;
	}

#else //for all other demo boards that has atleast two push buttons
		if(buttonPressedsw2)
		{
			if(connectionUnderProgress == FALSE)
			{
				if(AppState == INITIALIZED)
				{
					PHDConnect();
				}
				else if(AppState == CONNECTED)
				{
					AppState = DISCONNECTING;
						PHDDisConnect();
					
				}
				connectionUnderProgress=TRUE;
			}
		}
		else
		{
			connectionUnderProgress=FALSE;
		}

		if(buttonPressedsw3)
		{
			if(dataSendingUnderProgress==FALSE)
			{
				if(AppState == CONNECTED)
				{
					PHDSendMeasuredData();
				}
				dataSendingUnderProgress=TRUE;
			}
		}
		else
		{
			dataSendingUnderProgress=FALSE;
		}
 #endif 
}

/******************************************************************************
 * Function:        void PhdComToAppCb(UINT8 event)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine changes the application states based on the call back events
 *                   from the COM layer	
 *
 * Note:            
 *
 *****************************************************************************/
void PhdComToAppCb(UINT8 event)
{

	switch(event)
	{
		case CONNECTED:
		AppState=CONNECTED;
		break;
		
		case MEASUREMENT_SENT:
		AppState=CONNECTED;
		break;

		case DISCONNECTED:
		AppState = INITIALIZED;
		break;
	}
	
}


/******************************************************************************
 * Function:        void UpdateWeighScaleMeasurements(UINT8* buff_ptr)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        This routine updates the measured weigh scale values in to corresponding 
 *                  APDU locations	
 *
 * Note:            
 *
 *****************************************************************************/

void UpdateWeighScaleMeasurements(UINT8* buff_ptr)
{
	
/* User can update the Measured value from the weigh scale*/
/* Please go through IEEE_STD_11073_10415 (weigh scale device spec)*/

/*weight data */ 
	buff_ptr[36]=0x2;
	buff_ptr[37]=0x58;
	
	buff_ptr[68]=0x2;
	buff_ptr[69]=0x59;

/*BMI data */ 
	buff_ptr[52]=0x0;
	buff_ptr[53]=0xf0;
	
	buff_ptr[84]=0x0;
	buff_ptr[85]=0xf1;

}

