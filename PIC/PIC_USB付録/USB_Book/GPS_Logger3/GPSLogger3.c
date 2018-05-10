/********************************************************************
*  GPS���K�[�v���O�����@�@�@�@�v���W�F�N�g���FGPSLogger3
*   PIC24F64GB002�@+ �}�C�N��SD�J�[�h�@���g�p
*   GPS���W���[���̐ݒ�̓f�t�H���g�̂܂܁@WGS84
*   �t���\����ɂ�GPS���W�Ǝ������x�\�����X�C�b�`�Ő؂�ւ�
*   �X�C�b�`�I����SD CARD�ɋL�^   �L�^�͗L���Ȃ��ׂĂ̎�M�f�[�^�Ƃ���
*   GPS����̃f�[�^��4��/�b + 1��/5�b
*   USB�ɐڑ������Ƃ��ASD�J�[�h�̃t�@�C���ǂݏ�����
*   CDC�N���X�̃f�o�C�X�Ƃ��Đڑ��A�ʐM�\�t�g�Ńf�[�^���M�\
********************************************************************/
#include <p24fj64gb002.h>
#include "USB/USB.h"
#include "HardwareProfile.h"
#include "USB/usb_function_cdc.h"
#include "MDD File System/SD-SPI.h"
#include "MDD File System/FSIO.h"
#include "USB/usb_function_msd.h"
#include "lcd_i2c_lib2.h"

