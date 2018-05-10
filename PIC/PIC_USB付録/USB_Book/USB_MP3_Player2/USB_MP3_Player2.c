/*****************************************************
*  USB MP3�v���[���v���O����
*  �@USB�z�X�gMass�N���X���g�p PIC24FJ64GB004
*  �@�}�C�N���`�b�v��FAT�t�@�C���V�X�e�����g�p
*  �@MP3�f�R�[�_��SPI1���W���[���Őڑ�
*    �O���t�B�b�NQVGA�t���\����ƃ^�b�`�p�l�����g�p
******************************************************/
#include <p24fj64gb004.h>
#include "USB/usb.h"
#include "USB/usb_host_msd.h"
#include "USB/usb_host_msd_scsi.h"
#include "MDD File System/FSIO.h"
#include "VS1011.h"
#include "colorlcd_libYHY16.h"
/*** �R���t�B�M�����[�V�����ݒ�  32MHz USB�pPLL96MHz�g�p  ***/
_CONFIG1(WINDIS_OFF & FWDTEN_OFF & ICS_PGx1 & GCP_OFF & JTAGEN_OFF) 
_CONFIG2(POSCMOD_XT & I2C1SEL_PRI & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3(SOSCSEL_IO)
/* FAT�V�X�e���p�O���[�o���ϐ���`  */
FSFILE *fptr;
size_t result;
BYTE Buffer[512];
BYTE DataBuf[1024];
SearchRec Record;
SearchRec *rptr = &Record;
volatile BOOL deviceAttached;
/* �X�e�[�g�ϐ� */
enum  {
	DEVICE_NOT_CONNECTED = 0,	// �������
	DEVICE_CONNECTED,			// ���f�B�A���o
	FILE_FOUND,					// MP3�t�@�C�����o
	PLAY,						// ���y�Đ���
	FINISH						// �Đ�����
}State;
/* MP3�p�ϐ�  */
int i, Count, Chatta, Swit, FileCount;
BYTE Volume, BASS, TREB, Item, ChgFlag;
/* �^�b�`�{�^�����W�f�[�^ */
int Button[7][2] = {{150,720},{300,720},{450,720},{610,720},{770,720}};  
char MsgScrn[] = "X=xxx Y=xxx";		// �f�o�b�O�p���W�\��
/* �֐��v���g�^�C�s���O  */
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size );
void DispMenu(void);
void Display(void);
int Getscreen(unsigned int chn);
int CheckBtn(int x, int y);
void itostring(char digit, unsigned int data, char *buffer);
void Process(int sw);
void SW_DOWN(void);
void SW_UP(void);


