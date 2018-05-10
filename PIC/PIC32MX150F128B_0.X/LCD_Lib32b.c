/****************************************************
*  液晶表示器制御ライブラリ　for PIC32MXファミリ
*  内蔵関数は以下
*    delay_us()    ----- usec単位ディレイ
*    delay_ms()    ----- msec単位ディレイ
*    lcd_init()    ----- 初期化
*    lcd_cmd(cmd)  ----- コマンド出力
*    lcd_data(chr) ----- １文字表示出力
*    lcd_clear()   ----- 全消去
*    lcd_str(*str) ----- 文字列表示
*****************************************************/
#include "LCD_Lib32b.h"

/**********************************
*  ループ遅延関数　usec単位
**********************************/
void delay_us(unsigned int usec)
{
	unsigned int i, Max;
	
	Max = usec * Fosc/10;
	for(i=0; i<Max; i++)
	{	}
}
/**********************************
*  ループ遅延関数　msec単位
**********************************/		 
void delay_ms(unsigned int msec)
{
	unsigned int i;
	
	for(i=0; i<msec; i++)
		delay_us(1000);
}

//////// データ出力サブ関数
void lcd_out(char code, char flag){
	// Set upper 4 bits Data on LATB12-LATB15
	LCD_DATA = (LCD_DATA & 0x0FFF) | ((unsigned int)(code & 0xF0)<<8); 
	if (flag == 0)
		LCD_RS = 1;				// 表示データの場合
	else
		LCD_RS = 0;				// コマンドデータの場合
	delay_us(1);				// pulse width		
	LCD_E = 1;					// strobe out
	delay_us(1);				// pulse width
	LCD_E = 0;					// reset strobe
}
//////// １文字表示関数
void lcd_data(char asci){
	lcd_out(asci, 0);			// 上位４ビット出力
	lcd_out(asci<<4, 0);		// 下位４ビット出力
	delay_us(50);				// 50μsec待ち
}
/////// コマンド出力関数
void lcd_cmd(char cmd){
	lcd_out(cmd, 1);			// 上位４ビット出力
	lcd_out(cmd<<4, 1);			// 下位４ビット出力
	if((cmd & 0x03) != 0)		// Clear homeの場合
		delay_ms(2);			// 2msec待ち
	else
		delay_us(50);			// 50usec待ち
}
/////// 全消去関数
void lcd_clear(void){
	lcd_cmd(0x01);				// 初期化コマンド出力
	delay_ms(15);				// 15msec待ち
}
/////// 文字列出力関数
void lcd_str(const char *str){
	while(*str != 0x00){		// 文字列の終わり判定
		lcd_data(*str);		// 文字列１文字出力
		str++;				// ポインタ＋１
	}
}
/////// 初期化関数
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