/******* �R���t�B�M�����[�V�����ݒ� *****/
_CONFIG1(WINDIS_OFF & FWDTEN_OFF & ICS_PGx1 & GCP_OFF & JTAGEN_OFF & GWRP_OFF) 
_CONFIG2(POSCMOD_HS & I2C1SEL_PRI & OSCIOFNC_OFF & FCKSM_CSDCMD 
			& FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3(SOSCSEL_IO)
/******* �ϐ��錾��` ****/
#pragma udata
/* USB MSD�N���X�p�֐��Ăяo���|�C���^ */
LUN_FUNCTIONS LUN[MAX_LUN + 1] = 
{
	{
	&MDD_SDSPI_MediaInitialize,		// ���f�B�A������
	&MDD_SDSPI_ReadCapacity,			// �e�ʓǂݏo��
	&MDD_SDSPI_ReadSectorSize,			// �Z�N�^�T�C�Y�ǂݏo��
	&MDD_SDSPI_MediaDetect,				// ���f�B�A���o
	&MDD_SDSPI_SectorRead,				// 1�Z�N�^�ǂݏo��
	&MDD_SDSPI_WriteProtectState,		// �ی��ԓǂݏo��
	&MDD_SDSPI_SectorWrite				// �Z�N�^��������
	}
};
FSFILE *logFile;
BOOL initResults;
/* USB MSD�N���X��SCSI INQUIRY�R�}���h�����p�f�[�^ */
const ROM InquiryResponse inq_resp = {
	0x00,		// peripheral device is connected, direct access block device
	0x80,		// RMB removable
	0x04,		// ISO version=0, ECMA version=0, ANSI version=4=SPC-2
	0x02,		// response is in format specified by SPC-2
	0x20,		// Additional Length(n-4) = 36-4=32= 0x20
	0x00,		// sccs etc.
	0x00,		// etc
	0x00,		//bque=1 and cmdque=0,indicates simple queueing 00 is obsolete,
				// but as in case of other device, we are just using 00
				// 00 obsolete, 0x80 for basic task queueing
	{'T','.','G','o','k','a','n',' '},	// T10 Vendor ID 8cha 
	{'G','P','S',' ','U','S','B',' ','L','o','g','g','e','r',' ',' '},//product ID 16cha
	{'0','0','0','1'}	// product revison 4cha
};
/* GPS�p�o�b�t�@�A�ϐ���` */
extern unsigned char SPIBuf[];
char SavBuf[256];			// ��M�p�o�b�t�@
#define	Max	256			// �o�b�t�@�T�C�Y
char GGABuf[Max];			// 77byte
char GSABuf[Max];			// 47byte
char GSVBuf[Max];			// 60byte�@5�b��1��
char RMCBuf[Max];			// 72byte
char VTGBuf[Max];			// 38byte
int GGASize, GLLSize, GSASize, GSVSize;
int GSVSize, RMCSize, VTGSize, ZDASize;
int Ptr, Size, Index, SendFlag, SendState;
char Flag, DFlag, temp, LogCnt;
unsigned int BatV;
unsigned long LogAdr;
char USBOutBuf[64];
/* LCD���b�Z�[�W�f�[�^��` */
const unsigned char StrMsg[] = "Start GPS Logger";
const unsigned char USBMsg[] = "Connect to USB! ";
const unsigned char TXSMsg[] = "Start USB Send! ";
const unsigned char TXEMsg[] = "Stop USB Send!  ";

/********* �֐��v���g�^�C�s���O *********/
static void InitializeSystem(void);
void USBDeviceTasks(void);
void USBCBSendResume(void);
void PosDisp(void);
void TimeDisp(void);
char Receive(void);
void Send(char Data);
void Battery(void);
void Logging(void);
void USBSend(void);

#pragma code
/************ ���C���֐� ********************/
int main(void)
{   
	InitializeSystem();					// �V�X�e��������
	/* �p�����[�^������ */
	Ptr = 0;
	DFlag = 0;							// �\�����[�h�t���O
	GGASize = 0;						// �Z���e���X��M�J�E���^���Z�b�g
	GSASize = 0;
	GSVSize = 0;
	RMCSize = 0;
	VTGSize = 0;
	logFile = NULL;						// ���O�t�@�C�����I�[�v���Ƀ��Z�b�g
	/* �t���[�����[�N������ */
	initResults = FSInit();				// �t�@�C���V�X�e��������
	USBDeviceInit();						// USB�f�o�C�X������
	USBDeviceAttach();					// USB�f�o�C�X�A�^�b�`����

	/***************** ���C�����[�v ********************/	
	while(1)
	{
		/********** USB�ڑ����̏ꍇ *************/
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			MSDTasks();									// �t�@�C���V�X�e���X�e�[�g�X�V
			/*** USB�@CDC�R�}���h��M  ***/
		 	if(getsUSBUSART(USBOutBuf,64) > 0){			// �f�[�^��M�|�[��
		  		switch(USBOutBuf[0]){					// �ŏ��̂P�����`�F�b�N
		   			case 's':	  						// ���M�J�n
		   				lcd_str(TXSMsg);				// ���M�J�n���b�Z�[�W�\��
						SendFlag = 1;					// ���M���t���O�I��
						SendState = 1;
		     			break;         			 		
		   			case 'e':							// ���M�I��
		   				lcd_str(TXEMsg);				// ���M�I�����b�Z�[�W�\��
						SendFlag = 0;					// ���M���t���O�I�t
		     		 	break;
		    	}
			}
			/**** USB CDC�f�[�^���M���s�X�e�[�g *******/
			if((SendFlag ==1) && (VTGSize != 0))		// �S�Z���e���X��M�����҂�
				USBSend();								// �S�Z���e���X���X�e�[�g�ő��M
		}
		/********** USB�ڑ��Ȃ��̏ꍇ ***********/
		else{
			/** �\���ؑփX�C�b�`�̃`�F�b�N�@**/
			if(sw2){									// Select on�H
				DFlag ^= 1;								// �\���ؑ֔��]
				lcd_clear();
				while(sw2);								// �`���b�^�����O���
				delay_ms(50);
			}
			/** ���O�J�n�I���X�C�b�`�`�F�b�N **/
			if(sw1){									// Log On?
				if(logFile != NULL){					// ���O�����H
					FSfclose(logFile);					// �t�@�C���N���[�Y
					logFile = NULL;						// ���O���t���O���Z�b�g
					LUNSoftAttach(0);					// CPU���璼���A�^�b�`�m�F
					lcd_icon(3, 0);						// �I�[�v���A�C�R���I�t
					lcd_icon(2, 0);						// ���O���A�C�R���I�t										
				}
				else{									// ���O�J�n
					LUNSoftDetach(0);					// CPU�A�N�Z�X�֎~
					logFile = FSfopen("GPSLog.csv",APPEND);// �t�@�C���ǉ����[�h�ŃI�[�v��
					lcd_icon(3, 1);						// �I�[�v���A�C�R���I��					
				}
				while(sw1);								// �`���b�^�����O���
				delay_ms(50);				
			}			
			/****** �f�[�^��M�����ŕҏW�\���������s *********/
			if(VTGSize != 0){							// �Ōチ�b�Z�[�W��M�������H
				/** ��M�ڈ�A�C�R���\�� **/
				if(Flag){
					Flag = 0;							// �t���O���]
					lcd_icon(0, 1);						// �A�C�R���I��
				}
				else{
					Flag = 1;							// �t���O���]
					lcd_icon(0, 0);						// �A�C�R���I�t
				}
				/** �ҏW��LCD�ɕ\�� **/
				if(DFlag == 0)							// �\�����[�h�`�F�b�N
					PosDisp();							// �ܓx�o�x�\��
				else	
					TimeDisp();							// �������x�\��
				/** �o�b�e���c�ʕ\�� **/
				Battery();
				/** ���O�L�^���� **/
				if(logFile != NULL){
					if(GSABuf[9] > '1'){					// �f�[�^���킩�H
						if(Flag)			
							lcd_icon(2,1);				// ���O���ڈ�A�C�R���_��
						else
							lcd_icon(2, 0);				// �I�t
						Logging();						// �S�Z���e���X���O���s
					}
				}
				/* �Z���e���X��M�J�E���^���Z�b�g */
				GGASize = 0;
				GSASize = 0;
				GSVSize = 0;
				RMCSize = 0;
				VTGSize = 0;
			}
			else
				delay_ms(10);							// ��M�����̂Ƃ��̊Ԋu�x��
		}
	}				
	return 0;
}
/*********************************************
 * �����ݒ�֐�
 *********************************************/
