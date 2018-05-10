/**************************************************************
* USB�ڑ��@���g���A�i���C�U  USB�t���[�����[�N�X�V��
* �@�\�F���g�����������@�@�@PIC18F2550
*�@ PIC18F2550�ƍ����\DDS�ł���AD9851����Ƀ��O�A���v��AD8307��
*�@ �����\�Ȏ��g�������̎���������s�����u���\������@
***************************************************************/
/** �C���N���[�h�t�@�C���錾 *************/
#include "./USB/usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "HardwareProfile.h"
#include <delays.h>
#include <math.h>

/****** �R���t�B�M�����[�V�����ݒ� ******************/
#pragma config FOSC=HSPLL_HS, PLLDIV=5, CPUDIV=OSC1_PLL2 
#pragma config USBDIV=2, PWRT=ON, FCMEN=ON, IESO=ON
#pragma config BOR=ON, BORV=0, WDT=OFF, LVP=OFF, VREGEN=ON
#pragma config MCLRE=ON, PBADEN=OFF, WDTPS=1024
#pragma config LPT1OSC=OFF, CCP2MX=OFF, DEBUG=OFF

#pragma config CP0=OFF, CP1=OFF, CP2=OFF, CP3=OFF, CPB=OFF
#pragma config CPD=OFF, WRT0=OFF, WRT1=OFF, WRT2=OFF, WRT3=OFF
#pragma config WRTB=OFF, WRTC=OFF, WRTD=OFF, EBTR0=OFF
#pragma config EBTR1=OFF, EBTR2=OFF, EBTR3=OFF, EBTRB=OFF

/****** �O���[�o���ϐ��錾��` ************************/
#pragma udata
float Freq;
int i, j;
unsigned char mask;	
unsigned int Result;
float Para;
/* ���g���ݒ�l 4�o�C�g */
union{
	unsigned long	Phase;			// ���g���ݒ�l
	unsigned char	iPhase[4];
} DDSdata;
float logData0,logData1;			// dB�l
char input_buffer[64];				// USB���̓o�b�t�@
char output_buffer[64];				// USB�o�̓o�b�t�@
char MsgTX[] = "CH0=+xx.x  CH1=+xx.x\r\n";
BOOL blinkStatusValid;				// USB�ڑ���ԕ\���t���O

/***** �֐��v���g�^�C�s���O ****************************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void BlinkUSBStatus(void);
void USBCBSendResume(void);
void ProcessIO(void);
void itostring(char digit, unsigned int data, char *buffer);
void serial_out(float data);
void ftostring(int seisu, int shousu, float data, char *buffer);

/****** ���荞�݃x�N�^��` *************/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void)
{     _asm goto YourHighPriorityISRCode _endasm		}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void)
{     _asm goto YourLowPriorityISRCode _endasm	}
	
#pragma code
/***+*** ���荞�ݏ����֐� *****************/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        USBDeviceTasks();
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode(){
}	

#pragma code
/*********** ���C���֐�  *********************/
void main(void)
{
	TRISA = 0x03;						// RA0,1�̂ݓ���
	TRISB = 0;							// �S���o��
	TRISC = 0x18;						// D+.D-�ȊO�S���o��
	LATA = 0;							// �|�[�g�S�N���A
	LATB = 0;
	LATC = 0;
	// A/D�R���o�[�^�����ݒ�
	ADCON0 = 0x00;						// AD off
	ADCON1 = 0x0D;						// AN0,1 Analog Vss-Vdd
	ADCON2 = 0xA6;						// Right,12Tad,1/64
	/*** DDS�̐ݒ萧�� �V���A�����[�h�ɐݒ�	***/
	Freq = 10000.0;		
	RST = 1;							// RESET�o��
	Delay10TCYx(1);
	RST = 0;
	W_CLK =1;							// W0���[�h
	W_CLK = 0;
	FQ_UD = 1;							// �V���A�����[�h�ݒ�
	FQ_UD = 0;
	serial_out(Freq);					// �����o�͐ݒ�
	/* USB������ */	
    USBDeviceInit();					// USB������.
	blinkStatusValid = TRUE;			// LED�u�����N���� 
	/******  ���C�����[�v **********/
    while(1)
    {
	    /* USB�ڑ������҂� */
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();			// USB�ڑ�����
		if(blinkStatusValid)
			BlinkUSBStatus();			// USB���LED�\��
			
		/* �f�o�C�X�ڑ���ԂȂ�@�\���s */
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
		}
    } 
}

