/*************************************************
*  グラフィックLCD制御ライブラリ
*   DAファミリ内蔵GFXを使用
*　 使用液晶表示器：GPG3224012QS4　
**************************************************/
#include	<p24fxxxx.h>
#include 	"DALCD_Lib1.h"
#include	"ASCII16dot2.h"				// 内部メモリに配置
#include 	<stdlib.h>

/*** ビデオバッファ定義 8ビットカラー用 内部メモリのみ使用　****/
__eds__ unsigned char Buffer __attribute__((address(0x5C00)));
__eds__ unsigned char *ptr;
int _count;			// タッチスクリーン用回数カウンタ
unsigned int Xset, Yset, Xold, Yold;

/************************************************
* グラフィックコントローラモジュール初期化関数
*************************************************/
void GInit(void){
	/** LCDリセット **/							
	delay_ms(20);
	LATFbits.LATF3 		= 0;			// LCD Reset
	delay_ms(20);
	LATFbits.LATF3 		= 1;			// LCD On
	delay_ms(20);
	/** グラフィックモジュール初期設定 **/
	G1CON2bits.DPMODE 	= 1;			// TFT指定
	G1DBENbits.GDBEN 		= 0xFFFF;	// データ16ビット有効
	G1DPWbits.DPW   		= 320;		// Active Frame Width
	G1DPHbits.DPH   		= 240;		// Active Frame Height
	G1DPWTbits.DPWT 		= 408;		// Spec H Width
	G1DPHTbits.DPHT 		= 262;		// Spec V Height
	G1CON3bits.DPCLKPOL 	= 1;			// 立上がりでデータサンプル
	G1CON3bits.DPENOE		= 1;			// GEN有効化
	G1CON3bits.DPENPOL 	= 1;			// GEN正論理
	G1CON3bits.DPVSOE 	= 1;			// VSYNC有効化
	G1CON3bits.DPHSOE 	= 1;			// HSYNC有効化
	G1CON3bits.DPVSPOL 	= 0;			// VSYNC負論理
	G1CON3bits.DPHSPOL 	= 0;			// HSYNC負論理
	G1ACTDAbits.ACTLINE 	= 18;		// 有効ライン開始位置
	G1ACTDAbits.ACTPIX 	= 38;		// 有効ドット開始位置
	G1VSYNCbits.VSST 		= 0;			// 垂直フロントポーチ 2->0
	G1HSYNCbits.HSST 		= 2;			// 水平フロントポーチ 10->9
	G1VSYNCbits.VSLEN 	= 1;			// VSYNC幅
	G1HSYNCbits.HSLEN 	= 10;		// HSYNC幅
	G1DBLCONbits.VENST 	= 18;		// 垂直有効開始位置
	G1DBLCONbits.HENST 	= 38;		// 水平有効開始位置
	G1CON3bits.DPPINOE 	= 1;			// 出力ピン有効化
	G1CON3bits.DPPOWER 	= 1;			// パワーオン
	G1CON3bits.DPPWROE 	= 1;			// GPWRピンオン
	G1CON1bits.G1EN 		= 1;			// モジュールオン
	G1CON2bits.DPBPP 		= 3;			// 8bit/Pixel
	G1DPADRL = (unsigned int)&Buffer;	// バッファ開始アドレス
	G1DPADRH = 0;
	/** GPUアクセラレータ初期設定  **/
	G1W1ADRL = (unsigned int)&Buffer;	// Work Area 1設定
	G1W1ADRH = 0;
	G1CON1bits.PUBPP = 3;				// 8bit/Pixel
	G1PUW = 320;						// 画面サイズ設定
	G1PUH = 240;
	PutCmd((unsigned int)Font, 0x5200);// CHR_FONTBASE
	PutCmd(0x0000, 0x5800);			// CHR_TXTAREASTART
	PutCmd(0x00F0, 0x5914);			// CHR_TXTAREAEND
	PutCmd(0x0000, 0x5100);			// CHR_BGCOLOR
	G1W2ADRL = (unsigned int)&Buffer;	// ボックス用Work Area2
	G1W2ADRH = 0;
}
/**********************************
* グラフィックコマンド出力関数
* 2バイトの出力
**********************************/
void PutCmd(unsigned int low, unsigned int high){
	while(G1STATbits.CMDFUL);			// バッファレディーチェック
	G1CMDL = low;						// 下位
	G1CMDH = high;					// 上位
}
/**********************************
* 液晶表示器全消去関数1
*  メモリクリアで消去
**********************************/
void Clear(void){
	unsigned int line, dot;

	/** 全消去 **/
	ptr = &Buffer;					// ポインタ開始位置へ		
	for(line=0; line<240; line++){		// 全バッファ指定
		for(dot=0; dot<320; dot++)
			*ptr++ = 0xFF;			// 白色で全消去
	}
}
/**********************************
* 液晶表示器全消去関数2
*  矩形描画で高速クリア
**********************************/
void ClearBox(unsigned int color){
	/*** ボックスで全画面消去 **/
	PutCmd(0x0000, 0x6300);			// コピー先アドレス
	PutCmd(0x00F0, 0x6414);			// 矩形サイズ(320×240)
	PutCmd(color, 0x6600);				// カラー
	PutCmd(0x0060, 0x6700);			// コピー実行
}
/**********************************
* 1文字表示関数
* 列、行、文字、文字色、背景色
**********************************/
void PutCha(unsigned int colum, unsigned int line, unsigned char ascii, unsigned char fgcolor, unsigned char bkcolor){
	if((colum < MaxColum) && (line < MaxLine)){ 
		/* 表示色指定 */
		PutCmd(fgcolor, 0x5000);		// CHR_FGCOLOR
		PutCmd(bkcolor, 0x5100);		// CHR_BGCOLOR
		/* 表示位置指定　CHR_PRINTPOS */
		PutCmd(((colum*16)<<12)+line*16, (colum+0x5A00));
		/* 文字表示指定 */
		PutCmd((unsigned int)ascii, 0x5300);			// CHR_PRINTCHAR
	}
}
/*********************************
*  文字列表示関数
*  列、行、文字列、文字色、背景色
**********************************/
void PutStr(unsigned int colum, unsigned int line, const unsigned char *mesg, unsigned char fgcolor, unsigned char bkcolor){

	if((colum < MaxColum) && (line < MaxLine)){
		while(*mesg != 0){
			PutCha(colum, line, *mesg, fgcolor, bkcolor);
			mesg++;
			colum++;
			if(colum >= MaxColum){
				colum= 0;
				line++;
				if(line >= MaxLine)
					line = 0;
			}
		}
	}
} 
/**********************************
*  矩形表示関数 
*  X位置、Y位置、幅、高さ、表示色
**********************************/
void PutBox(unsigned int x, unsigned int y, unsigned int width, unsigned int height, unsigned int color){
	unsigned int temp;
	
	if((x + width) < 320){					// 右端超えないか？
		temp = y * 320 + x;				// メモリアドレスを求める　8bitカラー
		PutCmd(temp, 0x6300+temp/0x10000);	// 位置指定
		PutCmd((width<<12)+height, (width/16)+0x6400);// サイズ指定
		PutCmd(color, 0x6600);				// 色指定
		PutCmd(0x0060, 0x6700);			// 指定色ベタ塗り描画実行
	}
}		

