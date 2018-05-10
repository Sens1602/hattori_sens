/********************************************************************
*  GPSロガープログラム　　　　プロジェクト名：GPSLogger3
*   PIC24F64GB002　+ マイクロSDカード　を使用
*   GPSモジュールの設定はデフォルトのまま　WGS84
*   液晶表示器にはGPS座標と時刻高度表示をスイッチで切り替え
*   スイッチオンでSD CARDに記録   記録は有効なすべての受信データとする
*   GPSからのデータは4種/秒 + 1種/5秒
*   USBに接続したとき、SDカードのファイル読み書きと
*   CDCクラスのデバイスとして接続、通信ソフトでデータ送信可能
********************************************************************/
#include <p24fj64gb002.h>
#include "USB/USB.h"
#include "HardwareProfile.h"
#include "USB/usb_function_cdc.h"
#include "MDD File System/SD-SPI.h"
#include "MDD File System/FSIO.h"
#include "USB/usb_function_msd.h"
#include "lcd_i2c_lib2.h"

/******* コンフィギュレーション設定 *****/
_CONFIG1(WINDIS_OFF & FWDTEN_OFF & ICS_PGx1 & GCP_OFF & JTAGEN_OFF & GWRP_OFF) 
_CONFIG2(POSCMOD_HS & I2C1SEL_PRI & OSCIOFNC_OFF & FCKSM_CSDCMD 
			& FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3(SOSCSEL_IO)
/******* 変数宣言定義 ****/
#pragma udata
/* USB MSDクラス用関数呼び出しポインタ */
LUN_FUNCTIONS LUN[MAX_LUN + 1] = 
{
	{
	&MDD_SDSPI_MediaInitialize,		// メディア初期化
	&MDD_SDSPI_ReadCapacity,			// 容量読み出し
	&MDD_SDSPI_ReadSectorSize,			// セクタサイズ読み出し
	&MDD_SDSPI_MediaDetect,				// メディア検出
	&MDD_SDSPI_SectorRead,				// 1セクタ読み出し
	&MDD_SDSPI_WriteProtectState,		// 保護状態読み出し
	&MDD_SDSPI_SectorWrite				// セクタ書き込み
	}
};
FSFILE *logFile;
BOOL initResults;
/* USB MSDクラスのSCSI INQUIRYコマンド応答用データ */
const ROM InquiryResponse inq_resp = {
	0x00,		// peripheral device is connected, direct access block device
	0x80,		// RMB removable
	0x04,		// ISO version=0, ECMA version=0, ANSI version=4=SPC-2
	0x02,		// response is in format specified by SPC-2
	0x20,		// Additional Length(n-4) = 36-4=32= 0x20
	0x00,		// sccs etc.
	0x00,		// etc
	0x00,		//bque=1 and cmdque=0,indicates simple queueing 00 is obsolete,
				// but as in case of other device, we are just using 00
				// 00 obsolete, 0x80 for basic task queueing
	{'T','.','G','o','k','a','n',' '},	// T10 Vendor ID 8cha 
	{'G','P','S',' ','U','S','B',' ','L','o','g','g','e','r',' ',' '},//product ID 16cha
	{'0','0','0','1'}	// product revison 4cha
};
/* GPS用バッファ、変数定義 */
extern unsigned char SPIBuf[];
char SavBuf[256];			// 受信用バッファ
#define	Max	256			// バッファサイズ
char GGABuf[Max];			// 77byte
char GSABuf[Max];			// 47byte
char GSVBuf[Max];			// 60byte　5秒に1回
char RMCBuf[Max];			// 72byte
char VTGBuf[Max];			// 38byte
int GGASize, GLLSize, GSASize, GSVSize;
int GSVSize, RMCSize, VTGSize, ZDASize;
int Ptr, Size, Index, SendFlag, SendState;
char Flag, DFlag, temp, LogCnt;
unsigned int BatV;
unsigned long LogAdr;
char USBOutBuf[64];
/* LCDメッセージデータ定義 */
const unsigned char StrMsg[] = "Start GPS Logger";
const unsigned char USBMsg[] = "Connect to USB! ";
const unsigned char TXSMsg[] = "Start USB Send! ";
const unsigned char TXEMsg[] = "Stop USB Send!  ";

/********* 関数プロトタイピング *********/
static void InitializeSystem(void);
void USBDeviceTasks(void);
void USBCBSendResume(void);
void PosDisp(void);
void TimeDisp(void);
char Receive(void);
void Send(char Data);
void Battery(void);
void Logging(void);
void USBSend(void);

#pragma code
/************ メイン関数 ********************/
int main(void)
{   
	InitializeSystem();					// システム初期化
	/* パラメータ初期化 */
	Ptr = 0;
	DFlag = 0;							// 表示モードフラグ
	GGASize = 0;						// センテンス受信カウンタリセット
	GSASize = 0;
	GSVSize = 0;
	RMCSize = 0;
	VTGSize = 0;
	logFile = NULL;						// ログファイル未オープンにリセット
	/* フレームワーク初期化 */
	initResults = FSInit();				// ファイルシステム初期化
	USBDeviceInit();						// USBデバイス初期化
	USBDeviceAttach();					// USBデバイスアタッチ許可

	/***************** メインループ ********************/	
	while(1)
	{
		/********** USB接続中の場合 *************/
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			MSDTasks();									// ファイルシステムステート更新
			/*** USB　CDCコマンド受信  ***/
		 	if(getsUSBUSART(USBOutBuf,64) > 0){			// データ受信ポール
		  		switch(USBOutBuf[0]){					// 最初の１文字チェック
		   			case 's':	  						// 送信開始
		   				lcd_str(TXSMsg);				// 送信開始メッセージ表示
						SendFlag = 1;					// 送信中フラグオン
						SendState = 1;
		     			break;         			 		
		   			case 'e':							// 送信終了
		   				lcd_str(TXEMsg);				// 送信終了メッセージ表示
						SendFlag = 0;					// 送信中フラグオフ
		     		 	break;
		    	}
			}
			/**** USB CDCデータ送信実行ステート *******/
			if((SendFlag ==1) && (VTGSize != 0))		// 全センテンス受信完了待ち
				USBSend();								// 全センテンスをステートで送信
		}
		/********** USB接続なしの場合 ***********/
		else{
			/** 表示切替スイッチのチェック　**/
			if(sw2){									// Select on？
				DFlag ^= 1;								// 表示切替反転
				lcd_clear();
				while(sw2);								// チャッタリング回避
				delay_ms(50);
			}
			/** ログ開始終了スイッチチェック **/
			if(sw1){									// Log On?
				if(logFile != NULL){					// ログ中か？
					FSfclose(logFile);					// ファイルクローズ
					logFile = NULL;						// ログ中フラグリセット
					LUNSoftAttach(0);					// CPUから直ぐアタッチ確認
					lcd_icon(3, 0);						// オープンアイコンオフ
					lcd_icon(2, 0);						// ログ中アイコンオフ										
				}
				else{									// ログ開始
					LUNSoftDetach(0);					// CPUアクセス禁止
					logFile = FSfopen("GPSLog.csv",APPEND);// ファイル追加モードでオープン
					lcd_icon(3, 1);						// オープンアイコンオン					
				}
				while(sw1);								// チャッタリング回避
				delay_ms(50);				
			}			
			/****** データ受信完了で編集表示処理実行 *********/
			if(VTGSize != 0){							// 最後メッセージ受信したか？
				/** 受信目印アイコン表示 **/
				if(Flag){
					Flag = 0;							// フラグ反転
					lcd_icon(0, 1);						// アイコンオン
				}
				else{
					Flag = 1;							// フラグ反転
					lcd_icon(0, 0);						// アイコンオフ
				}
				/** 編集しLCDに表示 **/
				if(DFlag == 0)							// 表示モードチェック
					PosDisp();							// 緯度経度表示
				else	
					TimeDisp();							// 時刻高度表示
				/** バッテリ残量表示 **/
				Battery();
				/** ログ記録処理 **/
				if(logFile != NULL){
					if(GSABuf[9] > '1'){					// データ正常か？
						if(Flag)			
							lcd_icon(2,1);				// ログ中目印アイコン点滅
						else
							lcd_icon(2, 0);				// オフ
						Logging();						// 全センテンスログ実行
					}
				}
				/* センテンス受信カウンタリセット */
				GGASize = 0;
				GSASize = 0;
				GSVSize = 0;
				RMCSize = 0;
				VTGSize = 0;
			}
			else
				delay_ms(10);							// 受信無しのときの間隔遅延
		}
	}				
	return 0;
}
/*********************************************
 * 初期設定関数
 *********************************************/
