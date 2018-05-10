/*****************************************************
*  USB MP3プレーヤプログラム
*  　USBホストMassクラスを使用 PIC24FJ64GB004
*  　マイクロチップのFATファイルシステムを使用
*  　MP3デコーダはSPI1モジュールで接続
*    グラフィックQVGA液晶表示器とタッチパネルを使用
******************************************************/
#include <p24fj64gb004.h>
#include "USB/usb.h"
#include "USB/usb_host_msd.h"
#include "USB/usb_host_msd_scsi.h"
#include "MDD File System/FSIO.h"
#include "VS1011.h"
#include "colorlcd_libYHY16.h"
/*** コンフィギュレーション設定  32MHz USB用PLL96MHz使用  ***/
_CONFIG1(WINDIS_OFF & FWDTEN_OFF & ICS_PGx1 & GCP_OFF & JTAGEN_OFF) 
_CONFIG2(POSCMOD_XT & I2C1SEL_PRI & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3(SOSCSEL_IO)
/* FATシステム用グローバル変数定義  */
FSFILE *fptr;
size_t result;
BYTE Buffer[512];
BYTE DataBuf[1024];
SearchRec Record;
SearchRec *rptr = &Record;
volatile BOOL deviceAttached;
/* ステート変数 */
enum  {
	DEVICE_NOT_CONNECTED = 0,	// 初期状態
	DEVICE_CONNECTED,			// メディア検出
	FILE_FOUND,					// MP3ファイル検出
	PLAY,						// 音楽再生中
	FINISH						// 再生完了
}State;
/* MP3用変数  */
int i, Count, Chatta, Swit, FileCount;
BYTE Volume, BASS, TREB, Item, ChgFlag;
/* タッチボタン座標データ */
int Button[7][2] = {{150,720},{300,720},{450,720},{610,720},{770,720}};  
char MsgScrn[] = "X=xxx Y=xxx";		// デバッグ用座標表示
/* 関数プロトタイピング  */
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size );
void DispMenu(void);
void Display(void);
int Getscreen(unsigned int chn);
int CheckBtn(int x, int y);
void itostring(char digit, unsigned int data, char *buffer);
void Process(int sw);
void SW_DOWN(void);
void SW_UP(void);


