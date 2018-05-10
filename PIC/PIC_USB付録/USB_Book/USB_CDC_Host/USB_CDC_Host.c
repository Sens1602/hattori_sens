/*******************************************************************
* USB CDC�z�X�g��@  RS232C���j�^
*  ��M�����f�[�^��LCD�ɕ����ŕ\��
*  �܂�Ԃ��Ńf�[�^�𑗐M
********************************************************************/
#include	<p24fxxxx.h>
#include "GenericTypeDefs.h"
#include "usb_config.h"
#include "USB/usb.h"
#include "USB/usb_host_cdc.h"
#include "USB/usb_host_cdc_interface.h"
#include "DALCD_Lib1.h"

/**** �R���t�B�M�����[�V�����ݒ� ***/
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & WINDIS_OFF
	 & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF
	 & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG 
	 & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)

/* �X�e�[�g�ϐ���` */
typedef enum _APPL_STATE{
    DEMO_INITIALIZE,
    DEVICE_NOT_CONNECTED,
    DEVICE_CONNECTED, 		
    IDLE,
    GET_IN_DATA,
    SEND_OUT_DATA
} APPL_STATE;
/** �萔��` **/
#define MAX_ALLOWED_CURRENT (500)
#define MAX_IN_BYTES  64
#define MAX_OUT_BYTES 64 
/*** �O���[�o���ϐ���`�@****/
volatile APPL_STATE  State;
BYTE IN_Buf[MAX_IN_BYTES];
BYTE OUT_Buf[MAX_OUT_BYTES];
BYTE Xpos, Ypos, Error, NumRcvd;
BOOL displayOnce = FALSE;
/** LCD���b�Z�[�W�f�[�^�@**/
const unsigned char StrtMsg[] = "Start RS232C Monitor";
const unsigned char AtchMsg[] = "CDC Device Attached!";
const unsigned char DtchMsg[] = "CDC Device Detached!";
const unsigned char NsptMsg[] = "Device Not Supported";
const unsigned char HubnMsg[] = "Hub is not supported";
const unsigned char CrntMsg[] = "Over Current Error! ";
const unsigned char EnumMsg[] = "Enumeration Error!! ";
const unsigned char InitMsg[] = "Initialize Errorr!! ";
const unsigned char OutmMsg[] = "Out of Memory Error!";
const unsigned char SpecMsg[] = "Unspecified Error!  ";
const unsigned char APIdMsg[] = "API Dettached!      ";
const unsigned char RestMsg[] = "Reset Device!       ";
const unsigned char HeadMsg[] = "--- Receive Data ---";


/****************** ���C���֐� ***********************/
int main (void)
{
	/* �N���b�N�̏����ݒ�@*/
	CLKDIVbits.CPDIV 	= 0;			// 32MHz
	CLKDIVbits.PLLEN 	= 1;			// 96MHz PLL Enable
	CLKDIVbits.G1CLKSEL = 1;			// Select 96MHz
	CLKDIV2bits.GCLKDIV = 40;			// 8.00MHz
	/* IO�|�[�g�̏����ݒ� */
	TRISB = 0xF20B;						// Analog�ȊO���o�̓��[�h��
	TRISC = 0xF000;
	TRISD = 0x0000;
	TRISE = 0x0000;
	TRISF = 0x0084;						// VBUS,
	TRISG = 0x010C;						// D+,D- Input	
	/* �f�W�^�����[�h�ݒ� */
	ANSB = 0xF000;						// RB12-15�̂݃A�i���O����
	ANSC = 0;
	ANSD = 0;
	ANSG = 0;
	/* �t���\���평���� */
	GInit();
	ClearBox(WHITE);
	PutStr(0, 0, StrtMsg, RED, BLACK);	// �J�n���b�Z�[�W�\��
	Xpos = 0;
	Ypos = 4;
    /* USB�t���[�����[�N������ */
    USBInitialize( 0 );

	/***************** ���C�����[�v **********************/
	while(1)
	{
		USBTasks();
		/* �f�o�C�X�؂藣���`�F�b�N */
		if(!USBHostCDC_ApiDeviceDetect())	
			State = DEVICE_NOT_CONNECTED;	
		/* �ʏ�v���Z�X���s�@*/
		Process();
	}
}

