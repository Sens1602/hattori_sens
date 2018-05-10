/*****************************************************
*�@�@VS1011E�@���䃉�C�u���� 
*  
******************************************************/
#include "VS1011.h"
#include <p24FJ64gb004.h>
/************************************
* SPI Read after Write�@��{�֐�
************************************/
BYTE WriteSPI(BYTE output){
	MP3_SPI_IF = 0;				// ���荞�݃t���O�N���A
	MP3_SSPBUF = output;		// SPI�o��
	while(!MP3_SPI_IF);			// ���͑҂�
	return MP3_SSPBUF;			// ���̓f�[�^�߂�l
}
/************************************
*  VS1011�p�R�}���h�o�͊֐�
************************************/
void Command(BYTE RegAdrs, BYTE UpData, BYTE LowData){
	MP3_XDCS_IO = 1;			// �f�[�^���[�h����
	while(!MP3_DREQ_IO);		// ���f�B�[�҂�
	MP3_XCS_IO = 0;				// �R�}���h���[�h�ݒ� 
	WriteSPI(0x02);				// �������ݓ���w��
	WriteSPI(RegAdrs);			// ���W�X�^�A�h���X�o��
	WriteSPI(UpData);			// ��ʃo�C�g�o��
	WriteSPI(LowData);			// ���ʃo�C�g�o��
	MP3_XCS_IO = 1;				// �R�}���h���[�h����
}
/************************************
*  VS1011�p�R�}���h�o�͊֐�(�m�F�t��)
************************************/
void CmdCheck(BYTE RegAdrs, BYTE UpData, BYTE LowData){
	BYTE b1,b2;

	do{
		MP3_XDCS_IO = 1;		// �f�[�^���[�h����
		while(!MP3_DREQ_IO);	// ���f�B�[�҂�
		MP3_XCS_IO = 0;			// �R�}���h���[�h�ݒ� 
		WriteSPI(0x02);			// �������ݓ���w��
		WriteSPI(RegAdrs);		// ���W�X�^�A�h���X�o��
		WriteSPI(UpData);		// ��ʃo�C�g�o��
		WriteSPI(LowData);		// ���ʃo�C�g�o��
		MP3_XCS_IO = 1;			// �R�}���h���[�h����
		while(!MP3_DREQ_IO);	// ���f�B�[�҂�
		MP3_XCS_IO = 0;			// �ǂݍ��݊m�F
		WriteSPI(0x03);			// �ǂݍ��ݓ���
		WriteSPI(RegAdrs);		// ���W�X�^�A�h���X�w��
		b1 = WriteSPI(0xFF);	// return UpData
		b2 = WriteSPI(0xFF);	// return LowData
		MP3_XCS_IO = 1;	
	}while((b1 != UpData) || (b2 != LowData));
}
/************************************
*  VS1011�p�f�[�^�o�͊֐�
************************************/
void SendData(BYTE Data){
	while(!MP3_DREQ_IO);		// ���f�B�[�҂�
	WriteSPI(Data);
}

/***********************************************
*  ���ʃ��x���ݒ�֐�
*   vRight = �E�`���l���p����
*   vLeft  = ���`���l���p����
*�@�@   ��������@0x00=Max 0dB 0.5dB�X�e�b�v�ŉ�����
************************************************/
void SetVolume(BYTE vRight, BYTE vLeft){
	Command(0x0B, vRight, vLeft);
}