/**************************
* メイン関数
***************************/
int main(void){

	CLKDIV = 0x0020;					// 96MHz PLL On, CPU:32MHz
	/* 入出力ポート設定  */
	TRISA = 0x000E;						// OSC SIのみ入力 
	TRISB = 0x1C4F;						// LCD MP3に合わせる
	TRISC = 0;							// LCD用
	AD1PCFG = 0xFF0F;					// AN4,5,6,7のみアナログ	
	/* SPIのピン割り付け  */
	RPINR20bits.SDI1R = 6;				// SDI1をRP6に
	RPOR7bits.RP15R = 8;				// SCK1をRP15に
	RPOR2bits.RP5R = 7;					// SDO1をRP5に
	State = DEVICE_NOT_CONNECTED;		// ステート初期化
	/* タッチスクリーン用ADCの設定 */
	AD1PCFG = 0xFF0F;					// AN4,5,6,7のみアナログ
	AD1CON1 = 0x0000;					// ADオフ,手動制御,整数,
	AD1CON2 = 0;						// AVdd, AVss, SCANなし,MUXAのみ,割り込みなし
	AD1CON3 = 0x1F3F;					// 31Tad , Tad = 64*Tcy
 	AD1CHS  = 0x0000;					// チャネル選択
	AD1CSSL = 0;						// 自動スキャンなし
	AD1CON1bits.ADON = 1;				// AD有効化
	/* タイマ1設定 50msec周期 タッチスクリーン用 */
	T1CON = 0x0030;
	PR1 = 7800;							// 50msec
	IFS0bits.T1IF = 0;					// 割り込みフラグクリア
	IEC0bits.T1IE = 1;					// 割り込み許可	
	// 液晶表示器の初期化と開始メッセージ表示	
	lcd_Init();
	lcd_Clear(WHITE);
	DispMenu();	
	/*　VS1011eの初期化　*/
	VS1011_Init();						// MP3デコーダ初期化
	Volume = 0x20;						// 音量の初期設定
	SetVolume(Volume, Volume);			// コマンド出力
	BASS = 5;							// バスブーストの初期設定
	SetBassBoost(BASS,15);				// コマンド出力
	/* VS1011のデバッグ時テスト用のコマンド　　*/
//	VS1011_SineTest();					// 正弦波出力テスト
//	while(1);							// ここで永久ループ
	deviceAttached = FALSE;				// デバイス未検出とする
	USBInitialize(0);					// USBスタック初期化
	/* タイマ１動作開始 */
	T1CONbits.TON = 1;
		
	/**************** メインループ　**********/
	while(1){
	
		USBTasks();										// USB送受信実行
 		/**** ステートに従って再生処理実行  ****/	
		switch(State){
			case DEVICE_NOT_CONNECTED:
				/* メディアの挿入チェック */
				if(USBHostMSDSCSIMediaDetect()) {		// メディア検出したか？
		    		deviceAttached = TRUE;				// メディアあり
       				result = FSInit();					// FATの初期化
       				if(result)							// 初期化できたか？
	       				State = DEVICE_CONNECTED;		// OKなら次のステートへ
		  		}
   				break;
   			case DEVICE_CONNECTED: 	
				/* 最初のファイルのサーチ（ルートだけにMP3ファイルがあることが前提）  */
				result = FindFirst("*.*", ATTR_ARCHIVE, rptr);
				if(result == 0){
					State = FILE_FOUND;					// ファイル存在なら次のステートへ
					FileCount = 0;						// ファイルカウンタクリア
				}
				break;
			case FILE_FOUND:	
				/* 発見したファイルのオープン　*/		
				fptr = FSfopen(Record.filename, READ);	// ファイルのオープン
				if(fptr == 0)							// 正常にオープンできたか
					State = DEVICE_NOT_CONNECTED;		//　できなかったら最初に戻る
				else{
					FileCount++;
					DispMenu();							// メニュー表示
					Display();
					State = PLAY;						// オープンできたら次のステートへ	
				}
				break;
			case PLAY:
				/* 音量変更ボタンチェックと制御  */
				if(ChgFlag){							// 音量変更ありか？
					ChgFlag = 0;
					SetVolume(Volume, Volume);			// 音量設定
					SetBassBoost(BASS, 15);				// バスブースト設定
				}			
				/***** １ファイル分の音楽データの再生 *******/
				MP3_XDCS_IO = 0;						// チップ選択
				/* 512バイト単位でファイルリード　*/
				IEC0bits.T1IE = 0;						// 割り込み禁止
				result = FSfread(Buffer, 1, 512, fptr);	// ファイルのEOFまで継続
				if(result != 0){						// EOFでないか？
					/* MP3デコーダへ出力 */
					for(i= 0; i<result; i++)			// 読み出したバイト数だけ繰り返し
						SendData(Buffer[i]);			// 音楽データ送信
				}
				else{									// EOFの場合再生完了処理
					MP3_XDCS_IO = 1;					// チップ選択解除
					FSfclose(fptr);						// ファイルのクローズ
					PlayEnd();							// 再生終了処理
					State = FINISH;
				}
				IEC0bits.T1IE = 1;						// 割り込み許可
				break;
			case FINISH:					
				/* 連続再生のため次のファイルサーチ */
				result = FindNext(rptr);				// 次のファイルへ
				/* 次のファイルがあればオープンする */
				if((result==0)&&(Record.attributes==ATTR_ARCHIVE)){
					fptr = FSfopen(Record.filename, READ);
					FileCount++;
					if(FileCount > 100)					// 100曲目超えたら1に戻す
						FileCount = 1;
					DispMenu();
					Display();
					State = PLAY;						// 再生ステートへ戻る
				}									
				else   /* ファイルの終わりなら再度最初から繰り返し  */
				{
					State = DEVICE_NOT_CONNECTED;		// 最初のステートへ
				}		
				break;
			default: break;
		}
	}
}
/******************************************
*  タイマ1割り込み処理(50msec周期)
*  タッチスクリーン　アナログ入力 
*******************************************/
void __attribute__((interrupt, auto_psv)) _T1Interrupt(void)
{
	static int i, Xset, Yset, Xold, Yold;

	IFS0bits.T1IF = 0;				// 割り込みフラグクリア
	// X+=B2(AN4) X-=B0 Y+=B3(AN5) Y-=B1
	/*** X座標入力 ****/
	TRISBbits.TRISB3 = 0;			// RB3 RB1 is output
	TRISBbits.TRISB1 = 0;
	LATBbits.LATB3 = 1;				// Set Voltage
	LATBbits.LATB1 = 0;
	TRISBbits.TRISB2 = 1;			// RB0,RB2 input
	TRISBbits.TRISB0 = 1;
	for(i=0; i<50; i++)				// 充電待ち 11usec
		Nop();
	Xset = Getscreen(4);			// 座標値取得
	/**** Y座標入力　****/
	TRISBbits.TRISB0 = 0;			// RB2,RB0 output
	TRISBbits.TRISB2 = 0;
	LATBbits.LATB0 = 1;				// Set Voltage
	LATBbits.LATB2 = 0;
	TRISBbits.TRISB1 = 1;			// RB3, RB1 is input
	TRISBbits.TRISB3 = 1;
	for(i=0; i<50; i++)				// 充電待ち 11usec
		Nop();
	Yset = Getscreen(5);			// 座標値取得
	/*** 確実なタッチ処理 ***/
	if((Xset > 50)&&(Yset > 100)){	// タッチしていないときスルー
		/*** 座標範囲チェック　**/
		if((abs(Xset - Xold) < 30) && abs(Yset - Yold) < 20){
			Count++;
			if(Count >= 3){			// 3回以上同じ範囲ならタッチと判定
				Count = 0;
				Swit = CheckBtn(Xset, Yset);
				Process(Swit);		// 各ボタンの処理
			}
		}
		else
			Count = 0;				// カウントクリア
		Xold = Xset;				// 前回値更新
		Yold = Yset;
	}
}
/********************************
*   座標取得実行関数
********************************/
int Getscreen(unsigned int chn)
{
	int i;

	AD1CON1bits.ADON = 0;
	AD1CHS0 = chn;						// Select Channel
	AD1CON1bits.ADON = 1;
	AD1CON1bits.SAMP = 1;
	for(i=0; i<50; i++)					// Wait Aquisition 11usec
		Nop();
	AD1CON1bits.SAMP = 0;				// A/D convert start
	while(!AD1CON1bits.DONE);			// wait conversion
	return(ADC1BUF0);					// return result
}
/****************************************
* タッチボタン判定処理
****************************************/
int CheckBtn(int x, int y)
{
	int i, btn;
	/*** タッチ座標位置表示（デバッグ用)　****/
	itostring(3, x, MsgScrn+2);
	itostring(3, y, MsgScrn+8);
	lcd_Str(5, 11, MsgScrn, RED, WHITE);
	/** ボタンチェック **/
	btn = -1;
	for(	i=0; i<7; i++){
		if((x > Button[i][0]-50)&&(x <	Button[i][0]+50)){
			if((y > Button[i][1]-30)&&(y < Button[i][1]+30))
				btn = i;
		}
	}
	return(btn);
}
/********************************************
*  スイッチごとの処理
*   SW1:音量
*   SW2:低音
*   SW3:高音
*   SW4:アップ
*   SW5:ダウン
*********************************************/
void Process(int sw)
{
	for(i=0; i<8; i++)
		lcd_Line(0, 5+i, 319, 5+i, WHITE);	
	switch(sw){
		case 0:
			Item = 1;					// 音量
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 320-5*Volume, 5+i, GREEN);		
			break;
		case 1:
			Item = 2;					// 低音レベル
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 20*BASS, 5+i, PERPLE);			
			break;
		case 2:	
			break;
		case 3:	SW_UP();
				break;
		case 4: SW_DOWN();
				break;
		default: Item =0;
			/* 曲数バーグラフ表示 */
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 3*FileCount, 5+i, RED);		
			break;
	}	
}
/******************************************
* 項目アップスイッチ操作
*******************************************/
void SW_UP(void)	
{
	switch(Item)
	{
		case 0:	
			FSfclose(fptr);				// 現在のファイルを強制クローズ
			PlayEnd();					// 再生終了処理
			delay_ms(50);
			/* 次の曲へ */
			State = FINISH;
			break;		
		case 1:
			if(Volume > 0)				// 音量アップ
				Volume--;
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 320-5*Volume, 5+i, GREEN);				
			ChgFlag = 1;				// 変化フラグオン
			break;
		case 2:
			if(BASS < 0x0F)				// 低音レベルアップ
				BASS++;
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 20*BASS, 5+i, PERPLE);
			ChgFlag = 1;				// 変化フラグオン
			break;
		default: break;
	}
}