/******************************************************************************
* ���[�U�[�A�v���֐�
*  USB��M�R�}���h�����֐�
*****************************************************************************/
void ProcessIO(void)
{
	/*** �R�}���h���͂Ə���  ***/
 	if(getsUSBUSART(input_buffer,48)){				// �f�[�^��M�|�[��
		mLED_1_Toggle();							// LED���]
  		switch(input_buffer[0])	{					// �ŏ��̂P�����`�F�b�N
   			case '0':	  							// �����ݒ�ƃI�[�v��
				blinkStatusValid = FALSE;			// LED�u�����N�֎~
        	   		if(USBUSARTIsTxTrfReady())		// ���M�\���H
     			 	putrsUSBUSART("OK");			// OK�f�[�^���M�w��
     			break;         			 	
   			case '1':								// �����ݒ�
				Freq = atof(&input_buffer[1]);		// �����f�[�^�擾
				serial_out(Freq); 					// DDS�ɏo��
     		 	break;
        	case '2':								// �f�[�^���ڑ��M
				/*** �`���l��0����  ****/
				ADCON0 = 0x01;						// �`���l��0�I��
				ADCON0bits.GO = 1;					// �ϊ��J�n
				while(ADCON0bits.GO);				// �ϊ��I���҂�
				Result = ADRESH*256 + ADRESL;		// CH0����
				/* dB�ɕϊ��@Vref=4.73V�@0dB=2.19V�Ŏ��������l
				   40dB*4.73/1024=0.185 		 */
   				logData0 = 0.219*Result - 87.0;		// dB�ɕϊ��iIC�����l�j
				if(logData0 < 0){					// �����H
					MsgTX[4] = '-';					// -�L���Z�b�g
					logData0 = fabs(logData0);		// ��Βl�ɕϊ�
				}
				else
					MsgTX[4] = '+';
  				ftostring(2, 1, logData0, MsgTX+5);	// ���̒l�̃Z�b�g
				/** �`���l��1����  *****/
				ADCON0 = 0x05;						// �`���l��1�I��
				ADCON0bits.GO = 1;					// �ϊ��J�n
				while(ADCON0bits.GO);				// �ϊ��I���҂�
				Result = ADRESH*256 + ADRESL;		// CH1����
				logData1 = 0.219*Result - 87.0;		// dB�ɕϊ��iIC�����l�j
				if(logData1 < 0){					// �����H
					MsgTX[15] = '-';				// -�L���Z�b�g
					logData1 = fabs(logData1);		// ��Βl�ɕϊ�
				}
				else
					MsgTX[15] = '+';
		       	ftostring(2, 1, logData1, MsgTX+16);// ���̒l�ɃZ�b�g
				/* USB���M���s */
      		   	if(USBUSARTIsTxTrfReady())			// ���M�\���H
     		   	 	putUSBUSART(MsgTX, 22);			// ���M�w��
        			break;

	   		default:
        	   		if(USBUSARTIsTxTrfReady())		// ���M�\���H
     			 	putrsUSBUSART("NG");			// NG�f�[�^���M�w��
	   			 	break;			
	 	}
		CDCTxService();								// ���M���s
	}
}
/***********************************************************
* AD9851�@�����\DDS����֐�
* �@DDS�ւ̑��M�t�H�[�}�b�g�͉��L����
* �@ W0  Freq bit0(LSB)
* �@ W1  Freq bit1�@�@�@Freq= (�ݒ�l�~�N���b�N)��2��32��
* �@ ------------                            (4,294,967,296)
* �@ W31 Freq bit31(MSB)
* �@ W32 x6 REFCLK Multiplier Enable
*  �@W33 0
*  �@W34 Power Down at 1
*  �@W35 Phase bit0(LSB)   360�x/32�Ŏw��
*  �@--------------
*  �@W39 Phase bit4(MSB)
*  �N���b�N��24MHz�~6=144MHz �@�@�@�@0.0335Hz�P�ʂ̐ݒ�
***********************************************************/
void serial_out(float data){
	/* ���g���ݒ萧����s ���ۂ̎��g��143.9958�ŕ␳�@*/
	Para = 29.82703 * data;				// 2��32�恀144MHz=29.82616
	DDSdata.Phase = (long)Para;			//
	/*�@���g���l32�r�b�g�o�͂��� */
	for(i=0; i<4; i++)	{
		mask = 0x01;					// �r�b�g�}�X�N�̏����ݒ�
		for(j=0; j<8; j++){
			if(DDSdata.iPhase[i] & mask)
				S_IN =1;
			else
				S_IN = 0;
			W_CLK =1;					// �r�b�g���M�N���b�N
			W_CLK = 0;
			mask = mask << 1;			// �r�b�g�}�X�N�̃r�b�g�V�t�g
		}
	}
	/* �ݒ萧��8�r�b�g�o�� */
	mask = 0x01;						// �r�b�g�}�X�N�̏����ݒ�
	for(j=0; j<8; j++)	{
		if(0x01 & mask)					// �U�{���[�h�̂�
			S_IN = 1;
		else
			S_IN = 0;
		W_CLK = 1;						// �r�b�g���M�N���b�N
		W_CLK = 0;
		mask = mask << 1;				// �r�b�g�}�X�N�̂P�r�b�g�V�t�g
	}
	FQ_UD = 1;							// ���g���l���[�h�w��
	FQ_UD = 0;	
	FQ_UD = 0;	
}
/******************************************************************************
 * int ���l���當����ɕϊ�
 *****************************************************************************/