/********************************************************
* ���[�U�[�A�v���֐�
*  �X�e�[�g�ɉ����Ď�M�\���������s 
*********************************************************/
void Process(void){
	BYTE i;
	
	/***** �X�e�[�g�m�F ****/	
	switch(State)
	{
		/**** ������� ****/
		case DEMO_INITIALIZE:							// �����X�^�[�g
			State = DEVICE_NOT_CONNECTED;
			break;
		/**** �f�o�C�X�ڑ��҂���� ****/
		case DEVICE_NOT_CONNECTED:						// �ڑ��҂�
			USBTasks();									// USB��Ԋm�F���s
			if(displayOnce == FALSE){					// 1�񂾂��\��
				ClearBox(0);							// �S��ʏ���
				Xpos = 0;								// ��M�\���ʒu���Z�b�g
				Ypos = 4;					
				PutStr(0, 0, StrtMsg, RED, BLACK);		// ���o���\��
				PutStr(0, 3, HeadMsg, CYAN, BLACK);
				PutStr(0, 2, DtchMsg, YELLOW, BLACK);	// �f�^�b�`�\��
				displayOnce = TRUE;						// 1��\���t���O�I��
			}
			if(USBHostCDC_ApiDeviceDetect())			// �f�o�C�X���o�������H
				State = DEVICE_CONNECTED;				// �A�^�b�`��ԂɍX�V
			break;
		/**** �f�o�C�X�ڑ�������M�҂��� ****/
		case DEVICE_CONNECTED:							// �f�o�C�X�ڑ����
			PutStr(0, 2, AtchMsg, GREEN, BLACK);		// �A�^�b�`��ԕ\��
			State = IDLE;								// ��M�҂���
			break;
		/**** �f�[�^��M�҂� *****/
		case IDLE:
			if(USBHostCDC_Api_Get_IN_Data(MAX_IN_BYTES, IN_Buf))
				State = GET_IN_DATA;					// �f�[�^������
			break;
		/**** ��M�f�[�^�\������ ****/
		case GET_IN_DATA:
			if(USBHostCDC_ApiTransferIsComplete(&Error,&NumRcvd)){ 
				if(!Error){								// ��M�G���[���肩�H
					if(NumRcvd > 0){					// ��M�f�[�^���肩�H
						for(i=0; i<NumRcvd; i++){		// ��M�f�[�^�\��
							if(IN_Buf[i] == 0x0D){		// ���s�R�[�h���H
								Ypos = 4;				// ���_��
								Xpos = 0;
							}
							else{	
								PutCha(Xpos++, Ypos, IN_Buf[i], GREEN, BLACK);
								if(Xpos >= 20){			// �E�[���H
									Ypos++; Xpos= 0;	// ���s
									if(Ypos >= 15)		// �ŉ��s���H
										Ypos = 4;		// �y�[�W�擪��
								}
							}
						}
					}
					/* ���M�f�[�^���� */
					for(i=0; i<NumRcvd; i++){
						if(IN_Buf[i] >= 0x20)			// �����R�[�h�����H
							OUT_Buf[i] = IN_Buf[i] + 1;	// ���̕������Z�b�g
						else
							OUT_Buf[i] = IN_Buf[i];		// ���̂܂܃Z�b�g
					}					
					State = SEND_OUT_DATA;				// ���M�X�e�[�g�֐i��					
				}
				else
					State = IDLE;						// �G���[�͖������Ė߂�				
			}
			break;
		/**** �܂�Ԃ����M���s ***/
		case SEND_OUT_DATA:
			USBHostCDC_Api_Send_OUT_Data(NumRcvd, OUT_Buf);
			State = IDLE;								// IDLE�ɖ߂�
			break;

		default :
			break;
	}
}

//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//*****************************************************************************
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	switch( event )
	{
		case EVENT_VBUS_REQUEST_POWER:
			if (((USB_VBUS_POWER_EVENT_DATA*)data)->current <= (MAX_ALLOWED_CURRENT / 2))
				return TRUE;
			else
				PutStr(0, 1, CrntMsg, GREEN, BLACK);	//			
			break;
		
		case EVENT_VBUS_RELEASE_POWER:
			return TRUE;
			break;
		
		case EVENT_HUB_ATTACH:
			PutStr(0, 1, HubnMsg, RED, BLACK); 
			return TRUE;
			break;
		
		case EVENT_UNSUPPORTED_DEVICE:
			PutStr(0, 1, NsptMsg, MAGENTA, BLACK);
			return TRUE;
			break;
		
		case EVENT_CANNOT_ENUMERATE:
			PutStr(0, 1, EnumMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_CLIENT_INIT_ERROR:
			PutStr(0, 1, InitMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_OUT_OF_MEMORY:
			PutStr(0, 1, OutmMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_UNSPECIFIED_ERROR:   	// This should never be generated.
			PutStr(0, 1, SpecMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_DETACH:                   // USB cable has been detached (data: BYTE, address of device)
			displayOnce = FALSE;
			PutStr(0, 1, APIdMsg, MAGENTA, BLACK);
			return TRUE;
			break;
		
		// CDC Specific events
		
		case EVENT_CDC_NONE:
		case EVENT_CDC_ATTACH:
		case EVENT_CDC_COMM_READ_DONE:
		case EVENT_CDC_COMM_WRITE_DONE:
		case EVENT_CDC_DATA_READ_DONE:
		case EVENT_CDC_DATA_WRITE_DONE:
			return TRUE;
			break;
		case EVENT_CDC_NAK_TIMEOUT:
			State = IDLE;
			return TRUE;
			break;
		
		case EVENT_CDC_RESET:
			ClearBox(0);
			PutStr(0, 1, RestMsg, CYAN, BLACK);
			return TRUE;
			break;
		default :
			break;
	}
	return FALSE;
}