static void InitializeSystem(void)
{
	CLKDIV = 0x0020;					// 96MHz PLL On, CPU32MHz
	AD1PCFG = 0xFFFD;					// AN1�ȊO�f�W�^���ɐݒ�
	/* I/O���[�h�ݒ� */
	TRISA = 0x000E; 
	TRISB = 0x8FE7;
	/* I2C�̏����ݒ� */
	I2C1BRG = 0x9D;						// 100kHz@16MHz
	I2C1CON = 0x8000;					// I2C�C�l�[�u��	
	/* SPI�s�����t */
	RPINR20bits.SDI1R = 15;				// SDI1 -> RP15
	RPOR6bits.RP13R = 7;				// SDO1 -> RP13
	RPOR7bits.RP14R = 8;				// SCK1OUT -> RP14 	
	/// AD�R���o�[�^�̏����ݒ�
 	AD1CON1 = 0x00E0;					// AD�I���A�蓮�T���v���J�n,�����ϊ��J�n
	AD1CON2 = 0x0000;					// AVdd, AVss, �ϊ����ƂɊ��荞��, MUXA�̂�
	AD1CON3 = 0x1F05;					// 31 Tad auto-sample, Tad = 5*Tcy
 	AD1CHS  = 0x0001;					// �`���l���I���iAN1�j
	AD1CSSL = 0;						// �����X�L�����Ȃ�//	
	/* �t���\����̏�����  */
	lcd_init();							// ������
	lcd_cmd(0x80);						// 1�s��
	lcd_str(StrMsg);					// �J�n���b�Z�[�W�\��
	delay_ms(500);						// �\���m�F�҂�
	/// UART1�s�����t
	RPINR18bits.U1RXR = 2;				// UART1 RX to RP2
	RPOR1bits.RP3R = 3;					// UART1 TX to RP3
	/// UART1�����ݒ�@4800bps 8�r�b�g �p���e�B�Ȃ��A�t���[����Ȃ�
	U1BRG = 207;						// 4800bps@16MHz
	U1MODE = 0b1000100000000000;		// UART1�����ݒ�
	U1STA =  0b0000010000000000;		// UART1�����ݒ�	
	IFS0bits.U1RXIF = 0;				// ��M���荞�݃t���O�N���A
	IEC0bits.U1RXIE =1;					// ��M���荞�݋���
}
	
