/****************************************************
*  �t���\���퐧�䃉�C�u�����@for PIC32MX�t�@�~��
*  �����֐��͈ȉ�
*    delay_us()    ----- usec�P�ʃf�B���C
*    delay_ms()    ----- msec�P�ʃf�B���C
*    lcd_init()    ----- ������
*    lcd_cmd(cmd)  ----- �R�}���h�o��
*    lcd_data(chr) ----- �P�����\���o��
*    lcd_clear()   ----- �S����
*    lcd_str(*str) ----- ������\��
*****************************************************/
#include "LCD_Lib32b.h"

/**********************************
*  ���[�v�x���֐��@usec�P��
**********************************/
void delay_us(unsigned int usec)
{
	unsigned int i, Max;
	
	Max = usec * Fosc/10;
	for(i=0; i<Max; i++)
	{	}
}
/**********************************
*  ���[�v�x���֐��@msec�P��
**********************************/		 
void delay_ms(unsigned int msec)
{
	unsigned int i;
	
	for(i=0; i<msec; i++)
		delay_us(1000);
}

//////// �f�[�^�o�̓T�u�֐�
void lcd_out(char code, char flag){
	// Set upper 4 bits Data on LATB12-LATB15
	LCD_DATA = (LCD_DATA & 0x0FFF) | ((unsigned int)(code & 0xF0)<<8); 
	if (flag == 0)
		LCD_RS = 1;				// �\���f�[�^�̏ꍇ
	else
		LCD_RS = 0;				// �R�}���h�f�[�^�̏ꍇ
	delay_us(1);				// pulse width		
	LCD_E = 1;					// strobe out
	delay_us(1);				// pulse width
	LCD_E = 0;					// reset strobe
}
//////// �P�����\���֐�
void lcd_data(char asci){
	lcd_out(asci, 0);			// ��ʂS�r�b�g�o��
	lcd_out(asci<<4, 0);		// ���ʂS�r�b�g�o��
	delay_us(50);				// 50��sec�҂�
}
/////// �R�}���h�o�͊֐�
void lcd_cmd(char cmd){
	lcd_out(cmd, 1);			// ��ʂS�r�b�g�o��
	lcd_out(cmd<<4, 1);			// ���ʂS�r�b�g�o��
	if((cmd & 0x03) != 0)		// Clear home�̏ꍇ
		delay_ms(2);			// 2msec�҂�
	else
		delay_us(50);			// 50usec�҂�
}
/////// �S�����֐�
void lcd_clear(void){
	lcd_cmd(0x01);				// �������R�}���h�o��
	delay_ms(15);				// 15msec�҂�
}
/////// ������o�͊֐�
void lcd_str(const char *str){
	while(*str != 0x00){		// ������̏I��蔻��
		lcd_data(*str);		// ������P�����o��
		str++;				// �|�C���^�{�P
	}
}
/////// �������֐�
void lcd_init(void){
	delay_ms(40);
	lcd_out(0x03, 1);			// 8bit mode set
	delay_ms(5);
	lcd_out(0x03, 1);			// 8bit mode set
	delay_ms(1);
	lcd_out(0x03, 1);			// 8bit mode set
	delay_ms(1);
	lcd_out(0x02, 1);			// 4bit mode set
	delay_ms(1);
	delay_us(10);
	lcd_cmd(0x2E);			// DL=0 4bit mode
	lcd_cmd(0x08);			// display off C=D=B=0
	lcd_cmd(0x0D);			// display on C=D=1 B=0
	lcd_cmd(0x06);			// entry I/D=1 S=0
	lcd_cmd(0x02);			// cursor home
}
