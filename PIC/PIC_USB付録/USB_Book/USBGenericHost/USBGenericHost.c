/*******************************************************
*  �ėp���o�̓{�[�h�p�@�z�X�g�@�ėpUSB�N���X���g�p
*  �ėpPIO�𐧌䂷��
********************************************************/
#include <p24fxxxx.h>
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "usb_config.h"
#include "USB/usb.h"
#include "USB/usb_host_generic.h"
#include "DALCD_Lib1.h"

/**** �R���t�B�M�����[�V�����ݒ� ***/
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & WINDIS_OFF
	 & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF
	 & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG 
	 & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)

/**�@�X�e�[�g�̒�` **/
typedef enum
{
	INITIALIZE	= 0,
	DEVICE_NOT_CONNECTED,
	DEVICE_CONNECTED,
	WAITING_SEND,
	READ_OK,
	WAITING_READ,
	SET_MENU,
	IDLE,
	SEND_COMMAND,
	BTN_PROCESS,
	WAITING_WR_BTN,
	READ_BTN,
	PROCESS_BTN,
}AP_STATE;

/**** �O���[�o���ϐ���`�@ ***/
extern unsigned int	Xset, Yset;			// �^�b�`���W
BYTE	deviceAddress;  				// USB��̃f�o�C�X�A�h���X
BYTE	INPacket[64];     				// ��M�p�P�b�g
BYTE	OUTPacket[64];					// ���M�p�P�b�g
BYTE	State;							// �X�e�[�g�ϐ�
GENERIC_DEVICE_ID 	DevID;				// �f�o�C�XID
int Btn, Adrs;
BYTE RetVal;
int i, Flag;
unsigned char MesrMsg[] = "xxxx";	
unsigned char MsgScrn[] = "X=xxx Y=xxx";// �f�o�b�O�p�^�b�`���W�\��
/* �^�b�`�{�^�����W�f�[�^ */
int Button[15][2] = {{220,570},{350,570},{480,570},{600,570},{720,570}};
/* ��Ԋi�[�z��@*/					
char Btn_Status[5] = {0x30,0x30,0x30,0x30,0x30};
char SW_Status[4] = {0x30,0x30,0x30,0x30};
unsigned int POT[3] = {0,0,0};
    
/***** �֐��v���g�^�C�s���O *****/
void Process( void );
void Display_Menu(void);
void itostring(char digit, unsigned int data, unsigned char *buffer);
int CheckBtn(int x, int y);

/****************** ���C���֐� ***********************/
int main (void)
{
	/* �N���b�N�̏����ݒ�@*/
	CLKDIVbits.CPDIV 	= 0;		// 32MHz
	CLKDIVbits.PLLEN 	= 1;		// 96MHz PLL Enable
	CLKDIVbits.G1CLKSEL = 1;		// Select 96MHz
	CLKDIV2bits.GCLKDIV = 40;		// 8.00MHz
	/* IO�|�[�g�̏����ݒ� */
	TRISB = 0xF20B;					// Analog,�X�C�b�`�ȊO���o�̓��[�h��
	TRISC = 0xF000;
	TRISD = 0x0000;
	TRISE = 0x0000;
	TRISF = 0x0084;					// VBUS,
	TRISG = 0x010C;					// D+,D- Input	
	/* �f�W�^�����[�h�ݒ� */
	ANSB = 0xF000;					// RB12-15�̂݃A�i���O����
	ANSC = 0;
	ANSD = 0;
	ANSG = 0;
	/* �^�C�}3�����ݒ� 200msec���� ��Ԍv���g���K�p**/
	T3CON = 0x0030;					// 1/256, 16MHz
	TMR3 = 0;
	PR3 = 12500;						// 16MHz/256=62.5kHz/12500= 5Hz
	IFS0bits.T3IF = 0;				// ���荞�݃t���O�N���A
	IEC0bits.T3IE = 1;				// ���荞�݋���
	Flag = 0;
	/* A/D�R���o�[�^�����ݒ� */
	SetupScreen();					// �^�b�`�X�N���[���p�A�i���O����
	/* �t���\���평���� */
	GInit();
	ClearBox(BLACK);				// ���w�i�őS����
    /* Initialize USB layers */
	DevID.vid   = 0x04D8;			// �f�o�C�XID�ݒ�
	DevID.pid   = 0x000C;
    USBInitialize(0);					// USB�t���[�����[�N������
	T3CONbits.TON = 1;				// �^�C�}�R�X�^�[�g
	
	/***************** ���C�����[�v **********************/
    while(1)
    {
		USBTasks();					// USB����M���s
		/* �ʏ�v���Z�X���s�@*/
		Process();
	}
	return 0;
}
/***********************************************************
*   �^�C�}3���荞�ݏ����֐� 
*   ��Ԃƌv���̃g���K�p�@200msec����
***********************************************************/
void __attribute__((__interrupt__, auto_psv)) _T3Interrupt(void)
{
	if(IFS0bits.T3IF)
	{
		IFS0bits.T3IF = 0;					// ���荞�݃t���O�N���A
		mLED_1_Toggle();					// �ڈ�LED�_��
		if(State == IDLE)					// USB�A�C�h�������H
		{
			/* �ꊇ�]���v�� */
			OUTPacket[0] = 0x34;			// �ꊇ�]���R�}���h����
			OUTPacket[1] = 0;
			OUTPacket[2] = 0;	
			State = SEND_COMMAND;			// ���M�X�e�[�g��
		}
	}
}