static void InitializeSystem(void)
{
	CLKDIV = 0x0020;					// 96MHz PLL On, CPU32MHz
	AD1PCFG = 0xFFFD;					// AN1以外デジタルに設定
	/* I/Oモード設定 */
	TRISA = 0x000E; 
	TRISB = 0x8FE7;
	/* I2Cの初期設定 */
	I2C1BRG = 0x9D;						// 100kHz@16MHz
	I2C1CON = 0x8000;					// I2Cイネーブル	
	/* SPIピン割付 */
	RPINR20bits.SDI1R = 15;				// SDI1 -> RP15
	RPOR6bits.RP13R = 7;				// SDO1 -> RP13
	RPOR7bits.RP14R = 8;				// SCK1OUT -> RP14 	
	/// ADコンバータの初期設定
 	AD1CON1 = 0x00E0;					// ADオン、手動サンプル開始,自動変換開始
	AD1CON2 = 0x0000;					// AVdd, AVss, 変換ごとに割り込み, MUXAのみ
	AD1CON3 = 0x1F05;					// 31 Tad auto-sample, Tad = 5*Tcy
 	AD1CHS  = 0x0001;					// チャネル選択（AN1）
	AD1CSSL = 0;						// 自動スキャンなし//	
	/* 液晶表示器の初期化  */
	lcd_init();							// 初期化
	lcd_cmd(0x80);						// 1行目
	lcd_str(StrMsg);					// 開始メッセージ表示
	delay_ms(500);						// 表示確認待ち
	/// UART1ピン割付
	RPINR18bits.U1RXR = 2;				// UART1 RX to RP2
	RPOR1bits.RP3R = 3;					// UART1 TX to RP3
	/// UART1初期設定　4800bps 8ビット パリティなし、フロー制御なし
	U1BRG = 207;						// 4800bps@16MHz
	U1MODE = 0b1000100000000000;		// UART1初期設定
	U1STA =  0b0000010000000000;		// UART1初期設定	
	IFS0bits.U1RXIF = 0;				// 受信割り込みフラグクリア
	IEC0bits.U1RXIE =1;					// 受信割り込み許可
}
	
