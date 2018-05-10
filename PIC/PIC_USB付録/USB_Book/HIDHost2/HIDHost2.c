/*******************************************************
*  HID�z�X�g�v���O����
*  �@HID�f�o�C�X�iLow Pin Count USB DemBord�j�𐧌�
*    QVGA�O���t�B�b�NLCD�ƃ^�b�`�p�l�����g�p
********************************************************/
#include <p24fxxxx.h>
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "usb_config.h"
#include "LCDBlocking.h"
#include "USB/usb.h"
#include "USB/usb_host_hid_parser.h"
#include "USB/usb_host_hid.h"
#include "DALCD_Lib1.h"					// �t���\���탉�C�u����

/**** �R���t�B�M�����[�V�����ݒ� ***/
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & WINDIS_OFF
	 & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF
	 & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG 
	 & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)

/**�@�X�e�[�g�ϐ��̒�` **/
typedef enum
{
    DEMO_INITIALIZE,
    DEVICE_NOT_CONNECTED,
    DEVICE_CONNECTED, 
    IDLE, 
    HID_SEND_OUT_REPORT,
    HID_SEND_OUT_REPORT_WAIT,
    HID_GET_POT_VALUE_REPORT,
    HID_GET_POT_VALUE_REPORT_WAIT,
    HID_GET_SWITCH_STATE_REPORT,
    HID_GET_SWITCH_STATE_REPORT_WAIT,
}AP_STATE;

volatile AP_STATE  State;
#define MAX_ALLOWED_CURRENT	(500)		// �����d��500mA Max

/***** �v���g�^�C�s���O *****/
void ftostring(int seisu, int shousu, float data, unsigned char *buffer);
void itostring(char digit, unsigned int data, unsigned char *buffer);
void Process(void);
void Display_Menu(void);
int CheckBtn(int x, int y);

/**** �O���[�o���ϐ���`�@ ***/
BYTE error_counter_hid;
BYTE device_adc_pot_value[64];
BYTE hid_interface_number;
BYTE device_switch_state[64];
volatile BYTE device_send_command[4];
int data;
BYTE displayOnce;
BYTE temp;
BYTE ErrorDriver;
BYTE NumOfBytesRcvd;
int Btn, Flag;	
float Ondo, Volt;

/* �^�b�`�{�^�����W�f�[�^ */
extern unsigned int	Xset, Yset;
int Button[15][2] = {{390,570},{520,570},{650,570},{780,570},	// LED
					 {390,400},{520,400},{650,400},				// SW
					 {200,240},{500,240},{800,240}};			// �v��
unsigned char MsgScrn[] = "X=xxx Y=xxx";		// �f�o�b�O�p�^�b�`���W�\��
unsigned char display_data[21] = " xxxx   xx    xxxx  "; 

/** ���ݏ�ԕێ��z�� */
BYTE LED_state[4] = {0x30, 0x30, 0x30, 0x30};	// LED
BYTE SW_state[3] = {0x30, 0x30, 0x30};			// SW
unsigned int AN_state[3];						// �v��    