/***********************************************************
*  ���[�U�[�A�v���X�e�[�g�֐�
* �@IDLE���^�b�`�X�N���[�����͂��A�^�C�}�R�C�x���g�Ńg���K
*   DO���䂩�ꊇ��Ԍv���v��
************************************************************/
void Process(void)
{
	switch (State)
	{
		/******** �f�o�C�X�ڑ��҂� *******/		
		case INITIALIZE:									// �������I��
			PutStr(0, 0, (unsigned char*)"Start PIO Controller", WHITE, BLACK);
			State = DEVICE_NOT_CONNECTED;
			break;
		case DEVICE_NOT_CONNECTED:
		    if (deviceAddress == 0){						// �f�o�C�X���ڑ����H
		        #ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
		            DevID.serialNumberLength = 0;			// �f�o�C�XNo���Z�b�g
		            DevID.serialNumber = NULL;
		        #endif
		        /** �f�o�C�X�ڑ��`�F�b�N **/
		        if (USBHostGenericGetDeviceAddress(&DevID)){
					deviceAddress = DevID.deviceAddress;	//�f�o�C�X�A�h���X�擾
					State = DEVICE_CONNECTED;				// �ڑ��m�F��
		        }
		    }
			break;			
		/************ �f�o�C�X�m�F�v���Z�X *************/
		case DEVICE_CONNECTED:								// �f�o�C�X�m�F�R�}���h���M
			OUTPacket[0] = 0x30;							// �ڑ��m�F�R�}���h
			OUTPacket[1] = 0;
			if (!USBHostGenericTxIsBusy(deviceAddress))		// ���M���f�B�[���H
			{	/* �m�F�R�}���h���M���s */
				if ( (RetVal=USBHostGenericWrite(deviceAddress, &OUTPacket, 2)) == USB_SUCCESS )
					State = WAITING_SEND;					// ���M�����҂���
				else
					PutStr(0, 1, (unsigned char*)"USB Write Error!    ", RED, BLACK);
			}
			break;
		case WAITING_SEND:									// ���M�����҂�
			if (!USBHostGenericTxIsBusy(deviceAddress) )
				State = READ_OK;
			break;
		case READ_OK:										// OK������M
			if (!USBHostGenericRxIsBusy(deviceAddress))		// ��M�҂�
			{	/** ��M���s **/
				if ( (RetVal=USBHostGenericRead(deviceAddress, &INPacket, 4)) == USB_SUCCESS )
					State = WAITING_READ;					// �f�[�^�擾�҂���
				else
					PutStr(0, 1, (unsigned char*)"USB Read Error!     ", RED, WHITE);
			}
			break;
		case WAITING_READ:
			if (!USBHostGenericRxIsBusy(deviceAddress)){	// ��M�҂�
				/** OK�����m�F **/
				if(USBHostGenericGetRxLength(deviceAddress) == 4 && INPacket[0]== 0x30
					&& INPacket[2] == 'O' && INPacket[3] == 'K')
				{	/* OK�m�F�̏ꍇ */
					PutStr(0, 1, (unsigned char*)"USB Device Check OK!", GREEN, BLACK);
					State = SET_MENU;						// �^�b�`�X�N���[��������
				}
				else
				{	/* �m�F���s�̏ꍇ */
					PutStr(0, 1, (unsigned char*)"USB Device Check NG!", RED, BLACK);
					State = DEVICE_NOT_CONNECTED;			// �{�[�h�m�F�s�̏ꍇ
				}
			}
			break;
			
		/************* �A�C�h���v���Z�X ****************/
		case SET_MENU:
			Display_Menu();								// ���j���[��ʕ\��
			State = IDLE;								// �^�b�`���͑҂���
			break;
		/** �^�b�`���͑҂� **/	
		case IDLE:
			if(GetScreen()){							// �^�b�`����
				Btn = CheckBtn(Xset, Yset);				// �{�^���ԍ��擾
				/*** �R�}���h�Z�b�g **/
				if(Btn >= 0){							// �{�^���ԍ����킩�H
					if((Btn >= 0)&&(Btn <= 4)){			// DO�̏ꍇ
						OUTPacket[0] = 0x31;
						OUTPacket[1] = Btn + 0x31;		// DO�R�}���h����
						if(Btn_Status[Btn] == 0x31)
							OUTPacket[2] = 0x30;		// Off
						else
							OUTPacket[2] = 0x31;		// On
						State = SEND_COMMAND;
					}		
				}
			}
			delay_ms(5);								// ���͌J��Ԃ����x�����p
			break;
		case SEND_COMMAND:
			if (!USBHostGenericTxIsBusy(deviceAddress))			// ���M���f�B�[���H
			{	/** ����R�}���h���M���s  */
				if ( (RetVal=USBHostGenericWrite(deviceAddress, &OUTPacket, 3)) == USB_SUCCESS )
					State = WAITING_WR_BTN;						// ���M�����҂���
				else
					PutStr(0, 1, (unsigned char*)"USB Write Error!    ", RED, BLACK);
			}
			break;		
		case WAITING_WR_BTN:									// ���M�����҂�
			if (!USBHostGenericTxIsBusy(deviceAddress) )		// ���M�������H
				State = READ_BTN;								// ������M�҂���
			break;
			
		/************* ������M�v���Z�X *************/
		case READ_BTN:	
			if (!USBHostGenericRxIsBusy(deviceAddress))			// ��M���f�B�[���H
			{	/** ��M���s **/
				if ( (RetVal=USBHostGenericRead(deviceAddress, &INPacket, 64)) == USB_SUCCESS )
					State = PROCESS_BTN;						// ��M������
				else
					PutStr(0, 1, (unsigned char*)"USB Read Error!     ", RED, WHITE);
			}
			break;
		case PROCESS_BTN:	
			if (!USBHostGenericRxIsBusy(deviceAddress)){		// ��M�������H
				/******* ��M�f�[�^���� ********/
				switch(INPacket[0]){							// �R�}���h�ŋ��
					case 0x31:	// DO�̏ꍇ
						Adrs = INPacket[1] - 0x31;				// DO�A�h���X
						Btn_Status[Adrs] = INPacket[2];			// �w��DO�̏�Ԋi�[
						for(i=0; i<5; i++){						// �SDO��ԕ\��
							if(Btn_Status[i] == 0x31){
								PutBox(i*48+40, 72, 32, 32, RED);	// On�̏ꍇ��
								PutCha(i*3+3, 5, (0x31+i), BLACK, RED);
							}		
							else{
								PutBox(i*48+40, 72, 32, 32, GREEN);	// Off�̏ꍇ��
								PutCha(i*3+3, 5, (0x31+i), BLACK, GREEN);
							}							
						}
						delay_ms(1000);							// ���̐���1�b�҂�
						break;
					case 0x34:	// �ꊇ��Ԏ�M�̏ꍇ 
						for(i=0; i<4; i++){						// �SDI�̏�ԕ\��
							SW_Status[i] = INPacket[i+2];
							if(SW_Status[i] == 0x31){
								PutBox(i*48+40, 120, 32, 32, RED);	//On�̏ꍇ��
								PutCha(i*3+3, 8, (0x31+i), BLACK, RED);
							}								
							else{
								PutBox(i*48+40, 120, 32, 32, GREEN);	// Off�̏ꍇ��
								PutCha(i*3+3, 8, (0x31+i), BLACK, GREEN);
							}
						}
						for(i=0; i<3; i++){						// �S�v���f�[�^�\��
							POT[i] = INPacket[i*2+7]*256+INPacket[i*2+6];
							itostring(4, POT[i], MesrMsg);			// �����ɕϊ�
							PutStr(i*6+2, 11, MesrMsg, WHITE, BLACK);	
						}
						break;
					default: break;
				}
				State = IDLE;									// �^�b�`�҂��֖߂�
			}
			break;
		default :
			break;
	}
}
/*****************************************************
* ���j���[��ʕ\���֐� 
*****************************************************/
void Display_Menu(void){
	int i;

	/** ���o���\�� **/
	PutStr(0, 0, (unsigned char*)"PIO Board Controller", WHITE, RED);
	/** DO���j���[�\��  **/
	PutStr(0, 5, (unsigned char*)"DO", MAGENTA, BLACK);
	for(i=0; i<5; i++){
		if(Btn_Status[i] == 0x31){
			PutBox(i*48+40, 72, 32, 32, RED);
			PutCha(i*3+3, 5, (0x31+i), BLACK, RED);
		}				
		else{
			PutBox(i*48+40, 72, 32, 32, GREEN);
			PutCha(i*3+3, 5, (0x31+i), BLACK, GREEN);
		}			
	}
	/**�@DI���j���[�\�� **/
	PutStr(0, 8, (unsigned char*)"DI", MAGENTA, BLACK);
	for(i=0; i<4; i++){
		if(SW_Status[i] == 0x31){
			PutBox(i*48+40, 120, 32, 32, RED);
			PutCha(i*3+35, 8, (0x31+i), BLACK, RED);
		}					
		else{
			PutBox(i*48+40, 120, 32, 32, GREEN);
			PutCha(i*3+3, 8, (0x31+i), BLACK, GREEN);
		}				
	}
	/** �v�����j���[�\�� **/
	PutStr(0, 11, (unsigned char*)"AI", MAGENTA, BLACK);
	for(i=0; i<3; i++){
		itostring(4, POT[i], MesrMsg);
		PutStr(0, 10, (unsigned char*)"  CH1   CH2   CH3   ", MAGENTA, BLACK);
		PutStr(i*6+2, 11, MesrMsg, CYAN, BLACK);	
	}
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
	for(i=0; i<5; i++){
		if((x > Button[i][0]-20)&&(x <	Button[i][0]+20)){
			if((y > Button[i][1]-30)&&(y < Button[i][1]+30))
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
		buffer--;					// �|�C���^�[�P
		*buffer = (data % 10) + '0';	// ASCII��
		data = data / 10;				// ���̌���
	}
}

//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	#ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
		BYTE i;
	#endif
	/* �C�x���g���� */
    	switch( event )
    	{
		case EVENT_GENERIC_ATTACH:
			if (size == sizeof(GENERIC_DEVICE_ID))
			{
				deviceAddress   = ((GENERIC_DEVICE_ID *)data)->deviceAddress;
				State = DEVICE_CONNECTED;
				PutStr(0, 2,(unsigned char*)"Device Attached!    ", GREEN, BLACK);
				#ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
					for (i=1; i<((GENERIC_DEVICE_ID *)data)->serialNumberLength; i++)
					{
//						UART2PutChar( ((GENERIC_DEVICE_ID *)data)->serialNumber[i] );
					}
				#endif
				return TRUE;
			}
			break;
		
		case EVENT_GENERIC_DETACH:
			deviceAddress   = 0;
			ClearBox(BLACK);
			State = INITIALIZE;
			PutStr(0, 2, (unsigned char*)"Device Detached!    ", YELLOW, BLACK);
			mLED_1_Off();
			mLED_2_Off();			
			return TRUE;
		
		case EVENT_GENERIC_TX_DONE:      // The main state machine will poll the driver.
		case EVENT_GENERIC_RX_DONE:
			return TRUE;
		
		case EVENT_VBUS_REQUEST_POWER:
//			PutStr(0, 1, (unsigned char*)"Current Set Normal! ", GREEN, BLACK);
			return TRUE;
		
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
		case EVENT_SUSPEND:
		case EVENT_DETACH:
		case EVENT_RESUME:
		case EVENT_BUS_ERROR:
			return TRUE;
			break;

		default :
			break;
	}
	return FALSE;
}
