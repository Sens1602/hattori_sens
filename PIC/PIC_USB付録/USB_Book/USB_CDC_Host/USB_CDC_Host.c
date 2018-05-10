/*******************************************************************
* USB CDCホスト例　  RS232Cモニタ
*  受信したデータをLCDに文字で表示
*  折り返しでデータを送信
********************************************************************/
#include	<p24fxxxx.h>
#include "GenericTypeDefs.h"
#include "usb_config.h"
#include "USB/usb.h"
#include "USB/usb_host_cdc.h"
#include "USB/usb_host_cdc_interface.h"
#include "DALCD_Lib1.h"

/**** コンフィギュレーション設定 ***/
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & WINDIS_OFF
	 & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF
	 & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG 
	 & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)

/* ステート変数定義 */
typedef enum _APPL_STATE{
    DEMO_INITIALIZE,
    DEVICE_NOT_CONNECTED,
    DEVICE_CONNECTED, 		
    IDLE,
    GET_IN_DATA,
    SEND_OUT_DATA
} APPL_STATE;
/** 定数定義 **/
#define MAX_ALLOWED_CURRENT (500)
#define MAX_IN_BYTES  64
#define MAX_OUT_BYTES 64 
/*** グローバル変数定義　****/
volatile APPL_STATE  State;
BYTE IN_Buf[MAX_IN_BYTES];
BYTE OUT_Buf[MAX_OUT_BYTES];
BYTE Xpos, Ypos, Error, NumRcvd;
BOOL displayOnce = FALSE;
/** LCDメッセージデータ　**/
const unsigned char StrtMsg[] = "Start RS232C Monitor";
const unsigned char AtchMsg[] = "CDC Device Attached!";
const unsigned char DtchMsg[] = "CDC Device Detached!";
const unsigned char NsptMsg[] = "Device Not Supported";
const unsigned char HubnMsg[] = "Hub is not supported";
const unsigned char CrntMsg[] = "Over Current Error! ";
const unsigned char EnumMsg[] = "Enumeration Error!! ";
const unsigned char InitMsg[] = "Initialize Errorr!! ";
const unsigned char OutmMsg[] = "Out of Memory Error!";
const unsigned char SpecMsg[] = "Unspecified Error!  ";
const unsigned char APIdMsg[] = "API Dettached!      ";
const unsigned char RestMsg[] = "Reset Device!       ";
const unsigned char HeadMsg[] = "--- Receive Data ---";


/****************** メイン関数 ***********************/
int main (void)
{
	/* クロックの初期設定　*/
	CLKDIVbits.CPDIV 	= 0;			// 32MHz
	CLKDIVbits.PLLEN 	= 1;			// 96MHz PLL Enable
	CLKDIVbits.G1CLKSEL = 1;			// Select 96MHz
	CLKDIV2bits.GCLKDIV = 40;			// 8.00MHz
	/* IOポートの初期設定 */
	TRISB = 0xF20B;						// Analog以外を出力モードに
	TRISC = 0xF000;
	TRISD = 0x0000;
	TRISE = 0x0000;
	TRISF = 0x0084;						// VBUS,
	TRISG = 0x010C;						// D+,D- Input	
	/* デジタルモード設定 */
	ANSB = 0xF000;						// RB12-15のみアナログ入力
	ANSC = 0;
	ANSD = 0;
	ANSG = 0;
	/* 液晶表示器初期化 */
	GInit();
	ClearBox(WHITE);
	PutStr(0, 0, StrtMsg, RED, BLACK);	// 開始メッセージ表示
	Xpos = 0;
	Ypos = 4;
    /* USBフレームワーク初期化 */
    USBInitialize( 0 );

	/***************** メインループ **********************/
	while(1)
	{
		USBTasks();
		/* デバイス切り離しチェック */
		if(!USBHostCDC_ApiDeviceDetect())	
			State = DEVICE_NOT_CONNECTED;	
		/* 通常プロセス実行　*/
		Process();
	}
}

