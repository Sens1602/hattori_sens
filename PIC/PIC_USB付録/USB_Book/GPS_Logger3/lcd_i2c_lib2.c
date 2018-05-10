/***********************************************
*  液晶表示器ライブラリ
*  I2Cインターフェース
*  PIC24ファミリでI2Cモジュールを使用
*    lcd_init()    ----- 初期化
*    lcd_cmd(cmd)  ----- コマンド出力
*    lcd_data(data) ----- １文字表示出力
*    lcd_str(ptr)  ----- 文字列表示出力
*    lcd_clear()   ----- 全消去
**********************************************/
#include <p24fj64gb002.h>
#include "lcd_i2c_lib2.h"
#include "i2c_lib2.h"
/*********************************
*　アイコンの定義
*********************************/
const unsigned char ICON[14][2]={
	{0x00, 0x10},		// アンテナ
	{0x02, 0x10},		// 電話
	{0x04, 0x10},		// 無線
	{0x06, 0x10},		// ジャック
	{0x07, 0x10},		// △	
	{0x07, 0x08},		// ▽
	{0x07, 0x18},		// △▽
	{0x09, 0x10},		// 鍵
	{0x0B, 0x10},		// ピン
	{0x0D, 0x02},		// 電池無し
	{0x0D, 0x12},		// 容量少
	{0x0D, 0x1A},		// 容量中
	{0x0D, 0x1E},		// 容量多
	{0x0F, 0x10}		// 丸
};

/*********************************
* 液晶へ1文字表示データ出力
*********************************/
void lcd_data(unsigned char data)
{
	I2CStart();					// スタート
	I2COut(0x7C);				// アドレス
	I2COut(0x40);				// 表示データ指定
	I2COut(data);				// 表示データ出力
	I2CStop();					// ストップ
	delay_us(40);				// 遅延
}

/*******************************
* 液晶へ１コマンド出力 
*******************************/
void lcd_cmd(unsigned char cmd)
{
	I2CStart();					// スタート
	I2COut(0x7C);				// アドレス
	I2COut(0x00);				// コマンド指定
	I2COut(cmd);				// コマンド出力
	I2CStop();					// ストップ
	/* ClearかHomeか */
	if((cmd == 0x01)||(cmd == 0x02))
		delay_ms(2);			// 2msec待ち
	else
		delay_us(40);			// 40μsec待ち	
}
/*******************************
*  初期化関数 
*******************************/
void lcd_init(void)
{
	LATAbits.LATA4 = 0;			// LCD Reset
	delay_ms(10);				// 10msec幅
	LATAbits.LATA4 = 1;	
	delay_ms(100);				// 待ち100msec
	lcd_cmd(0x38);				// 8bit 2line Normal mode
	lcd_cmd(0x39);				// 8bit 2line Extend mode	
	lcd_cmd(0x14);				// OSC 183Hz BIAS 1/5
	/* コントラスト設定 */
	lcd_cmd(0x70 + (CONTRAST & 0x0F));
	lcd_cmd(0x5C + (CONTRAST >> 4));
//	lcd_cmd(0x6A);				// Follower for 5.0V
	lcd_cmd(0x6B);				// Ffollwer for 3.3V
	delay_ms(300);				// 300msec待ち
	lcd_cmd(0x38);				// Set Normal mode 
	lcd_cmd(0x0C);				// Display On 
	lcd_cmd(0x01);				// Clear Display 
}
/******************************
* 全消去関数
******************************/
void lcd_clear(void)
{
	lcd_cmd(0x01);				//初期化コマンド出力
}
/*****************************
* 文字列表示関数
*****************************/
void lcd_str(const unsigned char* ptr)
{
	while(*ptr != 0)			//文字取り出し 
		lcd_data(*ptr++);		//文字表示
}
/*****************************
*  アイコン表示制御関数
*****************************/
void lcd_icon(unsigned char num, unsigned char onoff)
{
	lcd_cmd(0x39);					// Extend mode
	lcd_cmd(0x40 | ICON[num][0]);	// アイコンアドレス指定
	if(onoff)
		lcd_data(ICON[num][1]);		// アイコンオンデータ
	else
		lcd_data(0x00);				// アイコンオフデータ
	lcd_cmd(0x38);					// Normal Mode
}

/******************************
*  遅延関数
******************************/
/**** usec単位ディレイ関数 ****/
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
/***** msec単位ディレイ関数 *****/
void delay_ms(int msec){
	int i;
	for(i=0; i< msec; i++)
		delay_us(1000);
}