/***************************************
* UART 受信割り込み処理関数 
* 1センテンス受信完了でRFlagオン
***************************************/
void __attribute__((interrupt, no_auto_psv)) _U1RXInterrupt(void)
{
	char data;
	
	IFS0bits.U1RXIF = 0;							// 割り込みフラグクリア
	if(U1STAbits.OERR|| U1STAbits.FERR) {
		lcd_icon(4, 1);								// Error log on	
		Ptr = 0;									// バッファポインタリセット
		U1STA &= 0xFFF0;							// エラーフラグクリア
		U1MODE = 0;									// UART Disable
		U1MODE = 0b1000100000000000;				// UART1初期設定
		U1STA =  0b0000010000000000;				// UART1初期設定	
		IEC0bits.U1RXIE =1;							// 受信割り込み許可				
	}
	else {
		data = U1RXREG;								// 受信データ取得
		if(Ptr < 200)								// バッファオーバーか？
			SavBuf[Ptr++] = data;					// 格納
		else{
			lcd_icon(5, 1);							// Error log on
			Ptr = 0;
		}
		if(data == 0x0A){							// センテンス終了か
			Size = Ptr;								// 受信バイト数保存
			Ptr = 0;								// ポインタリセット
			/*** 受信メッセージごとにバッファに格納 ***/
			if(memcmp(SavBuf, "$GPGGA", 6)==0){
				memcpy(GGABuf, SavBuf, Size);		// バッファコピー
				GGASize = Size;						// 受信バイト数保存
			}
			else if(memcmp(SavBuf, "$GPGSA", 6)==0){
				memcpy(GSABuf, SavBuf, Size);		// バッファコピー
				GSASize = Size;						// 受信バイト数保存
			}
			else if(memcmp(SavBuf, "$GPGSV", 6)==0){
				memcpy(GSVBuf, SavBuf, Size);		// バッファコピー
				GSVSize = Size;						// 受信バイト数保存
			}
			else if(memcmp(SavBuf, "$GPRMC", 6)==0){
				memcpy(RMCBuf, SavBuf, Size);		// バッファコピー
				RMCSize = Size;						// 受信バイト数保存
			}								
			else if(memcmp(SavBuf, "$GPVTG", 6)==0){
				memcpy(VTGBuf, SavBuf, Size);		// バッファコピー
				VTGSize = Size;						// 受信バイト数保存
			}			
		}
	}
}
/********************************************
* USBを使ってデータ送信
* 受信したすべてのセンテンスをそのまま送信
********************************************/
void USBSend(void){
    	switch(SendState){							// ステートで進める
		case 1:
			if(USBUSARTIsTxTrfReady()){				// GGAセンテンス送信
				if(GGASize != 0)					// GGAありか？
					putUSBUSART(GGABuf, GGASize);	// 前半送信
				SendState++;
			}					
			break;
		case 2:
			if(USBUSARTIsTxTrfReady()){				// GSAセンテンス送信
				if(GSASize != 0)
					putUSBUSART(GSABuf, GSASize);	// 一括送信
				SendState++;
			}
			break;
		case 3:
			if(USBUSARTIsTxTrfReady()){				// GSVセンテンス送信
				if(GSVSize != 0)					
					putUSBUSART(GSVBuf, GSVSize);	// 一括送信
				SendState++;
			}
			break;
		case 4:
			if(USBUSARTIsTxTrfReady()){				// RMCセンテンス送信
				if(RMCSize != 0)					
					putUSBUSART(RMCBuf, RMCSize);	// 前半送信
				SendState++;
			}
			break;
		case 5:
			if(USBUSARTIsTxTrfReady()){				// VTGセンテンス送信
				if(VTGSize != 0)					
					putUSBUSART(VTGBuf, VTGSize);	// 一括送信
				SendState++;
			}
			break;
		case 6:
			if(USBUSARTIsTxTrfReady()){				// 全部送信完了確認
				/* センテンス受信カウンタリセット */
				GGASize = 0;
				GSASize = 0;
				GSVSize = 0;
				RMCSize = 0;
				VTGSize = 0;				
				SendState = 1;						// 最初のステートへ戻す
			}
			break;		
		default:
			break;
	}
	CDCTxService();									// 実際の送信実行
}	
/********************************************
* ログ書き込み実行関数
* 受信したすべてのセンテンスをそのまま保存
*********************************************/
void Logging(void){
	if(GGASize != 0)
		FSfwrite((const void*)&GGABuf[0], 1, GGASize, logFile);
	if(GSASize != 0)
		FSfwrite((const void*)&GSABuf[0], 1, GSASize, logFile);
	if(GSVSize != 0)
		FSfwrite((const void*)&GSVBuf[0], 1, GSVSize, logFile);	
	if(RMCSize != 0)
		FSfwrite((const void*)&RMCBuf[0], 1, RMCSize, logFile);	
	if(VTGSize != 0)
		FSfwrite((const void*)&VTGBuf[0], 1, VTGSize, logFile);
}
/***************************************
*  GPS内容表示サブ関数
*  緯度経度表示
****************************************/
void PosDisp(void)
{
	unsigned int i;
	/*** 緯度経度表示 ****/
	/** 1行目緯度表示 **/
	lcd_cmd(0x80);						// 1行目		
	lcd_data(GGABuf[28]);				// N/S
	lcd_data(' ');
	lcd_data(GGABuf[18]);				// 緯度表示
	lcd_data(GGABuf[19]);
	lcd_data(0xDF);						// °表示
	for(i=0; i<7; i++)
		lcd_data(GGABuf[20+i]);			// 緯度分表示
	lcd_data(' ');
	lcd_data('S');
	lcd_data(GGABuf[45]);				// 衛星数表示	
	lcd_data(GGABuf[46]);
	/** 2行目経度表示 **/	
	lcd_cmd(0xC0);						// 2行目に移動
	lcd_data(GGABuf[41]);				// E/W
	lcd_data(GGABuf[30]);
	lcd_data(GGABuf[31]);				// 経度表示
	lcd_data(GGABuf[32]);
	lcd_data(0xDF);						// °表示
	for(i=0; i<7; i++)
		lcd_data(GGABuf[33+i]);			// 経度分表示
	lcd_data(' ');
	lcd_data(GSABuf[9]);				// 次元表示		
	lcd_data('D');						// 
}
/***************************************
*  GPS内容表示サブ関数
*  時刻表示
****************************************/
void TimeDisp(void){
	unsigned char i;
	/** 時刻表示 **/
	lcd_cmd(0x80);						// 1行目
	lcd_data('T');
	lcd_data(' ');
	lcd_data(GGABuf[7]);				// 時間
	lcd_data(GGABuf[8]);
	lcd_data(':');
	lcd_data(GGABuf[9]);				// 分
	lcd_data(GGABuf[10]);
	lcd_data(':');
	for(i=0; i<2; i++){
		lcd_data(GGABuf[11+i]);			// 秒
	}
	/** 高度表示 **/
	lcd_cmd(0xC0);
	lcd_data('H');						// H表示
	lcd_data(' ');
	for(i=0; i<5; i++){					// 高度可変長対応
		if(GGABuf[52+i] == ',')
			break;
		else
			lcd_data(GGABuf[52+i]);		// 高度表示
	}
	lcd_data(GGABuf[52+i+1]);			// M
}
/*********************************************
* バッテリ残量表示サブ関数
*********************************************/
void Battery(void){
	/*** バッテリ電圧入力  ***/
	AD1CON1bits.ADON = 0;				// いったんADオフ	
	AD1CHS = 0x0001;					// チャネルAN1選択
	AD1CON1bits.ADON = 1;				// AD再度オン
	AD1CON1bits.SAMP = 1;				// サンプリング開始
	while(!AD1CON1bits.DONE);			// 変換終了待ち		
	BatV = ADC1BUF0;					// 変換結果取得
	/* アイコン表示 */
	if(BatV >= 620)						// 電圧チェック
		lcd_icon(12, 1);				// 4.0V以上　多い
	else{
		if(BatV >= 574)
			lcd_icon(11, 1);			// 3.7V以上　中容量
		else{
			if(BatV >= 527)
				lcd_icon(10, 1);		// 3.4V以上　少容量
			else
				lcd_icon(9, 1);			// 3.4以下　無し
		}
	}
}
/***********************************************************
* ボーレート変更関数
*
* 　条件:  USB_CDC_SET_LINE_CODING_HANDLER が定義されていること
************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps以上なら何もしない
	}
	else{
		// CDCドライバのボーレート変更
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
	}
}
#endif

// ***************************************************************************************
// ************** USB Callback Functions *************************************************
// ***************************************************************************************

/*******************************************************************
 * Function:        void USBCBSuspend(void)
 *******************************************************************/
