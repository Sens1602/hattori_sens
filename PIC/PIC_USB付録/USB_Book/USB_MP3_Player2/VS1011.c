/*****************************************************
*　　VS1011E　制御ライブラリ 
*  
******************************************************/
#include "VS1011.h"
#include <p24FJ64gb004.h>
/************************************
* SPI Read after Write　基本関数
************************************/
BYTE WriteSPI(BYTE output){
	MP3_SPI_IF = 0;				// 割り込みフラグクリア
	MP3_SSPBUF = output;		// SPI出力
	while(!MP3_SPI_IF);			// 入力待ち
	return MP3_SSPBUF;			// 入力データ戻り値
}
/************************************
*  VS1011用コマンド出力関数
************************************/
void Command(BYTE RegAdrs, BYTE UpData, BYTE LowData){
	MP3_XDCS_IO = 1;			// データモード解除
	while(!MP3_DREQ_IO);		// レディー待ち
	MP3_XCS_IO = 0;				// コマンドモード設定 
	WriteSPI(0x02);				// 書き込み動作指定
	WriteSPI(RegAdrs);			// レジスタアドレス出力
	WriteSPI(UpData);			// 上位バイト出力
	WriteSPI(LowData);			// 下位バイト出力
	MP3_XCS_IO = 1;				// コマンドモード解除
}
/************************************
*  VS1011用コマンド出力関数(確認付き)
************************************/
void CmdCheck(BYTE RegAdrs, BYTE UpData, BYTE LowData){
	BYTE b1,b2;

	do{
		MP3_XDCS_IO = 1;		// データモード解除
		while(!MP3_DREQ_IO);	// レディー待ち
		MP3_XCS_IO = 0;			// コマンドモード設定 
		WriteSPI(0x02);			// 書き込み動作指定
		WriteSPI(RegAdrs);		// レジスタアドレス出力
		WriteSPI(UpData);		// 上位バイト出力
		WriteSPI(LowData);		// 下位バイト出力
		MP3_XCS_IO = 1;			// コマンドモード解除
		while(!MP3_DREQ_IO);	// レディー待ち
		MP3_XCS_IO = 0;			// 読み込み確認
		WriteSPI(0x03);			// 読み込み動作
		WriteSPI(RegAdrs);		// レジスタアドレス指定
		b1 = WriteSPI(0xFF);	// return UpData
		b2 = WriteSPI(0xFF);	// return LowData
		MP3_XCS_IO = 1;	
	}while((b1 != UpData) || (b2 != LowData));
}
/************************************
*  VS1011用データ出力関数
************************************/
void SendData(BYTE Data){
	while(!MP3_DREQ_IO);		// レディー待ち
	WriteSPI(Data);
}

/***********************************************
*  音量レベル設定関数
*   vRight = 右チャネル用音量
*   vLeft  = 左チャネル用音量
*　　   いすれも　0x00=Max 0dB 0.5dBステップで下がる
************************************************/
void SetVolume(BYTE vRight, BYTE vLeft){
	Command(0x0B, vRight, vLeft);
}

/**********************************************
*  低音ブースト設定制御関数
*    bass： 低音ゲイン　レンジは0dBから15dBの範囲
*    gfreq: 低音ブースト周波数設定　10Hzステップ　0～15の範囲
***********************************************/
void SetBassBoost(BYTE bass, BYTE gfreq)
{
	BYTE temp1 = 0;
	/* 設定範囲の制限 */
	if(bass > 15)
		bass = 15;
	if(gfreq > 15)
		gfreq = 15;
	/* 8ビットに合成 */
	temp1 = gfreq;
	temp1 |= (bass << 4);
	Command(0x02, 0x00, temp1);		// BASS	
	return;
}
/*********************************************
*	再生終了処理関数
*
*********************************************/
void PlayEnd(void){
	int i;

	/* 再生バッファクリアのため2048バイト送信　*/
	MP3_XDCS_IO = 0;						// XDCSオン
	for(i=0; i<2048; i++)
		SendData(0);						// 0のデータ連続送信
	MP3_XDCS_IO = 1;						// XDCSオフ
	/*** ソフトウェアリセットで完了 **/
	Command(0x00, 0x08, 0x24);				// SM_RESET送信
	while(!MP3_DREQ_IO);					// コマンド完了待ち
}
/********************************************
*  VS1011 初期化関数
*    VS1011転送モード、SDIテストモード　に設定
*    VS1011と正常に通信できないと永久待ちとなる
*********************************************/
void VS1011_Init(void){
	unsigned int val;

	/***** VS1011用ポートの初期設定   ***/
	MP3_XDCS_IO = 1;				// DCSをHigh
	MP3_XCS_IO = 1;					// XCSをHigh
	MP3_XRESET_IO = 0;				// XRESETをLow
	MP3_XRESET_TRIS = 0;			// 出力TRIS有効化
	MP3_DREQ_TRIS = 1;				// DREQ入力モードに
	MP3_XDCS_TRIS = 0;				// XDCS出力
	MP3_XCS_TRIS = 0;				// XCS出力
	MP3_SDI_TRIS = 1;				// SDI2入力モード
	MP3_SDO_TRIS = 0;				// SDO2出力モード
	MP3_SCK_TRIS = 0;				// SCK2出力モード
 	/***** SPI1の初期設定   ***/
	MP3_SPICON1 = 0x012B;			// 8ビットモード,CKP = 0,CLK=Fosc/4 (4MHz)
									// 中央でサンプル(SMP=0) 立上りエッジで送信(CKE=1)
	MP3_SPICON2 = 0;				// フレームモードなし
	MP3_SPI_IF = 0;					// 割り込みフラグクリア
	MP3_SPISTATbits.SPIEN = 1;		// SPI1イネーブル
	/* RESET解除、VS1011スタート  */
	MP3_XRESET_IO = 1;				// RESET解除	
	delay_ms(50);					// 50msec delay
	/** モード設定　*/
	CmdCheck(0x00, 0x08, 0x20);		// モード初期設定　新モード、SDIテストモード
	/* クロックダブラ設定　*/
	val = 12288 / 2 + 0x8000;		// 設定値を求める（データシートより）
	CmdCheck(0x03, (BYTE)(val /256), (BYTE)val);
	delay_ms(10);
}

/********************************************
*  VS1011 正弦波テストモード設定関数
*    MODEをSPIテストモードに設定しておく必要がある
*********************************************/
void VS1011_SineTest(void)
{
	/* テストモードシーケンス出力 */
	while(!MP3_DREQ_IO);
	MP3_XDCS_IO = 0;
 	// Start Sine Test
	WriteSPI(0x53);
	WriteSPI(0xEF);
	WriteSPI(0x6E);
	WriteSPI(0x7D);				// 22.050kHz Out is 5kHz
	WriteSPI(0x00);
	WriteSPI(0x00);
	WriteSPI(0x00);
	WriteSPI(0x00);
	MP3_XDCS_IO = 1;
}
/****************************
* usec単位ディレイ関数
****************************/
void delay_us(int usec){
	usec = (int)(CLOCK*usec)/4;
	while(usec)	{
		asm("NOP");
		asm("NOP");
		usec--;
	}
}
/***************************
* msec単位ディレイ関数
***************************/
void delay_ms(int msec){
	int i;
	for(i=0; i< msec; i++)
		delay_us(1000);
}
