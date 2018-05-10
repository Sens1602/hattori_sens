/*************************************************
*  グラフィック液晶表示器用ライブラリ　ヘッダ
*		ポートの定義
*		関数プロトタイプ
**************************************************/
#include "p24FJ64gb004.h"

#define Fosc 80
/* LCD Ports define */
#define LCD_TRIS 	TRISC
#define	LCD_RS		LATBbits.LATB4
#define	LCD_CS		LATAbits.LATA8
#define LCD_WR		LATAbits.LATA4
#define LCD_RESET	LATCbits.LATC8
#define	LCD_RD		LATAbits.LATA9
#define LCD_DB		LATC

#define ENDCOL     320	// X
#define ENDROW     240	// Y
#define XChar		  (short)((ENDCOL) / 16)
#define YLine		  (short)((ENDROW) / 17)

/*******************************************
*  16bit Color Difinition
*******************************************/
#define WHITE		0xFFFF
#define BLACK		0x0000
#define RED			0xF800
#define GREEN		0x07E0
#define BLUE		0x001F
#define CYAN		0x07FF
#define MAGENTA		0xF81F
#define YELLOW		0xFFE0
#define BROWN		0x8000
#define ORANGE		0xFC00
#define PERPLE		0x8010
#define COBALT		0x041F

/***  関数プロトタイプ ****/
void lcd_out(unsigned int index, unsigned int data);
void lcd_Init(void);
void lcd_Clear(unsigned short Color);
void lcd_Pixel(short Xpos, short Ypos, unsigned short Color);
void lcd_Char(char colum, char line, unsigned char letter, unsigned short Color1, unsigned short Color2);
void lcd_Str(char colum, char line, char *s, unsigned short Color1, unsigned short Color2);
void lcd_Line(short x0, short y0, short x1, short y1, unsigned short Color);
void lcd_Circle(int x0, int y0, int r, unsigned short color);
//void delay_us(unsigned short time);
//void delay_ms(unsigned short time);
#include "VS1011.h"