/****************** ���C���֐� ***********************/
int main (void)
{
	/* �N���b�N�̏����ݒ�@*/
	CLKDIVbits.CPDIV 	= 0;			// 32MHz
	CLKDIVbits.PLLEN 	= 1;			// 96MHz PLL Enable
	CLKDIVbits.G1CLKSEL = 1;			// Select 96MHz
	CLKDIV2bits.GCLKDIV = 40;			// 8.00MHz
	/* IO�|�[�g�̏����ݒ� */
	TRISB = 0xF20B;						// Analog,�X�C�b�`�ȊO���o�̓��[�h��
	TRISC = 0xF000;
	TRISD = 0x0000;
	TRISE = 0x0000;
	TRISF = 0x0084;						// VBUS
	TRISG = 0x010C;						// D+,D- Input	
	/* �A�i���O�A�f�W�^�����[�h�ݒ� */
	ANSB = 0xF000;						// RB12-15�̂݃A�i���O����
	ANSC = 0;
	ANSD = 0;
	ANSG = 0;
	/* �^�C�}3�����ݒ� 100msec���� ��Ԍv���g���K�p**/
	T3CON = 0x0030;						// 1/256, 16MHz
	TMR3 = 0;
	PR3 = 6250;							// 16MHz/256=62.5kHz/6250= 10Hz
	IFS0bits.T3IF = 0;					// ���荞�݃t���O�N���A
	IEC0bits.T3IE = 1;					// ���荞�݋���
	Flag = 0;
	/* A/D�R���o�[�^�����ݒ� */
	SetupScreen();						// �^�b�`�p�l���p
	/* �t���\���평���� */
	GInit();
	ClearBox(BLACK);
    /* Initialize USB layers */
    USBInitialize(0);
	State = DEMO_INITIALIZE;    		// �X�e�[�g�����ݒ�
	displayOnce = FALSE;				// Detouch1��\���p�t���O
	T3CONbits.TON = 1;					// �^�C�}�R�X�^�[�g
	
	/***************** ���C�����[�v **********************/
    while(1)
    {
		USBTasks();						// USB����M���s
		/* �ʏ�v���Z�X���s�@*/
		Process();
	}
}
/***********************************************************
*   �^�C�}3���荞�ݏ����֐� 
*   ��Ԃƌv���̃g���K�p�@100msec����
*   Flag�ŏ��Ԃ�1���v���𑗐M����
***********************************************************/
void __attribute__((__interrupt__, auto_psv)) _T3Interrupt(void)
{
	if(IFS0bits.T3IF){
		IFS0bits.T3IF = 0;							// ���荞�݃t���O�N���A
		if(State == IDLE){							// USB�A�C�h�������H
			/* ���ԂɃf�[�^���M�v�� */
			if((Flag >= 0) && (Flag <= 2)){			// ��Ԃ̏ꍇ
				device_send_command[0] = 0x32;
				device_send_command[1] = Flag + 0x31;
				device_send_command[2] = 0;
				Flag++;
			}
			else if((Flag >= 3) && (Flag <= 5)){	// �v���̏ꍇ
				device_send_command[0] = 0x33;
				device_send_command[1] = Flag-3 + 0x31;
				Flag++;
				if(Flag > 5)						// �v�����ڍŌォ�H
					Flag = 0;						// �ŏ��ɖ߂�
			}
			State = HID_SEND_OUT_REPORT;			// �R�}���h���M��					
		}
	}
}					
			