/**************************
* ���C���֐�
***************************/
int main(void){

	CLKDIV = 0x0020;					// 96MHz PLL On, CPU:32MHz
	/* ���o�̓|�[�g�ݒ�  */
	TRISA = 0x000E;						// OSC SI�̂ݓ��� 
	TRISB = 0x1C4F;						// LCD MP3�ɍ��킹��
	TRISC = 0;							// LCD�p
	AD1PCFG = 0xFF0F;					// AN4,5,6,7�̂݃A�i���O	
	/* SPI�̃s������t��  */
	RPINR20bits.SDI1R = 6;				// SDI1��RP6��
	RPOR7bits.RP15R = 8;				// SCK1��RP15��
	RPOR2bits.RP5R = 7;					// SDO1��RP5��
	State = DEVICE_NOT_CONNECTED;		// �X�e�[�g������
	/* �^�b�`�X�N���[���pADC�̐ݒ� */
	AD1PCFG = 0xFF0F;					// AN4,5,6,7�̂݃A�i���O
	AD1CON1 = 0x0000;					// AD�I�t,�蓮����,����,
	AD1CON2 = 0;						// AVdd, AVss, SCAN�Ȃ�,MUXA�̂�,���荞�݂Ȃ�
	AD1CON3 = 0x1F3F;					// 31Tad , Tad = 64*Tcy
 	AD1CHS  = 0x0000;					// �`���l���I��
	AD1CSSL = 0;						// �����X�L�����Ȃ�
	AD1CON1bits.ADON = 1;				// AD�L����
	/* �^�C�}1�ݒ� 50msec���� �^�b�`�X�N���[���p */
	T1CON = 0x0030;
	PR1 = 7800;							// 50msec
	IFS0bits.T1IF = 0;					// ���荞�݃t���O�N���A
	IEC0bits.T1IE = 1;					// ���荞�݋���	
	// �t���\����̏������ƊJ�n���b�Z�[�W�\��	
	lcd_Init();
	lcd_Clear(WHITE);
	DispMenu();	
	/*�@VS1011e�̏������@*/
	VS1011_Init();						// MP3�f�R�[�_������
	Volume = 0x20;						// ���ʂ̏����ݒ�
	SetVolume(Volume, Volume);			// �R�}���h�o��
	BASS = 5;							// �o�X�u�[�X�g�̏����ݒ�
	SetBassBoost(BASS,15);				// �R�}���h�o��
	/* VS1011�̃f�o�b�O���e�X�g�p�̃R�}���h�@�@*/
//	VS1011_SineTest();					// �����g�o�̓e�X�g
//	while(1);							// �����ŉi�v���[�v
	deviceAttached = FALSE;				// �f�o�C�X�����o�Ƃ���
	USBInitialize(0);					// USB�X�^�b�N������
	/* �^�C�}�P����J�n */
	T1CONbits.TON = 1;
		
	/**************** ���C�����[�v�@**********/
	while(1){
	
		USBTasks();										// USB����M���s
 		/**** �X�e�[�g�ɏ]���čĐ��������s  ****/	
		switch(State){
			case DEVICE_NOT_CONNECTED:
				/* ���f�B�A�̑}���`�F�b�N */
				if(USBHostMSDSCSIMediaDetect()) {		// ���f�B�A���o�������H
		    		deviceAttached = TRUE;				// ���f�B�A����
       				result = FSInit();					// FAT�̏�����
       				if(result)							// �������ł������H
	       				State = DEVICE_CONNECTED;		// OK�Ȃ玟�̃X�e�[�g��
		  		}
   				break;
   			case DEVICE_CONNECTED: 	
				/* �ŏ��̃t�@�C���̃T�[�`�i���[�g������MP3�t�@�C�������邱�Ƃ��O��j  */
				result = FindFirst("*.*", ATTR_ARCHIVE, rptr);
				if(result == 0){
					State = FILE_FOUND;					// �t�@�C�����݂Ȃ玟�̃X�e�[�g��
					FileCount = 0;						// �t�@�C���J�E���^�N���A
				}
				break;
			case FILE_FOUND:	
				/* ���������t�@�C���̃I�[�v���@*/		
				fptr = FSfopen(Record.filename, READ);	// �t�@�C���̃I�[�v��
				if(fptr == 0)							// ����ɃI�[�v���ł�����
					State = DEVICE_NOT_CONNECTED;		//�@�ł��Ȃ�������ŏ��ɖ߂�
				else{
					FileCount++;
					DispMenu();							// ���j���[�\��
					Display();
					State = PLAY;						// �I�[�v���ł����玟�̃X�e�[�g��	
				}
				break;
			case PLAY:
				/* ���ʕύX�{�^���`�F�b�N�Ɛ���  */
				if(ChgFlag){							// ���ʕύX���肩�H
					ChgFlag = 0;
					SetVolume(Volume, Volume);			// ���ʐݒ�
					SetBassBoost(BASS, 15);				// �o�X�u�[�X�g�ݒ�
				}			
				/***** �P�t�@�C�����̉��y�f�[�^�̍Đ� *******/
				MP3_XDCS_IO = 0;						// �`�b�v�I��
				/* 512�o�C�g�P�ʂŃt�@�C�����[�h�@*/
				IEC0bits.T1IE = 0;						// ���荞�݋֎~
				result = FSfread(Buffer, 1, 512, fptr);	// �t�@�C����EOF�܂Ōp��
				if(result != 0){						// EOF�łȂ����H
					/* MP3�f�R�[�_�֏o�� */
					for(i= 0; i<result; i++)			// �ǂݏo�����o�C�g�������J��Ԃ�
						SendData(Buffer[i]);			// ���y�f�[�^���M
				}
				else{									// EOF�̏ꍇ�Đ���������
					MP3_XDCS_IO = 1;					// �`�b�v�I������
					FSfclose(fptr);						// �t�@�C���̃N���[�Y
					PlayEnd();							// �Đ��I������
					State = FINISH;
				}
				IEC0bits.T1IE = 1;						// ���荞�݋���
				break;
			case FINISH:					
				/* �A���Đ��̂��ߎ��̃t�@�C���T�[�` */
				result = FindNext(rptr);				// ���̃t�@�C����
				/* ���̃t�@�C��������΃I�[�v������ */
				if((result==0)&&(Record.attributes==ATTR_ARCHIVE)){
					fptr = FSfopen(Record.filename, READ);
					FileCount++;
					if(FileCount > 100)					// 100�Ȗڒ�������1�ɖ߂�
						FileCount = 1;
					DispMenu();
					Display();
					State = PLAY;						// �Đ��X�e�[�g�֖߂�
				}									
				else   /* �t�@�C���̏I���Ȃ�ēx�ŏ�����J��Ԃ�  */
				{
					State = DEVICE_NOT_CONNECTED;		// �ŏ��̃X�e�[�g��
				}		
				break;
			default: break;
		}
	}
}
/******************************************
*  �^�C�}1���荞�ݏ���(50msec����)
*  �^�b�`�X�N���[���@�A�i���O���� 
*******************************************/
void __attribute__((interrupt, auto_psv)) _T1Interrupt(void)
{
	static int i, Xset, Yset, Xold, Yold;

	IFS0bits.T1IF = 0;				// ���荞�݃t���O�N���A
	// X+=B2(AN4) X-=B0 Y+=B3(AN5) Y-=B1
	/*** X���W���� ****/
	TRISBbits.TRISB3 = 0;			// RB3 RB1 is output
	TRISBbits.TRISB1 = 0;
	LATBbits.LATB3 = 1;				// Set Voltage
	LATBbits.LATB1 = 0;
	TRISBbits.TRISB2 = 1;			// RB0,RB2 input
	TRISBbits.TRISB0 = 1;
	for(i=0; i<50; i++)				// �[�d�҂� 11usec
		Nop();
	Xset = Getscreen(4);			// ���W�l�擾
	/**** Y���W���́@****/
	TRISBbits.TRISB0 = 0;			// RB2,RB0 output
	TRISBbits.TRISB2 = 0;
	LATBbits.LATB0 = 1;				// Set Voltage
	LATBbits.LATB2 = 0;
	TRISBbits.TRISB1 = 1;			// RB3, RB1 is input
	TRISBbits.TRISB3 = 1;
	for(i=0; i<50; i++)				// �[�d�҂� 11usec
		Nop();
	Yset = Getscreen(5);			// ���W�l�擾
	/*** �m���ȃ^�b�`���� ***/
	if((Xset > 50)&&(Yset > 100)){	// �^�b�`���Ă��Ȃ��Ƃ��X���[
		/*** ���W�͈̓`�F�b�N�@**/
		if((abs(Xset - Xold) < 30) && abs(Yset - Yold) < 20){
			Count++;
			if(Count >= 3){			// 3��ȏ㓯���͈͂Ȃ�^�b�`�Ɣ���
				Count = 0;
				Swit = CheckBtn(Xset, Yset);
				Process(Swit);		// �e�{�^���̏���
			}
		}
		else
			Count = 0;				// �J�E���g�N���A
		Xold = Xset;				// �O��l�X�V
		Yold = Yset;
	}
}
/********************************
*   ���W�擾���s�֐�
********************************/
int Getscreen(unsigned int chn)
{
	int i;

	AD1CON1bits.ADON = 0;
	AD1CHS0 = chn;						// Select Channel
	AD1CON1bits.ADON = 1;
	AD1CON1bits.SAMP = 1;
	for(i=0; i<50; i++)					// Wait Aquisition 11usec
		Nop();
	AD1CON1bits.SAMP = 0;				// A/D convert start
	while(!AD1CON1bits.DONE);			// wait conversion
	return(ADC1BUF0);					// return result
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
	lcd_Str(5, 11, MsgScrn, RED, WHITE);
	/** �{�^���`�F�b�N **/
	btn = -1;
	for(	i=0; i<7; i++){
		if((x > Button[i][0]-50)&&(x <	Button[i][0]+50)){
			if((y > Button[i][1]-30)&&(y < Button[i][1]+30))
				btn = i;
		}
	}
	return(btn);
}
/********************************************
*  �X�C�b�`���Ƃ̏���
*   SW1:����
*   SW2:�ቹ
*   SW3:����
*   SW4:�A�b�v
*   SW5:�_�E��
*********************************************/
void Process(int sw)
{
	for(i=0; i<8; i++)
		lcd_Line(0, 5+i, 319, 5+i, WHITE);	
	switch(sw){
		case 0:
			Item = 1;					// ����
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 320-5*Volume, 5+i, GREEN);		
			break;
		case 1:
			Item = 2;					// �ቹ���x��
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 20*BASS, 5+i, PERPLE);			
			break;
		case 2:	
			break;
		case 3:	SW_UP();
				break;
		case 4: SW_DOWN();
				break;
		default: Item =0;
			/* �Ȑ��o�[�O���t�\�� */
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 3*FileCount, 5+i, RED);		
			break;
	}	
}
/******************************************
* ���ڃA�b�v�X�C�b�`����
*******************************************/
void SW_UP(void)	
{
	switch(Item)
	{
		case 0:	
			FSfclose(fptr);				// ���݂̃t�@�C���������N���[�Y
			PlayEnd();					// �Đ��I������
			delay_ms(50);
			/* ���̋Ȃ� */
			State = FINISH;
			break;		
		case 1:
			if(Volume > 0)				// ���ʃA�b�v
				Volume--;
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 320-5*Volume, 5+i, GREEN);				
			ChgFlag = 1;				// �ω��t���O�I��
			break;
		case 2:
			if(BASS < 0x0F)				// �ቹ���x���A�b�v
				BASS++;
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 20*BASS, 5+i, PERPLE);
			ChgFlag = 1;				// �ω��t���O�I��
			break;
		default: break;
	}
}

