/***********************************************
*  �t���\���탉�C�u����
*  I2C�C���^�[�t�F�[�X
*  PIC24�t�@�~����I2C���W���[�����g�p
*    lcd_init()    ----- ������
*    lcd_cmd(cmd)  ----- �R�}���h�o��
*    lcd_data(data) ----- �P�����\���o��
*    lcd_str(ptr)  ----- ������\���o��
*    lcd_clear()   ----- �S����
**********************************************/
#include <p24fj64gb002.h>
#include "lcd_i2c_lib2.h"
#include "i2c_lib2.h"
/*********************************
*�@�A�C�R���̒�`
*********************************/
const unsigned char ICON[14][2]={
	{0x00, 0x10},		// �A���e�i
	{0x02, 0x10},		// �d�b
	{0x04, 0x10},		// ����
	{0x06, 0x10},		// �W���b�N
	{0x07, 0x10},		// ��	
	{0x07, 0x08},		// ��
	{0x07, 0x18},		// ����
	{0x09, 0x10},		// ��
	{0x0B, 0x10},		// �s��
	{0x0D, 0x02},		// �d�r����
	{0x0D, 0x12},		// �e�ʏ�
	{0x0D, 0x1A},		// �e�ʒ�
	{0x0D, 0x1E},		// �e�ʑ�
	{0x0F, 0x10}		// ��
};

/*********************************
* �t����1�����\���f�[�^�o��
*********************************/
void lcd_data(unsigned char data)
{
	I2CStart();					// �X�^�[�g
	I2COut(0x7C);				// �A�h���X
	I2COut(0x40);				// �\���f�[�^�w��
	I2COut(data);				// �\���f�[�^�o��
	I2CStop();					// �X�g�b�v
	delay_us(40);				// �x��
}

/*******************************
* �t���ւP�R�}���h�o�� 
*******************************/
void lcd_cmd(unsigned char cmd)
{
	I2CStart();					// �X�^�[�g
	I2COut(0x7C);				// �A�h���X
	I2COut(0x00);				// �R�}���h�w��
	I2COut(cmd);				// �R�}���h�o��
	I2CStop();					// �X�g�b�v
	/* Clear��Home�� */
	if((cmd == 0x01)||(cmd == 0x02))
		delay_ms(2);			// 2msec�҂�
	else
		delay_us(40);			// 40��sec�҂�	
}
/*******************************
*  �������֐� 
*******************************/
void lcd_init(void)
{
	LATAbits.LATA4 = 0;			// LCD Reset
	delay_ms(10);				// 10msec��
	LATAbits.LATA4 = 1;	
	delay_ms(100);				// �҂�100msec
	lcd_cmd(0x38);				// 8bit 2line Normal mode
	lcd_cmd(0x39);				// 8bit 2line Extend mode	
	lcd_cmd(0x14);				// OSC 183Hz BIAS 1/5
	/* �R���g���X�g�ݒ� */
	lcd_cmd(0x70 + (CONTRAST & 0x0F));
	lcd_cmd(0x5C + (CONTRAST >> 4));
//	lcd_cmd(0x6A);				// Follower for 5.0V
	lcd_cmd(0x6B);				// Ffollwer for 3.3V
	delay_ms(300);				// 300msec�҂�
	lcd_cmd(0x38);				// Set Normal mode 
	lcd_cmd(0x0C);				// Display On 
	lcd_cmd(0x01);				// Clear Display 
}
/******************************
* �S�����֐�
******************************/
void lcd_clear(void)
{
	lcd_cmd(0x01);				//�������R�}���h�o��
}
/*****************************
* ������\���֐�
*****************************/
void lcd_str(const unsigned char* ptr)
{
	while(*ptr != 0)			//�������o�� 
		lcd_data(*ptr++);		//�����\��
}
/*****************************
*  �A�C�R���\������֐�
*****************************/
void lcd_icon(unsigned char num, unsigned char onoff)
{
	lcd_cmd(0x39);					// Extend mode
	lcd_cmd(0x40 | ICON[num][0]);	// �A�C�R���A�h���X�w��
	if(onoff)
		lcd_data(ICON[num][1]);		// �A�C�R���I���f�[�^
	else
		lcd_data(0x00);				// �A�C�R���I�t�f�[�^
	lcd_cmd(0x38);					// Normal Mode
}

/******************************
*  �x���֐�
******************************/
/**** usec�P�ʃf�B���C�֐� ****/
void delay_us(int usec){
	usec = (int)(CLOCK*usec)/ 10;
	while(usec)	{
		asm("NOP");
		asm("NOP");
		asm("NOP");
		asm("NOP");
		asm("NOP");					
		usec--;
	}
}
/***** msec�P�ʃf�B���C�֐� *****/
void delay_ms(int msec){
	int i;
	for(i=0; i< msec; i++)
		delay_us(1000);
}
