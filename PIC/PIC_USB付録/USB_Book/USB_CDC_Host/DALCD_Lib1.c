/*************************************************
*  �O���t�B�b�NLCD���䃉�C�u����
*   DA�t�@�~������GFX���g�p
*�@ �g�p�t���\����FGPG3224012QS4�@
**************************************************/
#include	<p24fxxxx.h>
#include 	"DALCD_Lib1.h"
#include	"ASCII16dot2.h"				// �����������ɔz�u
#include 	<stdlib.h>

/*** �r�f�I�o�b�t�@��` 8�r�b�g�J���[�p �����������̂ݎg�p�@****/
__eds__ unsigned char Buffer __attribute__((address(0x5C00)));
__eds__ unsigned char *ptr;
int _count;			// �^�b�`�X�N���[���p�񐔃J�E���^
unsigned int Xset, Yset, Xold, Yold;

/************************************************
* �O���t�B�b�N�R���g���[�����W���[���������֐�
*************************************************/
void GInit(void){
	/** LCD���Z�b�g **/							
	delay_ms(20);
	LATFbits.LATF3 		= 0;			// LCD Reset
	delay_ms(20);
	LATFbits.LATF3 		= 1;			// LCD On
	delay_ms(20);
	/** �O���t�B�b�N���W���[�������ݒ� **/
	G1CON2bits.DPMODE 	= 1;			// TFT�w��
	G1DBENbits.GDBEN 		= 0xFFFF;	// �f�[�^16�r�b�g�L��
	G1DPWbits.DPW   		= 320;		// Active Frame Width
	G1DPHbits.DPH   		= 240;		// Active Frame Height
	G1DPWTbits.DPWT 		= 408;		// Spec H Width
	G1DPHTbits.DPHT 		= 262;		// Spec V Height
	G1CON3bits.DPCLKPOL 	= 1;			// ���オ��Ńf�[�^�T���v��
	G1CON3bits.DPENOE		= 1;			// GEN�L����
	G1CON3bits.DPENPOL 	= 1;			// GEN���_��
	G1CON3bits.DPVSOE 	= 1;			// VSYNC�L����
	G1CON3bits.DPHSOE 	= 1;			// HSYNC�L����
	G1CON3bits.DPVSPOL 	= 0;			// VSYNC���_��
	G1CON3bits.DPHSPOL 	= 0;			// HSYNC���_��
	G1ACTDAbits.ACTLINE 	= 18;		// �L�����C���J�n�ʒu
	G1ACTDAbits.ACTPIX 	= 38;		// �L���h�b�g�J�n�ʒu
	G1VSYNCbits.VSST 		= 0;			// �����t�����g�|�[�` 2->0
	G1HSYNCbits.HSST 		= 2;			// �����t�����g�|�[�` 10->9
	G1VSYNCbits.VSLEN 	= 1;			// VSYNC��
	G1HSYNCbits.HSLEN 	= 10;		// HSYNC��
	G1DBLCONbits.VENST 	= 18;		// �����L���J�n�ʒu
	G1DBLCONbits.HENST 	= 38;		// �����L���J�n�ʒu
	G1CON3bits.DPPINOE 	= 1;			// �o�̓s���L����
	G1CON3bits.DPPOWER 	= 1;			// �p���[�I��
	G1CON3bits.DPPWROE 	= 1;			// GPWR�s���I��
	G1CON1bits.G1EN 		= 1;			// ���W���[���I��
	G1CON2bits.DPBPP 		= 3;			// 8bit/Pixel
	G1DPADRL = (unsigned int)&Buffer;	// �o�b�t�@�J�n�A�h���X
	G1DPADRH = 0;
	/** GPU�A�N�Z�����[�^�����ݒ�  **/
	G1W1ADRL = (unsigned int)&Buffer;	// Work Area 1�ݒ�
	G1W1ADRH = 0;
	G1CON1bits.PUBPP = 3;				// 8bit/Pixel
	G1PUW = 320;						// ��ʃT�C�Y�ݒ�
	G1PUH = 240;
	PutCmd((unsigned int)Font, 0x5200);// CHR_FONTBASE
	PutCmd(0x0000, 0x5800);			// CHR_TXTAREASTART
	PutCmd(0x00F0, 0x5914);			// CHR_TXTAREAEND
	PutCmd(0x0000, 0x5100);			// CHR_BGCOLOR
	G1W2ADRL = (unsigned int)&Buffer;	// �{�b�N�X�pWork Area2
	G1W2ADRH = 0;
}
/**********************************
* �O���t�B�b�N�R�}���h�o�͊֐�
* 2�o�C�g�̏o��
**********************************/
void PutCmd(unsigned int low, unsigned int high){
	while(G1STATbits.CMDFUL);			// �o�b�t�@���f�B�[�`�F�b�N
	G1CMDL = low;						// ����
	G1CMDH = high;					// ���
}
/**********************************
* �t���\����S�����֐�1
*  �������N���A�ŏ���
**********************************/
void Clear(void){
	unsigned int line, dot;

	/** �S���� **/
	ptr = &Buffer;					// �|�C���^�J�n�ʒu��		
	for(line=0; line<240; line++){		// �S�o�b�t�@�w��
		for(dot=0; dot<320; dot++)
			*ptr++ = 0xFF;			// ���F�őS����
	}
}
/**********************************
* �t���\����S�����֐�2
*  ��`�`��ō����N���A
**********************************/
void ClearBox(unsigned int color){
	/*** �{�b�N�X�őS��ʏ��� **/
	PutCmd(0x0000, 0x6300);			// �R�s�[��A�h���X
	PutCmd(0x00F0, 0x6414);			// ��`�T�C�Y(320�~240)
	PutCmd(color, 0x6600);				// �J���[
	PutCmd(0x0060, 0x6700);			// �R�s�[���s
}
/**********************************
* 1�����\���֐�
* ��A�s�A�����A�����F�A�w�i�F
**********************************/
void PutCha(unsigned int colum, unsigned int line, unsigned char ascii, unsigned char fgcolor, unsigned char bkcolor){
	if((colum < MaxColum) && (line < MaxLine)){ 
		/* �\���F�w�� */
		PutCmd(fgcolor, 0x5000);		// CHR_FGCOLOR
		PutCmd(bkcolor, 0x5100);		// CHR_BGCOLOR
		/* �\���ʒu�w��@CHR_PRINTPOS */
		PutCmd(((colum*16)<<12)+line*16, (colum+0x5A00));
		/* �����\���w�� */
		PutCmd((unsigned int)ascii, 0x5300);			// CHR_PRINTCHAR
	}
}
/*********************************
*  ������\���֐�
*  ��A�s�A������A�����F�A�w�i�F
**********************************/
void PutStr(unsigned int colum, unsigned int line, const unsigned char *mesg, unsigned char fgcolor, unsigned char bkcolor){

	if((colum < MaxColum) && (line < MaxLine)){
		while(*mesg != 0){
			PutCha(colum, line, *mesg, fgcolor, bkcolor);
			mesg++;
			colum++;
			if(colum >= MaxColum){
				colum= 0;
				line++;
				if(line >= MaxLine)
					line = 0;
			}
		}
	}
} 
/**********************************
*  ��`�\���֐� 
*  X�ʒu�AY�ʒu�A���A�����A�\���F
**********************************/
void PutBox(unsigned int x, unsigned int y, unsigned int width, unsigned int height, unsigned int color){
	unsigned int temp;
	
	if((x + width) < 320){					// �E�[�����Ȃ����H
		temp = y * 320 + x;				// �������A�h���X�����߂�@8bit�J���[
		PutCmd(temp, 0x6300+temp/0x10000);	// �ʒu�w��
		PutCmd((width<<12)+height, (width/16)+0x6400);// �T�C�Y�w��
		PutCmd(color, 0x6600);				// �F�w��
		PutCmd(0x0060, 0x6700);			// �w��F�x�^�h��`����s
	}
}		

