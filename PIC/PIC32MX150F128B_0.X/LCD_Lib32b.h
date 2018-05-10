/*********************************************
* PIC32MXサンプルプログラム
*　液晶表示器ライブラリ用ヘッダファイル
*********************************************/
#include <plib.h> 
// 定数定義
#define	Fosc			80				// Fcy
/***** LCD関連設定 ******/
#define	LCD_DATA		LATB				// ４ビットデータの出力ポート
#define	LCD_RS		LATBbits.LATB10	// RS信号
#define	LCD_E		LATBbits.LATB11	// E(STB)信号
// 関数プロトタイピング
void delay_us(unsigned int usec);
void delay_ms(unsigned int msec);
void lcd_out(char code, char flag);
void lcd_data(char asci);
void lcd_cmd(char cmd);
void lcd_clear(void);
void lcd_init(void);
void lcd_str(const char *str);