/*********************************
*  SPIモジュール初期化関数
**********************************/
void SPIInit(void){
	RPINR20bits.SDI1R = 1;				// SDI1 -> RP1　SDO同一ピン
	RPOR0bits.RP1R = 7;				// SDO1 -> RP1
	RPOR1bits.RP2R = 8;				// SCK1OUT -> RP2
//	LATAbits.LATA0 = 1;				// CS High
	SPI1CON1 = 0x0060;				// Prescale 1/8, 1/64
	SPI1CON2 = 0x0; 
	SPI1STATbits.SPIEN = 1;			// SPI Enable
}
/*********************************
*  SPI送信関数 8bit
**********************************/
void WriteSPI(unsigned char data){
	unsigned char dumy;

	SPI1BUF = data;					// Send Reg No
	while(!SPI1STATbits.SPIRBF);		// 受信待ち
	dumy = SPI1BUF;					// Dumy Read
}
/*********************************
*  SPIコマンド送信関数
*  レジスタNo、設定データ
**********************************/
void SendSPI(unsigned char reg, unsigned int cmd){
//	LATAbits.LATA0 = 0;				// CS Low
//	LATBbits.LATB0 = 0;				// DC Low　Command
	WriteSPI(0);						// Reg Upper				
	WriteSPI(reg);					// Send Reg Lower
	LATBbits.LATB0 = 1;				// DC High Data
	WriteSPI(cmd>>8);					// Data Upper
	WriteSPI(cmd);					// Data Lower
//	LATAbits.LATA0 = 1;				// CS High
}
/*******************************************
* タッチスクリーン座標取得関数 
*  Xset, Ysetに座標が入る
* 物理的なX、Yとは逆
********************************************/
char GetScreen(void){
	// X+=RB12(AN12) X-=RB13(AN13) Y+=RB14(AN14) Y-=RB15(AN15)
	/*** Y座標入力 ****/
	ANSB = 0x3000;
	TRISBbits.TRISB14 = 0;			// Y+,Y- is output
	TRISBbits.TRISB15 = 0;
	LATBbits.LATB14 = 1;			// Set Voltage
	LATBbits.LATB15 = 0;
	TRISBbits.TRISB12 = 1;			// X+,X- input
	TRISBbits.TRISB13 = 1;
	Yset = GetAD(12);				// 座標値取得
	/**** X座標入力　****/
	ANSB = 0xC000;
	TRISBbits.TRISB12 = 0;			// X+,X- output
	TRISBbits.TRISB13 = 0;
	LATBbits.LATB12 = 1;			// Set Voltage
	LATBbits.LATB13 = 0;
	TRISBbits.TRISB14= 1;			// Y+,Y- is input
	TRISBbits.TRISB15 = 1;
	Xset = GetAD(14);				// 座標値取得
	
	/*** タッチの確認処理 ***/
	if((Xset > 80)&&(Yset > 80)){	// タッチしていないか？
		/*** 同一位置繰り返し確認　**/
		if((abs(Xset - Xold) < 40) && abs(Yset - Yold) < 40)
			_count++;			// 確認＋
		else
			_count = 0;			// やり直し
		Xold = Xset;				// 旧座標入れ替え
		Yold = Yset;
		/** 確認結果を返す **/
		if(_count > 5){			// 同じ位置タッチ確認
			_count = 0;
			return(TRUE);
		}
		else
			return(FALSE);		
	}
	else{
		_count = 0;
		return(FALSE);
	}
}
/********************************
*   座標取得実行関数
********************************/
int GetAD(unsigned int chn)
{
	AD1CON1bits.ADON = 0;
	AD1CHS0 = chn;				// Select Channel
	AD1CON1bits.ADON = 1;
	AD1CON1bits.SAMP = 1;
	delay_us(20);
	AD1CON1bits.SAMP = 0;			// A/D convert start
	while(!AD1CON1bits.DONE);		// wait conversion
	return(ADC1BUF0);				// return result
}
/****************************************
*  タッチスクリーン用初期設定
****************************************/
void SetupScreen(void)
{
	/* ADCの設定 */
	AD1CON1bits.ADON = 0;
	AD1CON1 = 0x0000;				// ADオフ、手動制御
	AD1CON2 = 0;					// AVdd, AVss, SCANなし,MUXAのみ
	AD1CON3 = 0x0304;				// 3Tad , Tad = 5*Tcy
 	AD1CHS0 = 0x0000;				// チャネル選択
	ANCFG   = 0x0000;				// バンドギャップなし
	AD1CSSL = 0;					// 自動スキャンなし
	AD1CON1bits.ADON = 1;			// AD有効化

}


/**********************************
*  ループ遅延関数　usec単位
**********************************/
void delay_us(int usec) {
	int i;
	
	for(i=0; i<(Fosc*usec)/54; i++)
	{	}
}
/**********************************
*  ループ遅延関数　msec単位
**********************************/		 
void delay_ms(int msec){
	unsigned int i;
	
	for(i=0; i<msec; i++)
		delay_us(1000);
}