void itostring(char digit, unsigned int data, char *buffer)
{
	char i;
	buffer += digit;						// ������̍Ō�
	for(i=digit; i>0; i--) {				// �ŉ��ʌ������ʂ�
		buffer--;						// �|�C���^�[�P
		*buffer = (data % 10) + '0';		// ���̌����l�𕶎��ɂ��Ċi�[
		data = data / 10;					// ��-1
	}
}
/******************************************************************************
 * Float���l���當����֕ϊ�
 *�@���v�L�����͂T���ȉ��Ƃ��邱��
 *****************************************************************************/
void ftostring(int seisu, int shousu, float data, char *buffer)
{
	unsigned int i, dumy;

	if(shousu != 0)						// �����������肩
		buffer += seisu+shousu+1;			// �S�̌����{�����_
	else								// ���������Ȃ��̂Ƃ�
		buffer += seisu + shousu;			// �S�̌����̂�
	*buffer = 0;							// �z��Ō��\0�i�[
	buffer--;							// �z��|�C���^-1
	for(i=0; i<shousu; i++)				// �������𐮐��ɕϊ�
		data = data * 10;					// �P�O�{
	dumy = (unsigned int) (data + 0.5);	// �l�̌ܓ����Đ����ɕϊ�
	for(i=shousu; i>0; i--)	{			// �����������J��Ԃ�
		*buffer =(dumy % 10)+'0';			// ���l�𕶎��ɕϊ��i�[
		buffer--;						// �i�[�ꏊ���ʂ����ʂ�
		dumy = (unsigned int)(dumy / 10);	// ���̌���
	}
	if(shousu != 0) {						// ������0�Ȃ珬���_�Ȃ�
		*buffer = '.';					// �����_���i�[
		buffer--;						// �|�C���^-1
	}
	for(i=seisu; i>0; i--) {				// ���������J��Ԃ�
		*buffer = (dumy % 10)+'0';			// ���l�𕶎��ɕϊ��i�[
		buffer--;						// �|�C���^-1
		dumy = (unsigned int)(dumy / 10);	// ���̌���
	}
}
/***********************************************************
* LED�u�����N����֐�
*  USB�A�^�b�`�G�����u�����N
*  USB Enumeration�����F�ᑬ�u�����N
************************************************************/
void BlinkUSBStatus(void)
{
    static WORD led_count=0;
    
    if(led_count == 0)led_count = 10000U;
    led_count--;
	/* �}�N����` */
    #define mLED_Both_Off()         {mLED_1_Off();mLED_2_Off();}
    #define mLED_Both_On()          {mLED_1_On();mLED_2_On();}
    #define mLED_Only_1_On()        {mLED_1_On();mLED_2_Off();}
    #define mLED_Only_2_On()        {mLED_1_Off();mLED_2_On();}

    if(USBSuspendControl == 1){
        if(led_count==0){
            mLED_1_Toggle();
            if(mGetLED_1()){
                mLED_2_On();
            }
            else{
                mLED_2_Off();
            }
        }//end if
    }
    else{
        if(USBDeviceState == DETACHED_STATE){
            mLED_Both_Off();
        }
        else if(USBDeviceState == ATTACHED_STATE){
            mLED_Both_On();
        }
        else if(USBDeviceState == POWERED_STATE){
            mLED_Only_1_On();
        }
        else if(USBDeviceState == DEFAULT_STATE){
            mLED_Only_2_On();
        }
        else if(USBDeviceState == ADDRESS_STATE){
            if(led_count == 0){
                mLED_1_Toggle();
                mLED_2_Off();
            }//end if
        }
        else if(USBDeviceState == CONFIGURED_STATE){
            if(led_count==0){
                mLED_1_Toggle();
                if(mGetLED_1()){
                    mLED_2_Off();
                }
                else {
                    mLED_2_On();
                }
            }//end if
        }//end if(...)
    }//end if(UCONbits.SUSPND...)

}//end BlinkUSBStatus
///***********************************************************
//* �{�[���[�g�ύX�֐�
//*
//* �@����:  USB_CDC_SET_LINE_CODING_HANDLER ����`����Ă��邱��
//* �@USB����USART�̒ʐM���x�������łȂ���΂Ȃ�Ȃ�
//************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps�ȏ�Ȃ牽�����Ȃ�
	}
	else
	{
		DWORD_VAL dwBaud;
		
		// CDC�h���C�o�̃{�[���[�g�ύX
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
		// USART�̃{�[���[�g�ύX
		dwBaud.Val = (DWORD)(GetSystemClock()/4)/line_coding.dwDTERate.Val-1;
		SPBRG = dwBaud.v[0];
		SPBRGH = dwBaud.v[1];
	}
}
#endif
// ***********************************************************
// ************** USB Callback Functions *********************
// ***********************************************************

/*************************************************************
 * Function:        void USBCBSuspend(void)
 *************************************************************/
void USBCBSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*************************************************************
 * Function:        void USBCBErrorHandler(void)
 *************************************************************/
void USBCBErrorHandler(void)
{
}
/*************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}//end
/*************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*************************************************************
 * Function:        void USBCBInitEP(void)
 *************************************************************/
void USBCBInitEP(void)
{
    CDCInitEP();
}
/*************************************************************
 * Function:        void USBCBSendResume(void)
 *************************************************************/
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
                                        //until a new suspend condition is detected.

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

/***************************************************************
 * Function:        void USBCBEP0DataReceived(void)
 ***************************************************************/
#if defined(ENABLE_EP0_DATA_RECEIVED_CALLBACK)
void USBCBEP0DataReceived(void)
{
}
#endif

/***************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 ***************************************************************/
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