/***************************************
* UART ��M���荞�ݏ����֐� 
* 1�Z���e���X��M������RFlag�I��
***************************************/
void __attribute__((interrupt, no_auto_psv)) _U1RXInterrupt(void)
{
	char data;
	
	IFS0bits.U1RXIF = 0;							// ���荞�݃t���O�N���A
	if(U1STAbits.OERR|| U1STAbits.FERR) {
		lcd_icon(4, 1);								// Error log on	
		Ptr = 0;									// �o�b�t�@�|�C���^���Z�b�g
		U1STA &= 0xFFF0;							// �G���[�t���O�N���A
		U1MODE = 0;									// UART Disable
		U1MODE = 0b1000100000000000;				// UART1�����ݒ�
		U1STA =  0b0000010000000000;				// UART1�����ݒ�	
		IEC0bits.U1RXIE =1;							// ��M���荞�݋���				
	}
	else {
		data = U1RXREG;								// ��M�f�[�^�擾
		if(Ptr < 200)								// �o�b�t�@�I�[�o�[���H
			SavBuf[Ptr++] = data;					// �i�[
		else{
			lcd_icon(5, 1);							// Error log on
			Ptr = 0;
		}
		if(data == 0x0A){							// �Z���e���X�I����
			Size = Ptr;								// ��M�o�C�g���ۑ�
			Ptr = 0;								// �|�C���^���Z�b�g
			/*** ��M���b�Z�[�W���ƂɃo�b�t�@�Ɋi�[ ***/
			if(memcmp(SavBuf, "$GPGGA", 6)==0){
				memcpy(GGABuf, SavBuf, Size);		// �o�b�t�@�R�s�[
				GGASize = Size;						// ��M�o�C�g���ۑ�
			}
			else if(memcmp(SavBuf, "$GPGSA", 6)==0){
				memcpy(GSABuf, SavBuf, Size);		// �o�b�t�@�R�s�[
				GSASize = Size;						// ��M�o�C�g���ۑ�
			}
			else if(memcmp(SavBuf, "$GPGSV", 6)==0){
				memcpy(GSVBuf, SavBuf, Size);		// �o�b�t�@�R�s�[
				GSVSize = Size;						// ��M�o�C�g���ۑ�
			}
			else if(memcmp(SavBuf, "$GPRMC", 6)==0){
				memcpy(RMCBuf, SavBuf, Size);		// �o�b�t�@�R�s�[
				RMCSize = Size;						// ��M�o�C�g���ۑ�
			}								
			else if(memcmp(SavBuf, "$GPVTG", 6)==0){
				memcpy(VTGBuf, SavBuf, Size);		// �o�b�t�@�R�s�[
				VTGSize = Size;						// ��M�o�C�g���ۑ�
			}			
		}
	}
}
/********************************************
* USB���g���ăf�[�^���M
* ��M�������ׂẴZ���e���X�����̂܂ܑ��M
********************************************/
void USBSend(void){
    	switch(SendState){							// �X�e�[�g�Ői�߂�
		case 1:
			if(USBUSARTIsTxTrfReady()){				// GGA�Z���e���X���M
				if(GGASize != 0)					// GGA���肩�H
					putUSBUSART(GGABuf, GGASize);	// �O�����M
				SendState++;
			}					
			break;
		case 2:
			if(USBUSARTIsTxTrfReady()){				// GSA�Z���e���X���M
				if(GSASize != 0)
					putUSBUSART(GSABuf, GSASize);	// �ꊇ���M
				SendState++;
			}
			break;
		case 3:
			if(USBUSARTIsTxTrfReady()){				// GSV�Z���e���X���M
				if(GSVSize != 0)					
					putUSBUSART(GSVBuf, GSVSize);	// �ꊇ���M
				SendState++;
			}
			break;
		case 4:
			if(USBUSARTIsTxTrfReady()){				// RMC�Z���e���X���M
				if(RMCSize != 0)					
					putUSBUSART(RMCBuf, RMCSize);	// �O�����M
				SendState++;
			}
			break;
		case 5:
			if(USBUSARTIsTxTrfReady()){				// VTG�Z���e���X���M
				if(VTGSize != 0)					
					putUSBUSART(VTGBuf, VTGSize);	// �ꊇ���M
				SendState++;
			}
			break;
		case 6:
			if(USBUSARTIsTxTrfReady()){				// �S�����M�����m�F
				/* �Z���e���X��M�J�E���^���Z�b�g */
				GGASize = 0;
				GSASize = 0;
				GSVSize = 0;
				RMCSize = 0;
				VTGSize = 0;				
				SendState = 1;						// �ŏ��̃X�e�[�g�֖߂�
			}
			break;		
		default:
			break;
	}
	CDCTxService();									// ���ۂ̑��M���s
}	
/********************************************
* ���O�������ݎ��s�֐�
* ��M�������ׂẴZ���e���X�����̂܂ܕۑ�
*********************************************/
void Logging(void){
	if(GGASize != 0)
		FSfwrite((const void*)&GGABuf[0], 1, GGASize, logFile);
	if(GSASize != 0)
		FSfwrite((const void*)&GSABuf[0], 1, GSASize, logFile);
	if(GSVSize != 0)
		FSfwrite((const void*)&GSVBuf[0], 1, GSVSize, logFile);	
	if(RMCSize != 0)
		FSfwrite((const void*)&RMCBuf[0], 1, RMCSize, logFile);	
	if(VTGSize != 0)
		FSfwrite((const void*)&VTGBuf[0], 1, VTGSize, logFile);
}
/***************************************
*  GPS���e�\���T�u�֐�
*  �ܓx�o�x�\��
****************************************/
void PosDisp(void)
{
	unsigned int i;
	/*** �ܓx�o�x�\�� ****/
	/** 1�s�ڈܓx�\�� **/
	lcd_cmd(0x80);						// 1�s��		
	lcd_data(GGABuf[28]);				// N/S
	lcd_data(' ');
	lcd_data(GGABuf[18]);				// �ܓx�\��
	lcd_data(GGABuf[19]);
	lcd_data(0xDF);						// ���\��
	for(i=0; i<7; i++)
		lcd_data(GGABuf[20+i]);			// �ܓx���\��
	lcd_data(' ');
	lcd_data('S');
	lcd_data(GGABuf[45]);				// �q�����\��	
	lcd_data(GGABuf[46]);
	/** 2�s�ڌo�x�\�� **/	
	lcd_cmd(0xC0);						// 2�s�ڂɈړ�
	lcd_data(GGABuf[41]);				// E/W
	lcd_data(GGABuf[30]);
	lcd_data(GGABuf[31]);				// �o�x�\��
	lcd_data(GGABuf[32]);
	lcd_data(0xDF);						// ���\��
	for(i=0; i<7; i++)
		lcd_data(GGABuf[33+i]);			// �o�x���\��
	lcd_data(' ');
	lcd_data(GSABuf[9]);				// �����\��		
	lcd_data('D');						// 
}
/***************************************
*  GPS���e�\���T�u�֐�
*  �����\��
****************************************/
void TimeDisp(void){
	unsigned char i;
	/** �����\�� **/
	lcd_cmd(0x80);						// 1�s��
	lcd_data('T');
	lcd_data(' ');
	lcd_data(GGABuf[7]);				// ����
	lcd_data(GGABuf[8]);
	lcd_data(':');
	lcd_data(GGABuf[9]);				// ��
	lcd_data(GGABuf[10]);
	lcd_data(':');
	for(i=0; i<2; i++){
		lcd_data(GGABuf[11+i]);			// �b
	}
	/** ���x�\�� **/
	lcd_cmd(0xC0);
	lcd_data('H');						// H�\��
	lcd_data(' ');
	for(i=0; i<5; i++){					// ���x�ϒ��Ή�
		if(GGABuf[52+i] == ',')
			break;
		else
			lcd_data(GGABuf[52+i]);		// ���x�\��
	}
	lcd_data(GGABuf[52+i+1]);			// M
}
/*********************************************
* �o�b�e���c�ʕ\���T�u�֐�
*********************************************/
void Battery(void){
	/*** �o�b�e���d������  ***/
	AD1CON1bits.ADON = 0;				// ��������AD�I�t	
	AD1CHS = 0x0001;					// �`���l��AN1�I��
	AD1CON1bits.ADON = 1;				// AD�ēx�I��
	AD1CON1bits.SAMP = 1;				// �T���v�����O�J�n
	while(!AD1CON1bits.DONE);			// �ϊ��I���҂�		
	BatV = ADC1BUF0;					// �ϊ����ʎ擾
	/* �A�C�R���\�� */
	if(BatV >= 620)						// �d���`�F�b�N
		lcd_icon(12, 1);				// 4.0V�ȏ�@����
	else{
		if(BatV >= 574)
			lcd_icon(11, 1);			// 3.7V�ȏ�@���e��
		else{
			if(BatV >= 527)
				lcd_icon(10, 1);		// 3.4V�ȏ�@���e��
			else
				lcd_icon(9, 1);			// 3.4�ȉ��@����
		}
	}
}
/***********************************************************
* �{�[���[�g�ύX�֐�
*
* �@����:  USB_CDC_SET_LINE_CODING_HANDLER ����`����Ă��邱��
************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps�ȏ�Ȃ牽�����Ȃ�
	}
	else{
		// CDC�h���C�o�̃{�[���[�g�ύX
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
	}
}
#endif

// ***************************************************************************************
// ************** USB Callback Functions *************************************************
// ***************************************************************************************

/*******************************************************************
 * Function:        void USBCBSuspend(void)
 *******************************************************************/
