/********************************************************
*  カラーグラフィックLCD(240ｘ320ドット）用ライブラリ
*   横表示で設定
*	lcd_Init();		// 初期化
*	lcd_Clear();		// 全画面消去
*	lcd_Pixel();		// 1ドット表示
*	lcd_Char();		// ANK文字表示
*	lcd_Str();		// ANK文字列表示
*	lcd_Line();		// 直線描画
*	lcd_Circle();		// 円描画
*********************************************************/
#include "p24FJ64GB004.h"
#include "colorlcd_libYHY16.h"
#include "ASCII16dot.h"		//ASCII 12x12dot

/************************************
* レジスタ設定とデータ出力関数 
*************************************/
void lcd_out(unsigned int index, unsigned int data){
	// Index上位バイト出力
	LCD_CS = 0;				// CS Low
	LCD_RS = 0;				// Command 
	LCD_DB = ((index>>8) & 0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;
	// Index下位バイト出力
	LCD_DB = (index&0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;
	// Data上位バイト出力
	LCD_RS = 1;				// Data 
	LCD_DB = ((data>>8) & 0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;
	// Index下位バイト出力
	LCD_DB = (data&0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;	
	LCD_CS = 1;				// CS High

}

/****************************
* LCD初期化関数  
*****************************/
void lcd_Init(void){
	delay_ms(20);
	LCD_RD = 1;
	LCD_CS = 1;				// CS High
	LCD_WR = 1;				// WR High
	LCD_RESET = 0;			// Reset LCD
	delay_ms(0x1);			// 1msec wait
	LCD_RESET = 1;			// Clear RESET
	delay_ms(25);				// 25msec wait

	lcd_out(0x00E3, 0x3008); 	// Set internal timing
	lcd_out(0x00E7, 0x0012); 	// Set internal timing
	lcd_out(0x00EF, 0x1231); 	// Set internal timing
	lcd_out(0x0001, 0x0000); 	// set SS and SM bit
	lcd_out(0x0002, 0x0700);	// set line inversion
	lcd_out(0x0003, 0x1018);	// set GRAM write direction and BGR=1, 16bit color
	lcd_out(0x0004, 0x0000);	// Resize register
	lcd_out(0x0008, 0x0207);	// set the back porch and front porch
	lcd_out(0x0009, 0x0000);	// set non-display area refresh cycle ISC[3:0]
	lcd_out(0x000A, 0x0000);	// FMARK function
	lcd_out(0x000C, 0x0000); 	// RGB interface setting
	lcd_out(0x000D, 0x0000);	// Frame marker Position
	lcd_out(0x000F, 0x0000);	// RGB interface polarity
	/********* 電源オンシーケンス  **************/
	lcd_out(0x0010, 0x0000); 	// SAP, BT[3:0], AP[2:0], DSTB, SLP, STB
	lcd_out(0x0011, 0x0007);	// DC1[2:0], DC0[2:0], VC[2:0]
	lcd_out(0x0012, 0x0000);	// VREG1OUT voltage
	lcd_out(0x0013, 0x0000); 	// VDV[4:0] for VCOM amplitude
	delay_ms(200); 			// コンデンサ放電待ち
	lcd_out(0x0010, 0x1490); 	// SAP, BT[3:0], AP[2:0], DSTB, SLP, STB
	lcd_out(0x0011, 0x0227); 	// R11h=0x0221 at VCI=3.3V ,DC1[2:0], DC0[2:0], VC[2:0]
	delay_ms(50); 			// 遅延 50ms
	lcd_out(0x0012, 0x001c); 	// External reference voltage= Vci;
	delay_ms(50); 			// 遅延 50ms
	lcd_out(0x0013, 0x0A00); 	// R13=0F00 when R12=009E;VDV[4:0] for VCOM amplitude
	lcd_out(0x0029, 0x000F); 	// R29=0019 when R12=009E;VCM[5:0] for VCOMH//0012//
	lcd_out(0x002B, 0x000D); 	// Frame Rate = 91Hz
	delay_ms(50); 			// 遅延 50ms
	lcd_out(0x0020, 0x0000); 	// GRAM horizontal Address
	lcd_out(0x0021, 0x0000); 	// GRAM Vertical Address
	/**********  ガンマ補正  **********/
	lcd_out(0x0030, 0x0000);
	lcd_out(0x0031, 0x0203);
	lcd_out(0x0032, 0x0001);
	lcd_out(0x0035, 0x0205);
	lcd_out(0x0036, 0x030C);
	lcd_out(0x0037, 0x0607);
	lcd_out(0x0038, 0x0405);
	lcd_out(0x0039, 0x0707);
	lcd_out(0x003C, 0x0502);
	lcd_out(0x003D, 0x1008);
	/*********** GRAM領域設定 *********/
	lcd_out(0x0050, 0x0000); 	// Horizontal GRAM Start Address
	lcd_out(0x0051, 0x00EF); 	// Horizontal GRAM End Address
	lcd_out(0x0052, 0x0000); 	// Vertical GRAM Start Address
	lcd_out(0x0053, 0x013F); 	// Vertical GRAM Start Address
	lcd_out(0x0060, 0xA700); 	// Gate Scan Line 横表示用
	lcd_out(0x0061, 0x0001); 	// NDL,VLE, REV
	lcd_out(0x006A, 0x0000); 	// set scrolling line
	/************* 部分表示制御 ************/
	lcd_out(0x0080, 0x0000);	// 部分表示1位置
	lcd_out(0x0081, 0x0000);	// 部分表示1RAM開始アドレス
	lcd_out(0x0082, 0x0000);	// 部分表示1RAM終了アドレス
	lcd_out(0x0083, 0x0000);	// 部分表示2位置	
	lcd_out(0x0084, 0x0000);	// 部分表示2RAN開始アドレス
	lcd_out(0x0085, 0x0000);	// 部分表示2RAM終了アドレス
	/************** パネル制御 ************/
	lcd_out(0x0090, 0x0010);	// 1ラインクロック数
	lcd_out(0x0092, 0x0600);	// ゲートオーバーラップクロック数
	lcd_out(0x0093, 0x0003);	// 出力タイミング
	lcd_out(0x0095, 0x0110);	// RGBの1ラインクロック数
	lcd_out(0x0097, 0x0000);	// 出力タイミング
	lcd_out(0x0098, 0x0000);	// 出力タイミング
	/***** 表示制御 *****/ 
	lcd_out(0x0007, 0x0133); 	// 262K color and display ON
}

/***************************
* 画面消去関数
* 消去用色指定あり
****************************/
void lcd_Clear(unsigned short Color){
	int i, j;
	
	lcd_out(0x0020, 0);					// 原点にセット
	lcd_out(0x0021, 0);
	for(	j=0; j<ENDROW; j++){		// Y軸全部
		for(i=0; i<ENDCOL; i++){		// X軸全部
			lcd_out(0x0022, Color);		// 同色で埋める
		}
	}
}
/***********************************
*  １ピクセル表示関数
*  座標は(0,0)-(319,239)  
***********************************/
void lcd_Pixel(short Xpos, short Ypos, unsigned short Color){

	if((Xpos<ENDCOL) && (Ypos<ENDROW)){
		lcd_out(0x0020, Ypos);			// 座標指定
		lcd_out(0x0021, Xpos);
		lcd_out(0x0022, Color);			// ドット表示
	}
}
/***************************
*  直線描画関数
***************************/
#define	abs(a)	(((a)>0) ? (a) : -(a))
void lcd_Line(short x0, short y0, short x1, short y1, unsigned short Color)
{
	short steep, t;
	short deltax, deltay, error;
	short x, y;
	short ystep;
	
	y0=ENDROW-y0 -1;						// Y座標反転
	y1=ENDROW-y1 -1;
	/// 差分の大きいほうを求める
	steep = (abs(y1 - y0) > abs(x1 - x0));
	/// ｘ、ｙの入れ替え
	if(steep){
		t = x0; x0 = y0; y0 = t;
		t = x1; x1 = y1; y1 = t;
	}
	if(x0 > x1) {
		t = x0; x0 = x1; x1 = t;
		t = y0; y0 = y1; y1 = t;
	}
	deltax = x1 - x0;						// 傾き計算	
	deltay = abs(y1 - y0);
	error = 0;
	y = y0;
	/// 傾きでステップの正負を切り替え
	if(y0 < y1) ystep = 1; else ystep = -1;
	/// 直線を点で描画
	for(x=x0; x<=x1; x++) {
		if(steep) lcd_Pixel(y,x,Color); else lcd_Pixel(x,y,Color);
		error += deltay;
		if((error << 1) >= deltax) {
			y += ystep;
			error -= deltax;
		}
	}
}
/*************************************
*  円を描く関数
*  中心点と半径を指定
*  (Fussyさんのアルゴリズムを使用)
**************************************/
void lcd_Circle(int x0, int y0, int r, unsigned short color)
{
	int x = r;
	int y = 0;
	int F = -2 * r + 3;
	
	while(x >= y){
		lcd_Pixel(x0+x, y0+y, color);
		lcd_Pixel(x0-x, y0+y, color);		
		lcd_Pixel(x0+x, y0-y, color);
		lcd_Pixel(x0-x, y0-y, color);		
		lcd_Pixel(x0+y, y0+x, color);
		lcd_Pixel(x0-y, y0+x, color);		
		lcd_Pixel(x0+y, y0-x, color);
		lcd_Pixel(x0-y, y0-x, color);
		if(F >= 0){
			x--;
			F -= 4 * x;
		}
		y++;
		F += 4 * y + 2;
	}
}
/*****************************************
*  ANK文字表示関数 16x16ドット
*  320/16=20文字/行　240/17=14行
*  (0, 0) - (20, 14)の範囲
******************************************/
void lcd_Char(char colum, char line, unsigned char letter, unsigned short Color1, unsigned short Color2){
	unsigned char Mask;
	int i, j;

	if((colum < XChar) && (line < YLine)){		// 範囲チェック
		// 16dot 1line表示出力
		for(j=0; j<16; j++){
			Mask = 0x80; 								// 16ライン
			for(i=0; i<8; i++){				// 8ドットｘ２
				// 1バイト目
				if((ASCII16dot[letter][j*2] & Mask) != 0)
					lcd_Pixel(colum*16+i, line*17+j, Color1);
				else
					lcd_Pixel(colum*16+i, line*17+j, Color2);
				// 2バイト目
				if((ASCII16dot[letter][j*2+1] & Mask) != 0)
					lcd_Pixel(colum*16+i+8, line*17+j, Color1);
				else
					lcd_Pixel(colum*16+i+8, line*17+j, Color2);
				// ビットシフト
				Mask = Mask >> 1;
			}
		}
	}
}				

/******************************
*   文字列描画関数
*   20文字ｘ14行で指定
******************************/
void lcd_Str(char colum, char line, char *s, unsigned short Color1, unsigned short Color2)
{
    	while (*s){
		lcd_Char(colum++, line, *s++, Color1, Color2);
		if(colum >= XChar){
			line++;
			colum = 0;
			if(line >= YLine)
				line = 0;
		}
	}
}