/**********************************************
*  �ቹ�u�[�X�g�ݒ萧��֐�
*    bass�F �ቹ�Q�C���@�����W��0dB����15dB�͈̔�
*    gfreq: �ቹ�u�[�X�g���g���ݒ�@10Hz�X�e�b�v�@0�`15�͈̔�
***********************************************/
void SetBassBoost(BYTE bass, BYTE gfreq)
{
	BYTE temp1 = 0;
	/* �ݒ�͈͂̐��� */
	if(bass > 15)
		bass = 15;
	if(gfreq > 15)
		gfreq = 15;
	/* 8�r�b�g�ɍ��� */
	temp1 = gfreq;
	temp1 |= (bass << 4);
	Command(0x02, 0x00, temp1);		// BASS	
	return;
}
/*********************************************
*	�Đ��I�������֐�
*
*********************************************/
void PlayEnd(void){
	int i;

	/* �Đ��o�b�t�@�N���A�̂���2048�o�C�g���M�@*/
	MP3_XDCS_IO = 0;						// XDCS�I��
	for(i=0; i<2048; i++)
		SendData(0);						// 0�̃f�[�^�A�����M
	MP3_XDCS_IO = 1;						// XDCS�I�t
	/*** �\�t�g�E�F�A���Z�b�g�Ŋ��� **/
	Command(0x00, 0x08, 0x24);				// SM_RESET���M
	while(!MP3_DREQ_IO);					// �R�}���h�����҂�
}
/********************************************
*  VS1011 �������֐�
*    VS1011�]�����[�h�ASDI�e�X�g���[�h�@�ɐݒ�
*    VS1011�Ɛ���ɒʐM�ł��Ȃ��Ɖi�v�҂��ƂȂ�
*********************************************/
void VS1011_Init(void){
	unsigned int val;

	/***** VS1011�p�|�[�g�̏����ݒ�   ***/
	MP3_XDCS_IO = 1;				// DCS��High
	MP3_XCS_IO = 1;					// XCS��High
	MP3_XRESET_IO = 0;				// XRESET��Low
	MP3_XRESET_TRIS = 0;			// �o��TRIS�L����
	MP3_DREQ_TRIS = 1;				// DREQ���̓��[�h��
	MP3_XDCS_TRIS = 0;				// XDCS�o��
	MP3_XCS_TRIS = 0;				// XCS�o��
	MP3_SDI_TRIS = 1;				// SDI2���̓��[�h
	MP3_SDO_TRIS = 0;				// SDO2�o�̓��[�h
	MP3_SCK_TRIS = 0;				// SCK2�o�̓��[�h
 	/***** SPI1�̏����ݒ�   ***/
	MP3_SPICON1 = 0x012B;			// 8�r�b�g���[�h,CKP = 0,CLK=Fosc/4 (4MHz)
									// �����ŃT���v��(SMP=0) �����G�b�W�ő��M(CKE=1)
	MP3_SPICON2 = 0;				// �t���[�����[�h�Ȃ�
	MP3_SPI_IF = 0;					// ���荞�݃t���O�N���A
	MP3_SPISTATbits.SPIEN = 1;		// SPI1�C�l�[�u��
	/* RESET�����AVS1011�X�^�[�g  */
	MP3_XRESET_IO = 1;				// RESET����	
	delay_ms(50);					// 50msec delay
	/** ���[�h�ݒ�@*/
	CmdCheck(0x00, 0x08, 0x20);		// ���[�h�����ݒ�@�V���[�h�ASDI�e�X�g���[�h
	/* �N���b�N�_�u���ݒ�@*/
	val = 12288 / 2 + 0x8000;		// �ݒ�l�����߂�i�f�[�^�V�[�g���j
	CmdCheck(0x03, (BYTE)(val /256), (BYTE)val);
	delay_ms(10);
}

/********************************************
*  VS1011 �����g�e�X�g���[�h�ݒ�֐�
*    MODE��SPI�e�X�g���[�h�ɐݒ肵�Ă����K�v������
*********************************************/
void VS1011_SineTest(void)
{
	/* �e�X�g���[�h�V�[�P���X�o�� */
	while(!MP3_DREQ_IO);
	MP3_XDCS_IO = 0;
 	// Start Sine Test
	WriteSPI(0x53);
	WriteSPI(0xEF);
	WriteSPI(0x6E);
	WriteSPI(0x7D);				// 22.050kHz Out is 5kHz
	WriteSPI(0x00);
	WriteSPI(0x00);
	WriteSPI(0x00);
	WriteSPI(0x00);
	MP3_XDCS_IO = 1;
}
/****************************
* usec�P�ʃf�B���C�֐�
****************************/
void delay_us(int usec){
	usec = (int)(CLOCK*usec)/4;
	while(usec)	{
		asm("NOP");
		asm("NOP");
		usec--;
	}
}
/***************************
* msec�P�ʃf�B���C�֐�
***************************/
void delay_ms(int msec){
	int i;
	for(i=0; i< msec; i++)
		delay_us(1000);
}