/********************************************************
* ユーザーアプリ関数
*  ステートに応じて受信表示処理実行 
*********************************************************/
void Process(void){
	BYTE i;
	
	/***** ステート確認 ****/	
	switch(State)
	{
		/**** 初期状態 ****/
		case DEMO_INITIALIZE:							// 初期スタート
			State = DEVICE_NOT_CONNECTED;
			break;
		/**** デバイス接続待ち状態 ****/
		case DEVICE_NOT_CONNECTED:						// 接続待ち
			USBTasks();									// USB状態確認実行
			if(displayOnce == FALSE){					// 1回だけ表示
				ClearBox(0);							// 全画面消去
				Xpos = 0;								// 受信表示位置リセット
				Ypos = 4;					
				PutStr(0, 0, StrtMsg, RED, BLACK);		// 見出し表示
				PutStr(0, 3, HeadMsg, CYAN, BLACK);
				PutStr(0, 2, DtchMsg, YELLOW, BLACK);	// デタッチ表示
				displayOnce = TRUE;						// 1回表示フラグオン
			}
			if(USBHostCDC_ApiDeviceDetect())			// デバイス検出したか？
				State = DEVICE_CONNECTED;				// アタッチ状態に更新
			break;
		/**** デバイス接続完了受信待ちへ ****/
		case DEVICE_CONNECTED:							// デバイス接続状態
			PutStr(0, 2, AtchMsg, GREEN, BLACK);		// アタッチ状態表示
			State = IDLE;								// 受信待ちへ
			break;
		/**** データ受信待ち *****/
		case IDLE:
			if(USBHostCDC_Api_Get_IN_Data(MAX_IN_BYTES, IN_Buf))
				State = GET_IN_DATA;					// データ処理へ
			break;
		/**** 受信データ表示処理 ****/
		case GET_IN_DATA:
			if(USBHostCDC_ApiTransferIsComplete(&Error,&NumRcvd)){ 
				if(!Error){								// 受信エラーありか？
					if(NumRcvd > 0){					// 受信データありか？
						for(i=0; i<NumRcvd; i++){		// 受信データ表示
							if(IN_Buf[i] == 0x0D){		// 改行コードか？
								Ypos = 4;				// 原点へ
								Xpos = 0;
							}
							else{	
								PutCha(Xpos++, Ypos, IN_Buf[i], GREEN, BLACK);
								if(Xpos >= 20){			// 右端か？
									Ypos++; Xpos= 0;	// 改行
									if(Ypos >= 15)		// 最下行か？
										Ypos = 4;		// ページ先頭へ
								}
							}
						}
					}
					/* 送信データ準備 */
					for(i=0; i<NumRcvd; i++){
						if(IN_Buf[i] >= 0x20)			// 文字コード部か？
							OUT_Buf[i] = IN_Buf[i] + 1;	// 次の文字をセット
						else
							OUT_Buf[i] = IN_Buf[i];		// そのままセット
					}					
					State = SEND_OUT_DATA;				// 送信ステートへ進む					
				}
				else
					State = IDLE;						// エラーは無視して戻る				
			}
			break;
		/**** 折り返し送信実行 ***/
		case SEND_OUT_DATA:
			USBHostCDC_Api_Send_OUT_Data(NumRcvd, OUT_Buf);
			State = IDLE;								// IDLEに戻る
			break;

		default :
			break;
	}
}

//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//*****************************************************************************
BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	switch( event )
	{
		case EVENT_VBUS_REQUEST_POWER:
			if (((USB_VBUS_POWER_EVENT_DATA*)data)->current <= (MAX_ALLOWED_CURRENT / 2))
				return TRUE;
			else
				PutStr(0, 1, CrntMsg, GREEN, BLACK);	//			
			break;
		
		case EVENT_VBUS_RELEASE_POWER:
			return TRUE;
			break;
		
		case EVENT_HUB_ATTACH:
			PutStr(0, 1, HubnMsg, RED, BLACK); 
			return TRUE;
			break;
		
		case EVENT_UNSUPPORTED_DEVICE:
			PutStr(0, 1, NsptMsg, MAGENTA, BLACK);
			return TRUE;
			break;
		
		case EVENT_CANNOT_ENUMERATE:
			PutStr(0, 1, EnumMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_CLIENT_INIT_ERROR:
			PutStr(0, 1, InitMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_OUT_OF_MEMORY:
			PutStr(0, 1, OutmMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_UNSPECIFIED_ERROR:   	// This should never be generated.
			PutStr(0, 1, SpecMsg, RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_DETACH:                   // USB cable has been detached (data: BYTE, address of device)
			displayOnce = FALSE;
			PutStr(0, 1, APIdMsg, MAGENTA, BLACK);
			return TRUE;
			break;
		
		// CDC Specific events
		
		case EVENT_CDC_NONE:
		case EVENT_CDC_ATTACH:
		case EVENT_CDC_COMM_READ_DONE:
		case EVENT_CDC_COMM_WRITE_DONE:
		case EVENT_CDC_DATA_READ_DONE:
		case EVENT_CDC_DATA_WRITE_DONE:
			return TRUE;
			break;
		case EVENT_CDC_NAK_TIMEOUT:
			State = IDLE;
			return TRUE;
			break;
		
		case EVENT_CDC_RESET:
			ClearBox(0);
			PutStr(0, 1, RestMsg, CYAN, BLACK);
			return TRUE;
			break;
		default :
			break;
	}
	return FALSE;
}