/***********************************************************
*  ���C���X�e�[�g�֐�
*  HID�f�o�C�X�F�������֐�
*  �F����^�b�`�{�^��������
************************************************************/
void Process(void)
{
	/* HID�f�o�C�X�F�� */
	switch(State)
	{
		/*********** HID�f�o�C�X�ڑ��m�F ***********/
		case DEMO_INITIALIZE:								// ���o���\��
			State = DEVICE_NOT_CONNECTED;
			break;
		
		case DEVICE_NOT_CONNECTED:							// ���ڑ���ԕ\��
			if(displayOnce == FALSE)
			{
				ClearBox(BLACK);
				PutStr(0, 0, (unsigned char*)"Start HID Controller", WHITE, BLACK);								
				PutStr(0, 2, (unsigned char*)"Device Detached!    ", YELLOW, BLACK);
				displayOnce = TRUE;							// 1��\���t���O�I��

			}
			if(USBHostHID_ApiDeviceDetect())				// �ڑ��`�F�b�N
			{
				State = DEVICE_CONNECTED;					// �ڑ��m�F��
				displayOnce = FALSE;						// 1��\���t���O���Z�b�g
			}
			break;
			
		case DEVICE_CONNECTED:								// �ڑ������\��
			PutStr(0, 2, (unsigned char*)"Device Attached!    ", GREEN, BLACK);
			Display_Menu();									// ��ʌ��o���\��
			/** USB�C���^�[�t�F�[�X�ԍ��擾 **/
			hid_interface_number = USBHostHID_ApiGetCurrentInterfaceNum();
			State = IDLE;									// USB�A�C�h����Ԃ�			
			break;
			
		/********* �A�C�h���� �^�b�`�p�l������`�F�b�N *******/
		case IDLE:
			/* �f�o�C�X�r���ؒf�`�F�b�N */
			if(!USBHostHID_ApiDeviceDetect()){
//  			State = DEVICE_NOT_CONNECTED;					// ���ڑ���Ԃ�
				Reset();										// �������Z�b�g
			}
			/* �^�b�`����ɉ����ăR�}���h���M�@*/
			if(GetScreen()){									// �^�b�`�X�C�b�`���W����
				Btn = CheckBtn(Xset, Yset);						// �{�^���ԍ��擾
				if(Btn >= 0){									// ����{�^�����H
					/* �{�^�����Ƃ̏��� */
					if((Btn >=0) && (Btn <= 3)){				// �I���I�t����{�^���̏ꍇ
						device_send_command[0] = 0x31;
						device_send_command[1] = Btn + 0x31;	// LED�A�h���X�w��
						if(LED_state[Btn] == 0x31)
							device_send_command[2] = 0x30;		// �I�t����w��
						else
							device_send_command[2] = 0x31; 		// �I������w��
						State = HID_SEND_OUT_REPORT;			// �R�}���h���M��								
					}
				}					
			}
			break;

		/************** �R�}���h���s *****************/
		/***** �R�}���h���M *****/		
		case HID_SEND_OUT_REPORT: 
			if(!USBHostHID_ApiSendReport(0,hid_interface_number,3, (BYTE*)&device_send_command))
				State = HID_SEND_OUT_REPORT_WAIT;				// ���M�����҂���
			break;

		/**** �R�}���h���M�����҂� ***/
		case HID_SEND_OUT_REPORT_WAIT:	
			if(USBHostHID_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
			{
				/** ���M�����m�F��@�e�R�}���h���Ƃ̏����֕��� ***/
				if(device_send_command[0] == 0x31)
					State = HID_GET_SWITCH_STATE_REPORT;		// LED��ԗv��
				else if(device_send_command[0] == 0x32)
					State = HID_GET_SWITCH_STATE_REPORT;		// SW��ԗv��
				else if(device_send_command[0] == 0x33)
					State = HID_GET_POT_VALUE_REPORT;			// �v���v��
			}
			break;

		/*** ��ԗv��  ***/
		case HID_GET_SWITCH_STATE_REPORT:
			/** ��ԗv���R�}���h���M **/
			if(!USBHostHID_ApiGetReport(0,hid_interface_number,64, device_switch_state))
				State = HID_GET_SWITCH_STATE_REPORT_WAIT;		// �����҂���
			break;

		/*** �����f�[�^�ɂ���ԕ\�� ***/	
		case HID_GET_SWITCH_STATE_REPORT_WAIT:
			/* ������M�m�F */
			if(USBHostHID_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
			{
				/* �������e�`�F�b�N */
				if((device_switch_state[0] == 0x31) && (NumOfBytesRcvd > 0))
				{
					/* LED���䉞����M�̏ꍇ */
					temp = device_switch_state[1] - 0x31;			// LED�A�h���X�擾
					LED_state[temp] = device_switch_state[2];		// ��Ԋi�[
					if(device_switch_state[2] == 0x31){				// �I�����H
						PutBox(104+48*temp, 72, 32, 32, RED);		// �I���Ȃ��
						PutCha(7+temp*3, 5, 0x31+temp, BLACK, RED);						
					}	
					else{
						PutBox(104+48*temp, 72, 32, 32, GREEN);		// �I�t�Ȃ��
						PutCha(7+temp*3, 5, 0x31+temp, BLACK, GREEN);						
					}	
					error_counter_hid = 0;							// ���������J�E���^�N���A
					State = IDLE;									// USB�A�C�h����
					delay_ms(1000);									// ����J��Ԃ��Ԋu����
				}
				else{
					/* �X�C�b�`��ԉ����̏ꍇ */
					if((device_switch_state[0] == 0x32) && (NumOfBytesRcvd > 0))
					{
						temp = device_switch_state[1] - 0x31;		// �X�C�b�`�A�h���X�擾
						SW_state[temp] = device_switch_state[2];	// ��Ԋi�[
						if(device_switch_state[2] == 0x30){			// �I�����H
							PutBox(104+48*temp, 120, 32, 32, RED);	// �I���Ȃ��
							PutCha(7+temp*3, 8, 0x31+temp, BLACK, RED);							
						}		
						else{
							PutBox(104+48*temp, 120, 32, 32, GREEN);// �I�t�Ȃ��
							PutCha(7+temp*3, 8, 0x31+temp, BLACK, GREEN);								
						}	
						error_counter_hid = 0;						// �����J�E���^�N���A
						State = IDLE;								// USB�A�C�h����
					}
					/* ���������̏ꍇ�@*/
					else{
						error_counter_hid ++;						// �����J�E���^�A�b�v
						if(error_counter_hid > 10){					// 10��𒴂������H
							State = IDLE;							// ������USB�A�C�h����
							error_counter_hid = 0;					// �J�E���^�N���A
						}
						else {
							State = HID_GET_SWITCH_STATE_REPORT;	// �܂��Ȃ��M�҂��֖߂�
						}
					}
				}
			}
			break;
						
		/*** �v���f�[�^�v��   ***/		
		case HID_GET_POT_VALUE_REPORT:
			/* �v���v���R�}���h���M */
			if(!USBHostHID_ApiGetReport(0,hid_interface_number,64, device_adc_pot_value))
				State = HID_GET_POT_VALUE_REPORT_WAIT;				// ���M�����Ȃ玟��
			break;

		/*** �����f�[�^�ɂ��v���l�\�� ***/	
		case HID_GET_POT_VALUE_REPORT_WAIT:
			/* ��M�����҂� */
			if(USBHostHID_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
			{
				if(NumOfBytesRcvd > 0)								// ��M�f�[�^���肩�H
				{
					/* �w��`���l���̌v���f�[�^�i�[ */
					temp = device_adc_pot_value[1] - 0x31;			// �`���l���ԍ��擾
					data = device_adc_pot_value[3]*256+device_adc_pot_value[2];// 10�r�b�g�f�[�^��
					AN_state[temp] = data;							// �i�[
					switch(temp){
						case 0: // ���x�̏ꍇ
								/* 0.5V@0�� 10mV/�� */
							Ondo = (data * 500.0)/1024 - 50.0;		// ���x�ɕϊ�
							ftostring(2, 1, Ondo, display_data+1);	// �����ɕϊ����\��
							PutStr(0, 11, display_data, WHITE, BLACK);	
							break;
						case 1:	// ���x�̏ꍇ
							data = (75 * data) / 409 -18;			// �X�P�[���ϊ��@0to100%
							itostring(2, data, display_data+8);		// �����ɕϊ����\��
							PutStr(0, 11, display_data, WHITE, BLACK);	
							break;
						case 2:	// �d���̏ꍇ
							Volt = (data * 5.0) / 1024;
							ftostring(1, 2, Volt, display_data+14);	// �����ɕϊ����\��
							PutStr(0, 11, display_data, WHITE, BLACK);	
							break;							
						default: break;
					}							
					State = IDLE;									// USB�A�C�h����
					error_counter_hid = 0;							// �����J�E���^�N���A
				}
				/* ��M�����̏ꍇ */
				else{
					error_counter_hid ++;							// �����J�E���^�A�b�v	
					if(error_counter_hid > 10){						// 10��𒴂�����
						State = IDLE;								// ������USB�A�C�h����
						error_counter_hid = 0;
					}
					else{
						State = HID_GET_POT_VALUE_REPORT;			// ��M�҂��J��Ԃ�
					}
				}
			}
			break;
			
		default :
		break;		

	}
}

/*****************************************************
* ���j���[��ʕ\���֐� 
*****************************************************/
unsigned char header[21] = {0x20,0x8A,0x81,0x20,0x20,0x20,0x20,0x20,	// ���x�@���x�@�d��
	 0x8B,0x81,0x20,0x20,0x20,0x20,0x91,0x92,0x20,0x20,0x20,0x20,0};
unsigned char header2[8] = {0x8A,0x81,0x8B,0x81,0xD2,0xB0,0xC0,0};		// �����x���[�^
unsigned char header3[5] = {0xBD,0xB2,0xAF,0xC1,0};						// �X�C�b�`


void Display_Menu(void){
	int i;
	
	PutStr(0, 3, (unsigned char*)"*****         ******", MAGENTA, BLACK);
	PutStr(6, 3, header2, MAGENTA, BLACK);
	/* LED����{�^���\�� */
	PutStr(1, 5, (unsigned char*)"LED", MAGENTA, BLACK);
	for(i=0; i<4; i++){
		if(LED_state[i] == 0x31){
			PutBox(104+48*i, 72, 32, 32, RED);
			PutCha(7+i*3, 5, 0x31+i, BLACK, RED);
		}			
		else{
			PutBox(104+48*i, 72, 32, 32, GREEN);
			PutCha(7+i*3, 5, 0x31+i, BLACK, GREEN);
		}
	}
	/* �X�C�b�`�p�{�^���\�� */
	PutStr(1, 8, header3, MAGENTA, BLACK);
	for(i=0; i<3; i++){	
		if(device_switch_state[1] == 1){
			PutBox(104+48*i, 120, 32, 32, RED);
			PutCha(7+i*3, 8, 0x31+i, BLACK, RED);			
		}			
		else{
			PutBox(104+48*i, 120, 32, 32, GREEN);
			PutCha(7+i*3, 8, 0x31+i, BLACK, GREEN);			
		}	
	}
	/* �v���l�\�� */
	PutStr(0, 10, header, MAGENTA, BLACK);
	PutStr(0, 11, display_data, WHITE, BLACK);
	PutStr(0, 12, (unsigned char*)" DegC   %RH   Volt  ", BLUE, BLACK);
}
/****************************************
* �^�b�`�{�^�����菈��
****************************************/
int CheckBtn(int x, int y)
{
	int i, btn;
	/*** �^�b�`���W�ʒu�\���i�f�o�b�O�p)�@****/
	itostring(3, x, MsgScrn+2);
	itostring(3, y, MsgScrn+8);
	PutStr(3, 14, MsgScrn, BLUE, BLACK);
	/** �{�^���`�F�b�N **/
	btn = -1;
	for(i=0; i<10; i++){										// �ő�10�̃{�^��
		if((x > Button[i][0]-20)&&(x <	Button[i][0]+20)){		// �͈́}20
			if((y > Button[i][1]-20)&&(y < Button[i][1]+20))	// �͈́}20
				btn = i;
		}
	}
	return(btn);
}

/***************************************
* ��������ASCII�����ɕϊ�
****************************************/
void itostring(char digit, unsigned int data, unsigned char *buffer)
{
	char i;

	buffer += digit;					// �Ō�̐����ʒu
	for(i=digit; i>0; i--) {			// �ϊ��͉��ʂ����ʂ�
		buffer--;						// �|�C���^�[�P
		*buffer = (data % 10) + '0';	// ASCII��
		data = data / 10;				// ���̌���
	}
}
/***********************************
* Float���當����֕ϊ�
* ���v�L������8���ȉ��Ƃ��邱��
***********************************/
void ftostring(int seisu, int shousu, float data, unsigned char *buffer)
{
	int i;
	long dumy;

	if(shousu != 0)					//�����������肩
		buffer += seisu+shousu+1;		//�S�̌����{�����_
	else							//���������Ȃ��̂Ƃ�
		buffer += seisu + shousu;		//�S�̌����̂�
	buffer--;						//�z��|�C���^-1
	for(i=0; i<shousu; i++)			//�������𐮐��ɕϊ�
		data = data * 10;				//�P�O�{
	/// dumy���I�[�o�[�t���[����ƕϊ��s��(�W�������E)
	dumy = (long) (data + 0.5);		//�l�̌ܓ����Đ����ɕϊ�
	for(i=shousu; i>0; i--)	{		//�����������J��Ԃ�
		*buffer =(dumy % 10)+'0';		//���l�𕶎��ɕϊ��i�[
		buffer--;					//�i�[�ꏊ���ʂ����ʂ�
		dumy /= 10;					//���̌���
	}
	if(shousu != 0) {					//������0�Ȃ珬���_�Ȃ�
		*buffer = '.';				//�����_���i�[
		buffer--;					//�|�C���^-1
	}
	for(i=seisu; i>0; i--) {			//���������J��Ԃ�
		*buffer = (dumy % 10)+'0';		//���l�𕶎��ɕϊ��i�[
		buffer--;					//�|�C���^-1
		dumy /= 10;					//���̌���
	}
	i = 0;							// �u�����L���O����
	buffer++;
	while((i<seisu-1)&&(*buffer == '0')){	// ��ʌ���0�̊�
		*buffer = ' ';				// �u�����N�ɕϊ�
		buffer++;
		i++;
	}
}
//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	/* �C�x���g���� */
   	switch( event )
   	{
		case EVENT_VBUS_REQUEST_POWER:
            if (((USB_VBUS_POWER_EVENT_DATA*)data)->current <= (MAX_ALLOWED_CURRENT / 2))
            {
//				PutStr(0, 1, (unsigned char*)"Current Set Normal! ", GREEN, BLACK);	            
                return TRUE;
            }
            else
            {
 				PutStr(0, 1, (unsigned char*)"Over Current Error! ", RED, BLACK);
            }
            break;
		
		case EVENT_VBUS_RELEASE_POWER:
			return TRUE;

		case EVENT_HUB_ATTACH:
			PutStr(0, 1, (unsigned char*)"Hub is not supported", RED, BLACK); 
			return TRUE;
			break;
		
		case EVENT_UNSUPPORTED_DEVICE:
			PutStr(0, 1, (unsigned char*)"Device Not Supported", MAGENTA, BLACK);
			return TRUE;
			break;
		
		case EVENT_CANNOT_ENUMERATE:
			PutStr(0, 1, (unsigned char*)"Enumeration Error!! ", RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_CLIENT_INIT_ERROR:
			PutStr(0, 1, (unsigned char*)"Initialize Errorr!! ", RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_OUT_OF_MEMORY:
			PutStr(0, 1, (unsigned char*)"Out of Memory Error!", RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_UNSPECIFIED_ERROR:
			PutStr(0, 1, (unsigned char*)"Unspecified Error!  ", RED, BLACK);
			return TRUE;
			break;
		case EVENT_DETACH:
            State = DEVICE_NOT_CONNECTED;
            return TRUE;
            break;

		case EVENT_HID_RPT_DESC_PARSED:
			#ifdef APPL_COLLECT_PARSED_DATA
				return(APPL_COLLECT_PARSED_DATA());
			#else
				return TRUE;
			#endif
			break;

		default :
			break;
	}
	return FALSE;
}