/*********************************
*  SPI���W���[���������֐�
**********************************/
void SPIInit(void){
	RPINR20bits.SDI1R = 1;				// SDI1 -> RP1�@SDO����s��
	RPOR0bits.RP1R = 7;				// SDO1 -> RP1
	RPOR1bits.RP2R = 8;				// SCK1OUT -> RP2
//	LATAbits.LATA0 = 1;				// CS High
	SPI1CON1 = 0x0060;				// Prescale 1/8, 1/64
	SPI1CON2 = 0x0; 
	SPI1STATbits.SPIEN = 1;			// SPI Enable
}
/*********************************
*  SPI���M�֐� 8bit
**********************************/
void WriteSPI(unsigned char data){
	unsigned char dumy;

	SPI1BUF = data;					// Send Reg No
	while(!SPI1STATbits.SPIRBF);		// ��M�҂�
	dumy = SPI1BUF;					// Dumy Read
}
/*********************************
*  SPI�R�}���h���M�֐�
*  ���W�X�^No�A�ݒ�f�[�^
**********************************/
void SendSPI(unsigned char reg, unsigned int cmd){
//	LATAbits.LATA0 = 0;				// CS Low
//	LATBbits.LATB0 = 0;				// DC Low�@Command
	WriteSPI(0);						// Reg Upper				
	WriteSPI(reg);					// Send Reg Lower
	LATBbits.LATB0 = 1;				// DC High Data
	WriteSPI(cmd>>8);					// Data Upper
	WriteSPI(cmd);					// Data Lower
//	LATAbits.LATA0 = 1;				// CS High
}
/*******************************************
* �^�b�`�X�N���[�����W�擾�֐� 
*  Xset, Yset�ɍ��W������
* �����I��X�AY�Ƃ͋t
********************************************/
char GetScreen(void){
	// X+=RB12(AN12) X-=RB13(AN13) Y+=RB14(AN14) Y-=RB15(AN15)
	/*** Y���W���� ****/
	ANSB = 0x3000;
	TRISBbits.TRISB14 = 0;			// Y+,Y- is output
	TRISBbits.TRISB15 = 0;
	LATBbits.LATB14 = 1;			// Set Voltage
	LATBbits.LATB15 = 0;
	TRISBbits.TRISB12 = 1;			// X+,X- input
	TRISBbits.TRISB13 = 1;
	Yset = GetAD(12);				// ���W�l�擾
	/**** X���W���́@****/
	ANSB = 0xC000;
	TRISBbits.TRISB12 = 0;			// X+,X- output
	TRISBbits.TRISB13 = 0;
	LATBbits.LATB12 = 1;			// Set Voltage
	LATBbits.LATB13 = 0;
	TRISBbits.TRISB14= 1;			// Y+,Y- is input
	TRISBbits.TRISB15 = 1;
	Xset = GetAD(14);				// ���W�l�擾
	
	/*** �^�b�`�̊m�F���� ***/
	if((Xset > 80)&&(Yset > 80)){	// �^�b�`���Ă��Ȃ����H
		/*** ����ʒu�J��Ԃ��m�F�@**/
		if((abs(Xset - Xold) < 40) && abs(Yset - Yold) < 40)
			_count++;			// �m�F�{
		else
			_count = 0;			// ��蒼��
		Xold = Xset;				// �����W����ւ�
		Yold = Yset;
		/** �m�F���ʂ�Ԃ� **/
		if(_count > 5){			// �����ʒu�^�b�`�m�F
			_count = 0;
			return(TRUE);
		}
		else
			return(FALSE);		
	}
	else{
		_count = 0;
		return(FALSE);
	}
}
/********************************
*   ���W�擾���s�֐�
********************************/
int GetAD(unsigned int chn)
{
	AD1CON1bits.ADON = 0;
	AD1CHS0 = chn;				// Select Channel
	AD1CON1bits.ADON = 1;
	AD1CON1bits.SAMP = 1;
	delay_us(20);
	AD1CON1bits.SAMP = 0;			// A/D convert start
	while(!AD1CON1bits.DONE);		// wait conversion
	return(ADC1BUF0);				// return result
}
/****************************************
*  �^�b�`�X�N���[���p�����ݒ�
****************************************/
void SetupScreen(void)
{
	/* ADC�̐ݒ� */
	AD1CON1bits.ADON = 0;
	AD1CON1 = 0x0000;				// AD�I�t�A�蓮����
	AD1CON2 = 0;					// AVdd, AVss, SCAN�Ȃ�,MUXA�̂�
	AD1CON3 = 0x0304;				// 3Tad , Tad = 5*Tcy
 	AD1CHS0 = 0x0000;				// �`���l���I��
	ANCFG   = 0x0000;				// �o���h�M���b�v�Ȃ�
	AD1CSSL = 0;					// �����X�L�����Ȃ�
	AD1CON1bits.ADON = 1;			// AD�L����

}


/**********************************
*  ���[�v�x���֐��@usec�P��
**********************************/
void delay_us(int usec) {
	int i;
	
	for(i=0; i<(Fosc*usec)/54; i++)
	{	}
}
/**********************************
*  ���[�v�x���֐��@msec�P��
**********************************/		 
void delay_ms(int msec){
	unsigned int i;
	
	for(i=0; i<msec; i++)
		delay_us(1000);
}