/******************************************
* ���ڃ_�E���X�C�b�`����
*******************************************/
void SW_DOWN(void)
{
	switch(Item)
	{
		case 0: break;					// �ȑI���ł͉������Ȃ�
		case 1:
			if(Volume < 64)				// ���ʃ_�E��
				Volume++;
			for(i=0; i<8; i++)	
				lcd_Line(0, 5+i, 320-5*Volume, 5+i, GREEN);
			break;
		case 2:
			if(BASS > 0)				// �ቹ���x���_�E��
				BASS--;
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 20*BASS, 5+i, PERPLE);				
			break;
		default: break;
	}
	ChgFlag = 1;						// �ω��t���O�I��
}

/***************************************
* ��������ASCII�����ɕϊ�
****************************************/
void itostring(char digit, unsigned int data, char *buffer)
{
	char i;

	buffer += digit;					// �Ō�̐����ʒu
	for(i=digit; i>0; i--) {			// �ϊ��͉��ʂ����ʂ�
		buffer--;						// �|�C���^�[�P
		*buffer = (data % 10) + '0';	// ASCII��
		data = data / 10;				// ���̌���
	}
}

/********************************************
* ���j���[��ʕ\�� 
*********************************************/
void DispMenu(void){
	int i;
	
	lcd_Clear(WHITE);
	lcd_Str(2, 0, " USB MP3 Player ", WHITE, RED);	// ���o��
	lcd_Char(0, 1, 0xF0, MAGENTA, WHITE);			// ��
	lcd_Char(1, 1, 0xEF, MAGENTA, WHITE);			// ��
	lcd_Char(0, 6, 0xF8, MAGENTA, WHITE);			// ���t
	lcd_Char(1, 6, 0xF9, MAGENTA, WHITE);
	lcd_Char(1, 12, 0xF1, WHITE, BLUE);				// ����
	lcd_Char(2, 12, 0xF3, WHITE, BLUE);				// ����
	lcd_Char(5, 12, 0xF2, WHITE, BLUE);				// �ቹ
	lcd_Char(6, 12, 0xF1, WHITE, BLUE);				// �ቹ
//	lcd_Char(9, 12, 0x84, WHITE, BLUE);				// ����
//	lcd_Char(10, 12, 0xF1, WHITE, BLUE);			// ����		
	lcd_Char(13, 12, 0xF4, WHITE, BLUE);			// �㏸
	lcd_Char(14, 12, 0xF5, WHITE, BLUE);			// �㏸
	lcd_Char(17, 12, 0xF6, WHITE, BLUE);			// ���~
	lcd_Char(18, 12, 0xF7, WHITE, BLUE);			// ���~
	/* �Ȑ��o�[�O���t�\�� */
	for(i=0; i<8; i++)
		lcd_Line(0, 5+i, 3*FileCount, 5+i, RED);	
				
}
/*******************************************
*  �ȃf�[�^/�o���h���\��
*  ���p�݂̂̏ꍇ��18������4�s���ŕ\��
*�@�����̏ꍇ�ɂ�10�����~2�s���ŕ\��
*******************************************/
void Display(void)
{
	#define MaxTag 512
	unsigned int locate, i, NameSize;
	
	result = FSfread(DataBuf, 1, 1024, fptr);		// �t�@�C���̃w�b�_��1KB�ǂݍ���
	/******* �Ȗ��T�[�` (TIT2) ***********/
	locate = 0;	
	for(i=0; i<MaxTag; i++){
		if((DataBuf[i] == 'T') && (DataBuf[i+1]== 'I') 
			&& (DataBuf[i+2] == 'T') && (DataBuf[i+3] == '2')){
			locate = i;
			break;
		}
	}
	/** �Ȗ��w�b�_����̏ꍇ�Ȗ��\�� **/
	if(locate != 0){
		NameSize = DataBuf[locate+7]-1;				// �Ȗ��f�[�^�̒���(Max256B�̑O��)
		if(NameSize > 80)							// �Ȗ�80�Ő���(20x4�s)
			NameSize = 80;
		/** �\������ **/
		for(i=0; i<NameSize; i++)					// �Ȗ��f�[�^���J��Ԃ�		
		{
			if(DataBuf[locate+11] < 0x80)
				lcd_Char(i%20, i/20+2, DataBuf[locate+11+i], BLACK, WHITE);
			else
				lcd_Str(2, 3, "Japanese Title!", COBALT, WHITE);// ���{�ꖼ�̏ꍇ�̕\��				
		}
	}
	else
		lcd_Str(3, 3, "No Music Title!", RED, WHITE);// �Ȗ��f�[�^���Ȃ��ꍇ�̕\��

	/******* �o���h���T�[�` (TPE1)or(TPE3) ********/
	locate = 0;	
	for(i=0; i<result; i++){
		if((DataBuf[i] == 'T') && (DataBuf[i+1]== 'P') 
			&& (DataBuf[i+2] == 'E') && ((DataBuf[i+3] == '1')||(DataBuf[i+3] == '3'))){
			locate = i;
			break;
		}
	}
	/*** �o���h������̏ꍇ�o���h��4�s�ڂ���\�� ***/
	if(locate != 0){
		NameSize = DataBuf[locate+7]-1;				// �o���h���f�[�^��
		if(NameSize > 80)							// �ő啶��������
			NameSize = 80;
		/** �\������ **/
		for(i=0; i<NameSize; i++)
		{
			if(DataBuf[locate+11] < 0x80)		
				lcd_Char(i%20, i/20+7, DataBuf[locate+11+i], BLACK, WHITE);
			else
				lcd_Str(2, 3, "Japanese Title!", COBALT, WHITE);// ���{�ꖼ�̏ꍇ�̕\��				
		}
	}
	else
		lcd_Str(3, 8, "No Band Name!", RED, WHITE);	// �o���h���������Ƃ��̕\��
	FSrewind(fptr);									// �t�@�C���̍ŏ��ɖ߂�
}	


						
//******************************************************************************
// USB Support Functions
//******************************************************************************
/****************************************************************************
  Function:
    BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event,
                void *data, DWORD size )
 ***************************************************************************/
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
    switch( event )
    {
        case EVENT_VBUS_REQUEST_POWER:
            return TRUE;

        case EVENT_VBUS_RELEASE_POWER:
            deviceAttached = FALSE;
            return TRUE;
            break;

        case EVENT_HUB_ATTACH:
            return TRUE;
            break;

        case EVENT_UNSUPPORTED_DEVICE:
            return TRUE;
            break;

        case EVENT_CANNOT_ENUMERATE:
            return TRUE;
            break;

        case EVENT_CLIENT_INIT_ERROR:
            return TRUE;
            break;

        case EVENT_OUT_OF_MEMORY:
             return TRUE;
            break;

        case EVENT_UNSPECIFIED_ERROR:   // This should never be generated.
             return TRUE;
            break;

        default:
            break;
    }

    return FALSE;
}

