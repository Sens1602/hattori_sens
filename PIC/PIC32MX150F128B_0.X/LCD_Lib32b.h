/*********************************************
* PIC32MX�T���v���v���O����
*�@�t���\���탉�C�u�����p�w�b�_�t�@�C��
*********************************************/
#include <plib.h> 
// �萔��`
#define	Fosc			80				// Fcy
/***** LCD�֘A�ݒ� ******/
#define	LCD_DATA		LATB				// �S�r�b�g�f�[�^�̏o�̓|�[�g
#define	LCD_RS		LATBbits.LATB10	// RS�M��
#define	LCD_E		LATBbits.LATB11	// E(STB)�M��
// �֐��v���g�^�C�s���O
void delay_us(unsigned int usec);
void delay_ms(unsigned int msec);
void lcd_out(char code, char flag);
void lcd_data(char asci);
void lcd_cmd(char cmd);
void lcd_clear(void);
void lcd_init(void);
void lcd_str(const char *str);