void USBCBSuspend(void)
{
	#if 0
		U1EIR = 0xFFFF;
		U1IR = 0xFFFF;
		U1OTGIR = 0xFFFF;
		IFS5bits.USB1IF = 0;
		IEC5bits.USB1IE = 1;
		U1OTGIEbits.ACTVIE = 1;
		U1OTGIRbits.ACTVIF = 1;
		Sleep();
	#endif
}
/*******************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *******************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/********************************************************************
 Function:        void USBCB_SOF_Handler(void)
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
    USBCheckMSDRequest();
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
    #if (MSD_DATA_IN_EP == MSD_DATA_OUT_EP)
        USBEnableEndpoint(MSD_DATA_IN_EP,USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    #else
        USBEnableEndpoint(MSD_DATA_IN_EP,USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
        USBEnableEndpoint(MSD_DATA_OUT_EP,USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    #endif

    USBMSDInit();			// �t�@�C���V�X�e��������
    CDCInitEP();			// CDC�N���X�p�G���h�|�C���g������
}
/*******************************************************************
 * Function:        void USBCBSendResume(void)
 *******************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;

    if(USBGetRemoteWakeupStatus() == TRUE)  {
        //Verify that the USB bus is in fact suspended, before we send
        //remote wakeup signalling.
        if(USBIsBusSuspended() == TRUE) {
            USBMaskInterrupts();
            //Clock switch to settings consistent with normal USB operation.
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  //So we don't execute this code again, 
                                        //until a new suspend condition is detected.
            delay_count = 3600U;        
            do {
                delay_count--;
            }while(delay_count);
            //Now drive the resume K-state signalling onto the USB bus.
            USBResumeControl = 1;       // Start RESUME signaling
            delay_count = 1800U;        // Set RESUME line for 1-13 ms
            do {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       //Finished driving resume signalling
            USBUnmaskInterrupts();
        }
    }
}
/*******************************************************************
 * Function:       BOOL USER_USB_CALLBACK_EVENT_HANDLER
 *                 (USB_EVENT event, void *pdata, WORD size)
 *******************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
	switch(event)
	{
		case EVENT_TRANSFER:
				lcd_cmd(0xC0);
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
				lcd_clear();					// USB�ڑ����b�Z�[�W
				lcd_str(USBMsg);				// LCD�ɕ\��
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
         

