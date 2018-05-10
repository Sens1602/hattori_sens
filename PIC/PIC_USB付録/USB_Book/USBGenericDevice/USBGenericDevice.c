/***********************************************************
*  �ėp�f�o�C�X�N���X���g���������[�gI/O
*  �@�f�W�^�����o�͂ƃA�i���O����
************************************************************/

/** �t�@�C���C���N���[�h **************************/
#include "USB/usb.h"
#include "USB/usb_function_generic.h"
#include "HardwareProfile.h"
#include "GenericTypeDefs.h"
#include "usb_config.h"
/** �R���t�B�M�����[�V�����@***********************/
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PWRTEN = ON, BOREN = OFF, MCLRE = ON, BORV = 30
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF

/*** �X�e�[�g�萔��` ***/
typedef enum
{
    CHECK	= 0x30,
	POUT	= 0x31,
	ALL		= 0x34,
    RESET	= 0xFF

}TYPE_CMD;
/******** USB�֘A�o�b�t�@�A�ϐ���` ****/
#pragma udata usbram2
BYTE INPacket[USBGEN_EP_SIZE];	// USB���M�o�b�t�@
BYTE OUTPacket[USBGEN_EP_SIZE];	// USB��M�o�b�t�@
#pragma udata
USB_HANDLE USBGenericOutHandle;
USB_HANDLE USBGenericInHandle;
/**** �ϐ���`�@***/
BYTE  counter;
BOOL  blinkStatusValid;
/** �֐��v���g�^�C�s���O ****************************/
void USBDeviceTasks(void);
void YourHighPriorityISRCode(void);
void YourLowPriorityISRCode(void);
void USBCBSendResume(void);
void BlinkUSBStatus(void);
void ProcessIO(void);
/************ ���荞�݃x�N�^��` ***********/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void)
{
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void)
{
     _asm goto YourLowPriorityISRCode _endasm
}
/************* ���荞�ݏ����֐� ************/
#pragma code
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode()
{
        USBDeviceTasks();
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}

/***********  ���C���֐� ***************************/
#pragma code
void main(void)
{   
	/* IO�s�������ݒ�@*/
	ANSEL = 0x70;					// AN4,5,6�ȊO�f�W�^���ɐݒ�
	ANSELH =0x00;	
	TRISA = 0xFF;					// RA0-5����
	TRISB = 0xFF;					// RB���ׂē���
	LATC = 0;						// �o�͏�����
	TRISC = 0x07;					// RC0,1,2�A�i���O���́ARC3-7�o��
	/* ADC������ */
	ADCON0 = 0;						// ��~
	ADCON1 = 0;						// VDD-Vss
	ADCON2 = 0xBE;					// �E�l��,20Tad,Fosc/64
	/* USB�֘A **/
	USBDeviceInit();				// USB������	
	USBGenericInHandle = 0;	
	USBGenericOutHandle = 0;
	blinkStatusValid = TRUE;		// USB�ڈ�LED�L����
	/** USB�A�^�b�`���Ɗ��荞�݋��� */
	USBDeviceAttach();

	/*********** ���C�����[�v ***************/
    while(1)
    {
		/** USB�ڈ�LED�_�� **/
		if(blinkStatusValid)
			BlinkUSBStatus();		// LED�_�Ŏ��s
			
		/*** USB�ڑ����Ȃ瑗��M���s ***/
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1))
			ProcessIO();			// ���[�U�[�A�v�����s
	}
}
/***************************************************
 * ���[�U�[�A�v���A���o�͏����֐�
 * USB����̃R�}���h�ɂ��@�\���s
 ***************************************************/