/******************************************
* 項目ダウンスイッチ操作
*******************************************/
void SW_DOWN(void)
{
	switch(Item)
	{
		case 0: break;					// 曲選択では何もしない
		case 1:
			if(Volume < 64)				// 音量ダウン
				Volume++;
			for(i=0; i<8; i++)	
				lcd_Line(0, 5+i, 320-5*Volume, 5+i, GREEN);
			break;
		case 2:
			if(BASS > 0)				// 低音レベルダウン
				BASS--;
			for(i=0; i<8; i++)
				lcd_Line(0, 5+i, 20*BASS, 5+i, PERPLE);				
			break;
		default: break;
	}
	ChgFlag = 1;						// 変化フラグオン
}

/***************************************
* 整数からASCII文字に変換
****************************************/
void itostring(char digit, unsigned int data, char *buffer)
{
	char i;

	buffer += digit;					// 最後の数字位置
	for(i=digit; i>0; i--) {			// 変換は下位から上位へ
		buffer--;						// ポインター１
		*buffer = (data % 10) + '0';	// ASCIIへ
		data = data / 10;				// 次の桁へ
	}
}

/********************************************
* メニュー画面表示 
*********************************************/
void DispMenu(void){
	int i;
	
	lcd_Clear(WHITE);
	lcd_Str(2, 0, " USB MP3 Player ", WHITE, RED);	// 見出し
	lcd_Char(0, 1, 0xF0, MAGENTA, WHITE);			// 曲
	lcd_Char(1, 1, 0xEF, MAGENTA, WHITE);			// 名
	lcd_Char(0, 6, 0xF8, MAGENTA, WHITE);			// 演奏
	lcd_Char(1, 6, 0xF9, MAGENTA, WHITE);
	lcd_Char(1, 12, 0xF1, WHITE, BLUE);				// 音量
	lcd_Char(2, 12, 0xF3, WHITE, BLUE);				// 音量
	lcd_Char(5, 12, 0xF2, WHITE, BLUE);				// 低音
	lcd_Char(6, 12, 0xF1, WHITE, BLUE);				// 低音
//	lcd_Char(9, 12, 0x84, WHITE, BLUE);				// 高音
//	lcd_Char(10, 12, 0xF1, WHITE, BLUE);			// 高音		
	lcd_Char(13, 12, 0xF4, WHITE, BLUE);			// 上昇
	lcd_Char(14, 12, 0xF5, WHITE, BLUE);			// 上昇
	lcd_Char(17, 12, 0xF6, WHITE, BLUE);			// 下降
	lcd_Char(18, 12, 0xF7, WHITE, BLUE);			// 下降
	/* 曲数バーグラフ表示 */
	for(i=0; i<8; i++)
		lcd_Line(0, 5+i, 3*FileCount, 5+i, RED);	
				
}
/*******************************************
*  曲データ/バンド名表示
*  半角のみの場合は18文字ｘ4行ずつで表示
*　漢字の場合には10文字×2行ずつで表示
*******************************************/
void Display(void)
{
	#define MaxTag 512
	unsigned int locate, i, NameSize;
	
	result = FSfread(DataBuf, 1, 1024, fptr);		// ファイルのヘッダ部1KB読み込み
	/******* 曲名サーチ (TIT2) ***********/
	locate = 0;	
	for(i=0; i<MaxTag; i++){
		if((DataBuf[i] == 'T') && (DataBuf[i+1]== 'I') 
			&& (DataBuf[i+2] == 'T') && (DataBuf[i+3] == '2')){
			locate = i;
			break;
		}
	}
	/** 曲名ヘッダありの場合曲名表示 **/
	if(locate != 0){
		NameSize = DataBuf[locate+7]-1;				// 曲名データの長さ(Max256Bの前提)
		if(NameSize > 80)							// 曲名80で制限(20x4行)
			NameSize = 80;
		/** 表示制御 **/
		for(i=0; i<NameSize; i++)					// 曲名データ長繰り返し		
		{
			if(DataBuf[locate+11] < 0x80)
				lcd_Char(i%20, i/20+2, DataBuf[locate+11+i], BLACK, WHITE);
			else
				lcd_Str(2, 3, "Japanese Title!", COBALT, WHITE);// 日本語名の場合の表示				
		}
	}
	else
		lcd_Str(3, 3, "No Music Title!", RED, WHITE);// 曲名データがない場合の表示

	/******* バンド名サーチ (TPE1)or(TPE3) ********/
	locate = 0;	
	for(i=0; i<result; i++){
		if((DataBuf[i] == 'T') && (DataBuf[i+1]== 'P') 
			&& (DataBuf[i+2] == 'E') && ((DataBuf[i+3] == '1')||(DataBuf[i+3] == '3'))){
			locate = i;
			break;
		}
	}
	/*** バンド名ありの場合バンド名4行目から表示 ***/
	if(locate != 0){
		NameSize = DataBuf[locate+7]-1;				// バンド名データ長
		if(NameSize > 80)							// 最大文字数制限
			NameSize = 80;
		/** 表示制御 **/
		for(i=0; i<NameSize; i++)
		{
			if(DataBuf[locate+11] < 0x80)		
				lcd_Char(i%20, i/20+7, DataBuf[locate+11+i], BLACK, WHITE);
			else
				lcd_Str(2, 3, "Japanese Title!", COBALT, WHITE);// 日本語名の場合の表示				
		}
	}
	else
		lcd_Str(3, 8, "No Band Name!", RED, WHITE);	// バンド名が無いときの表示
	FSrewind(fptr);									// ファイルの最初に戻す
}	


						
//******************************************************************************
// USB Support Functions
//******************************************************************************
/****************************************************************************
  Function:
    BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event,
                void *data, DWORD size )
 ***************************************************************************/
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
    switch( event )
    {
        case EVENT_VBUS_REQUEST_POWER:
            return TRUE;

        case EVENT_VBUS_RELEASE_POWER:
            deviceAttached = FALSE;
            return TRUE;
            break;

        case EVENT_HUB_ATTACH:
            return TRUE;
            break;

        case EVENT_UNSUPPORTED_DEVICE:
            return TRUE;
            break;

        case EVENT_CANNOT_ENUMERATE:
            return TRUE;
            break;

        case EVENT_CLIENT_INIT_ERROR:
            return TRUE;
            break;

        case EVENT_OUT_OF_MEMORY:
             return TRUE;
            break;

        case EVENT_UNSPECIFIED_ERROR:   // This should never be generated.
             return TRUE;
            break;

        default:
            break;
    }

    return FALSE;
}

