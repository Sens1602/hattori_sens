/***************************************
*  液晶表示器用ヘッダファイル
*  PIC24ファミリでI2Cモジュールを使用
*    lcd_init()    ----- 初期化
*    lcd_cmd(cmd)  ----- コマンド出力
*    lcd_data(data) ----- １文字表示出力
*    lcd_str(ptr)  ----- 文字列表示出力
*    lcd_clear()   ----- 全消去
***************************************/


/******************************************
*  調整用定数　いずれかを電源電圧で選択
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