void ProcessIO(void)
{
	/***** �f�[�^��M���� ******/
	if(!USBHandleBusy(USBGenericOutHandle))		// ��M�������H
	{        
		/** ��M�f�[�^���o�� **/
		blinkStatusValid = FALSE;				// USB�ڈ�LED���~
		counter = 0;							// ���M�o�C�g�����Z�b�g
		INPacket[0] = OUTPacket[0];				// �G�R�[�o�b�N
		INPacket[1] = OUTPacket[1];			
		/******** �R�}���h�̏��� ********/
		switch(OUTPacket[0])					// �R�}���h�R�[�h�`�F�b�N
		{
			/** �ڑ��m�FOK���� **/
			case CHECK:
				INPacket[2] = 'O';
				INPacket[3] = 'K';
				counter=0x04;						// ���M�o�C�g��4
				break;
			/** �o�̓s���o�͗v���Ə�ԉ����̏ꍇ ***/
			case POUT:
				if(OUTPacket[1] == 0x31){			// DO�A�h���X1
					if(OUTPacket[2] == 0x31)		// �I�����䂩�H
					{	mPO_1_On();		}			// �I������
					else if(OUTPacket[2] == 0x30)	// �I�t���䂩�H
					{	mPO_1_Off();	}			// �I�t����
					counter = 0x04;					// ���M�o�C�g��4					
					INPacket[2] = mPIO_1 + 0x30;	// ��ԉ����Z�b�g
				}
				else if(OUTPacket[1] == 0x32){
					if(OUTPacket[2] == 0x31)
					{	mPO_2_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_2_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_2 + 0x30;
				}
				else if(OUTPacket[1] == 0x33){
					if(OUTPacket[2] == 0x31)
					{	mPO_3_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_3_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_3 + 0x30;
				}
				else if(OUTPacket[1] == 0x34){
					if(OUTPacket[2] == 0x31)
					{	mPO_4_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_4_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_4 + 0x30;
				}
				else if(OUTPacket[1] == 0x35){
					if(OUTPacket[2] == 0x31)
					{	mPO_5_On();		}
					else if(OUTPacket[2] == 0x30)
					{	mPO_5_Off();	}
					counter = 0x04;					
					INPacket[2] = mPIO_5 + 0x30;
				}
				break;
				
			/**** �ꊇ�]�� **************/
			case ALL:
				/* DI��ԃZ�b�g */
				if(mPI_1)						// DI��ԃI�t���H
					INPacket[2] = 0x30;			// �I�t�����Z�b�g
				else
					INPacket[2] = 0x31;			// �I�������Z�b�g
				if(mPI_2)
					INPacket[3] = 0x30;
				else
					INPacket[3] = 0x31;
				if(mPI_3)
					INPacket[4] = 0x30;
				else
					INPacket[4] = 0x31;
				if(mPI_4)
					INPacket[5] = 0x30;
				else
					INPacket[5] = 0x31;	
				/* �v���f�[�^�Z�b�g */
				ADCON0 = 0x11;					// AN4�I��
				ADCON0bits.GO = 1;              // A/D�ϊ��J�n
				while(ADCON0bits.NOT_DONE);     // �ϊ������҂�
				INPacket[6] = ADRESL;			// ���M�o�b�t�@�ɃZ�b�g
				INPacket[7] = ADRESH;						
				ADCON0 = 0x15;					// AN5�I��
				ADCON0bits.GO = 1;              // A/D�ϊ��J�n
				while(ADCON0bits.NOT_DONE);     // �ϊ������҂�
				INPacket[8] = ADRESL;			// ���M�o�b�t�@�ɃZ�b�g
				INPacket[9] = ADRESH;
				ADCON0 = 0x19;					// AN6�I��
				ADCON0bits.GO = 1;              // A/D�ϊ��J�n
				while(ADCON0bits.NOT_DONE);     // �ϊ������҂�
				INPacket[10] = ADRESL;			// ���M�o�b�t�@�ɃZ�b�g
				INPacket[11] = ADRESH;
				counter = 12;
				break;
																	
			/** ���Z�b�g�f�o�C�X�@***/
			case RESET:
				Reset();
				break;
			/*** �s�� ****/
			default:
				Nop();
				break;
		}
		/**** USB����M���s  *****/
		if(counter != 0)								// ���M�f�[�^���肩�H
		{
			if(!USBHandleBusy(USBGenericInHandle))		// �r�W�[�`�F�b�N
			{	/* ���M���s�@*/
				USBGenericInHandle = USBGenWrite(USBGEN_EP_NUM,(BYTE*)&INPacket,64);
			}
		}
		/* ���̎�M���s */
		USBGenericOutHandle = USBGenRead(USBGEN_EP_NUM,(BYTE*)&OUTPacket,USBGEN_EP_SIZE);
	}
}

/****************************************************
 * USB��ԕ\���pLED�u�����N�����֐�
 *  USB�A�^�b�`�F�����u�����N
 *  SUB�ڑ������F�ᑬ�u�����N
 ***************************************************/
void BlinkUSBStatus(void)
{
	static WORD led_count=0;
	
	if(led_count == 0)led_count = 10000U;
	led_count--;
	#define mLED_Both_Off()         {mLED_1_Off();mLED_2_Off();}
	#define mLED_Both_On()          {mLED_1_On();mLED_2_On();}
	#define mLED_Only_1_On()        {mLED_1_On();mLED_2_Off();}
	#define mLED_Only_2_On()        {mLED_1_Off();mLED_2_On();}
	if(USBSuspendControl == 1)
	{
		if(led_count==0)
		{
			mLED_1_Toggle();
			if(mGetLED_1())
			{	mLED_2_On();	}
			else
			{	mLED_2_Off();	}
		}
	}
	else
	{
		if(USBDeviceState == DETACHED_STATE)
		{	mLED_Both_Off();	}
		else if(USBDeviceState == ATTACHED_STATE)
		{	mLED_Both_On();		}
		else if(USBDeviceState == POWERED_STATE)
		{	mLED_Only_1_On();	}
		else if(USBDeviceState == DEFAULT_STATE)
		{	mLED_Only_2_On();	}
		else if(USBDeviceState == ADDRESS_STATE)
		{
			if(led_count == 0){
				mLED_1_Toggle();
				mLED_2_Off();
			}
		}
		else if(USBDeviceState == CONFIGURED_STATE)	{
			if(led_count==0){      
				mLED_1_Toggle();
				if(mGetLED_1())
				{	mLED_2_Off();	}
				else
				{	mLED_2_On();	}
			}
		}
	}
}

/******************************************************************
************** USB Callback Functions *****************************
*******************************************************************/
/******************************************************************
 * Function:        void USBCBSuspend(void)
 ******************************************************************/
void USBCBSuspend(void)
{
}
/*******************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *******************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/********************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *******************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*******************************************************************
 * Function:        void USBCBErrorHandler(void)
 *******************************************************************/
void USBCBErrorHandler(void)
{
}
/*******************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *******************************************************************/
void USBCBCheckOtherReq(void)
{
}//end
/*******************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *******************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*******************************************************************
 * Function:        void USBCBInitEP(void)
 *******************************************************************/
void USBCBInitEP(void)
{
    USBEnableEndpoint(USBGEN_EP_NUM,USB_OUT_ENABLED|USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    USBGenericOutHandle = USBGenRead(USBGEN_EP_NUM,(BYTE*)&OUTPacket,USBGEN_EP_SIZE);
}
/*******************************************************************
 * Function:        void USBCBSendResume(void)
 ******************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;

    if(USBGetRemoteWakeupStatus() == TRUE) 
    {
        //Verify that the USB bus is in fact suspended, before we send
        //remote wakeup signalling.
        if(USBIsBusSuspended() == TRUE)
        {
            USBMaskInterrupts();
            
            //Clock switch to settings consistent with normal USB operation.
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  //So we don't execute this code again, 

            delay_count = 3600U;
            do
            {
                delay_count--;
            }while(delay_count);
            
            //Now drive the resume K-state signalling onto the USB bus.
            USBResumeControl = 1;       // Start RESUME signaling
            delay_count = 1800U;        // Set RESUME line for 1-13 ms
            do
            {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       //Finished driving resume signalling

            USBUnmaskInterrupts();
        }
    }
}
/*******************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 *******************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_TRANSFER:
            break;
        case EVENT_SOF:
            USBCB_SOF_Handler();
            break;
        case EVENT_SUSPEND:
            USBCBSuspend();
            break;
        case EVENT_RESUME:
            USBCBWakeFromSuspend();
            break;
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
        case EVENT_SET_DESCRIPTOR:
            USBCBStdSetDscHandler();
            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
        case EVENT_BUS_ERROR:
            USBCBErrorHandler();
            break;
        case EVENT_TRANSFER_TERMINATED:

            break;
        default:
            break;
    }      
    return TRUE; 
}

