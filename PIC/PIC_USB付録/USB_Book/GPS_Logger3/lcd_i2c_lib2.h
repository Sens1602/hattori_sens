/***************************************
*  �t���\����p�w�b�_�t�@�C��
*  PIC24�t�@�~����I2C���W���[�����g�p
*    lcd_init()    ----- ������
*    lcd_cmd(cmd)  ----- �R�}���h�o��
*    lcd_data(data) ----- �P�����\���o��
*    lcd_str(ptr)  ----- ������\���o��
*    lcd_clear()   ----- �S����
***************************************/


/******************************************
*  �����p�萔�@�����ꂩ��d���d���őI��
*******************************************/
#define CLOCK	16
//#define CONTRAST	0x18	// for 5.0V
#define CONTRAST  0x30		// for 3.3V


void lcd_data(unsigned char data);
void lcd_cmd(unsigned char cmd);
void lcd_init(void);
void lcd_str(const unsigned char* ptr);
void lcd_clear(void);
void lcd_icon(unsigned char num, unsigned char onoff);
void delay_us(int usec);
void delay_ms(int msec);