void USBCBSuspend(void)
{
	#if 0
		U1EIR = 0xFFFF;
		U1IR = 0xFFFF;
		U1OTGIR = 0xFFFF;
		IFS5bits.USB1IF = 0;
		IEC5bits.USB1IE = 1;
		U1OTGIEbits.ACTVIE = 1;
		U1OTGIRbits.ACTVIF = 1;
		Sleep();
	#endif
}
/*******************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *******************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/********************************************************************
 Function:        void USBCB_SOF_Handler(void)
 *******************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*******************************************************************
 * Function:        void USBCBErrorHandler(void)
 *******************************************************************/
void USBCBErrorHandler(void)
{
}
/*******************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *******************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckMSDRequest();
}//end
/*******************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *******************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*******************************************************************
 * Function:        void USBCBInitEP(void)
 *******************************************************************/
void USBCBInitEP(void)
{
    #if (MSD_DATA_IN_EP == MSD_DATA_OUT_EP)
        USBEnableEndpoint(MSD_DATA_IN_EP,USB_IN_ENABLED|USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    #else
        USBEnableEndpoint(MSD_DATA_IN_EP,USB_IN_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
        USBEnableEndpoint(MSD_DATA_OUT_EP,USB_OUT_ENABLED|USB_HANDSHAKE_ENABLED|USB_DISALLOW_SETUP);
    #endif

    USBMSDInit();			// ファイルシステム初期化
    CDCInitEP();			// CDCクラス用エンドポイント初期化
}
/*******************************************************************
 * Function:        void USBCBSendResume(void)
 *******************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;

    if(USBGetRemoteWakeupStatus() == TRUE)  {
        //Verify that the USB bus is in fact suspended, before we send
        //remote wakeup signalling.
        if(USBIsBusSuspended() == TRUE) {
            USBMaskInterrupts();
            //Clock switch to settings consistent with normal USB operation.
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  //So we don't execute this code again, 
                                        //until a new suspend condition is detected.
            delay_count = 3600U;        
            do {
                delay_count--;
            }while(delay_count);
            //Now drive the resume K-state signalling onto the USB bus.
            USBResumeControl = 1;       // Start RESUME signaling
            delay_count = 1800U;        // Set RESUME line for 1-13 ms
            do {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       //Finished driving resume signalling
            USBUnmaskInterrupts();
        }
    }
}
/*******************************************************************
 * Function:       BOOL USER_USB_CALLBACK_EVENT_HANDLER
 *                 (USB_EVENT event, void *pdata, WORD size)
 *******************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
	switch(event)
	{
		case EVENT_TRANSFER:
				lcd_cmd(0xC0);
				break;
		case EVENT_SOF:
				USBCB_SOF_Handler();
				break;
		case EVENT_SUSPEND:
				USBCBSuspend();
				break;
		case EVENT_RESUME:
				USBCBWakeFromSuspend();
				break;
		case EVENT_CONFIGURED: 
				USBCBInitEP();
				break;
		case EVENT_SET_DESCRIPTOR:
				USBCBStdSetDscHandler();
				break;
		case EVENT_EP0_REQUEST:
				USBCBCheckOtherReq();
				lcd_clear();					// USB接続メッセージ
				lcd_str(USBMsg);				// LCDに表示
				break;
		case EVENT_BUS_ERROR:
				USBCBErrorHandler();
				break;
		case EVENT_TRANSFER_TERMINATED:
		
				break;
		default:
				break;
	}      
	return TRUE; 
}
         

