/*******************************************************
*  汎用入出力ボード用　ホスト　汎用USBクラスを使用
*  汎用PIOを制御する
********************************************************/
#include <p24fxxxx.h>
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "usb_config.h"
#include "USB/usb.h"
#include "USB/usb_host_generic.h"
#include "DALCD_Lib1.h"

/**** コンフィギュレーション設定 ***/
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & WINDIS_OFF
	 & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF
	 & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG 
	 & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)

/**　ステートの定義 **/
typedef enum
{
	INITIALIZE	= 0,
	DEVICE_NOT_CONNECTED,
	DEVICE_CONNECTED,
	WAITING_SEND,
	READ_OK,
	WAITING_READ,
	SET_MENU,
	IDLE,
	SEND_COMMAND,
	BTN_PROCESS,
	WAITING_WR_BTN,
	READ_BTN,
	PROCESS_BTN,
}AP_STATE;

/**** グローバル変数定義　 ***/
extern unsigned int	Xset, Yset;			// タッチ座標
BYTE	deviceAddress;  				// USB上のデバイスアドレス
BYTE	INPacket[64];     				// 受信パケット
BYTE	OUTPacket[64];					// 送信パケット
BYTE	State;							// ステート変数
GENERIC_DEVICE_ID 	DevID;				// デバイスID
int Btn, Adrs;
BYTE RetVal;
int i, Flag;
unsigned char MesrMsg[] = "xxxx";	
unsigned char MsgScrn[] = "X=xxx Y=xxx";// デバッグ用タッチ座標表示
/* タッチボタン座標データ */
int Button[15][2] = {{220,570},{350,570},{480,570},{600,570},{720,570}};
/* 状態格納配列　*/					
char Btn_Status[5] = {0x30,0x30,0x30,0x30,0x30};
char SW_Status[4] = {0x30,0x30,0x30,0x30};
unsigned int POT[3] = {0,0,0};
    
/***** 関数プロトタイピング *****/
void Process( void );
void Display_Menu(void);
void itostring(char digit, unsigned int data, unsigned char *buffer);
int CheckBtn(int x, int y);

/****************** メイン関数 ***********************/
int main (void)
{
	/* クロックの初期設定　*/
	CLKDIVbits.CPDIV 	= 0;		// 32MHz
	CLKDIVbits.PLLEN 	= 1;		// 96MHz PLL Enable
	CLKDIVbits.G1CLKSEL = 1;		// Select 96MHz
	CLKDIV2bits.GCLKDIV = 40;		// 8.00MHz
	/* IOポートの初期設定 */
	TRISB = 0xF20B;					// Analog,スイッチ以外を出力モードに
	TRISC = 0xF000;
	TRISD = 0x0000;
	TRISE = 0x0000;
	TRISF = 0x0084;					// VBUS,
	TRISG = 0x010C;					// D+,D- Input	
	/* デジタルモード設定 */
	ANSB = 0xF000;					// RB12-15のみアナログ入力
	ANSC = 0;
	ANSD = 0;
	ANSG = 0;
	/* タイマ3初期設定 200msec周期 状態計測トリガ用**/
	T3CON = 0x0030;					// 1/256, 16MHz
	TMR3 = 0;
	PR3 = 12500;						// 16MHz/256=62.5kHz/12500= 5Hz
	IFS0bits.T3IF = 0;				// 割り込みフラグクリア
	IEC0bits.T3IE = 1;				// 割り込み許可
	Flag = 0;
	/* A/Dコンバータ初期設定 */
	SetupScreen();					// タッチスクリーン用アナログ入力
	/* 液晶表示器初期化 */
	GInit();
	ClearBox(BLACK);				// 黒背景で全消去
    /* Initialize USB layers */
	DevID.vid   = 0x04D8;			// デバイスID設定
	DevID.pid   = 0x000C;
    USBInitialize(0);					// USBフレームワーク初期化
	T3CONbits.TON = 1;				// タイマ３スタート
	
	/***************** メインループ **********************/
    while(1)
    {
		USBTasks();					// USB送受信実行
		/* 通常プロセス実行　*/
		Process();
	}
	return 0;
}
/***********************************************************
*   タイマ3割り込み処理関数 
*   状態と計測のトリガ用　200msec周期
***********************************************************/
void __attribute__((__interrupt__, auto_psv)) _T3Interrupt(void)
{
	if(IFS0bits.T3IF)
	{
		IFS0bits.T3IF = 0;					// 割り込みフラグクリア
		mLED_1_Toggle();					// 目印LED点滅
		if(State == IDLE)					// USBアイドル中か？
		{
			/* 一括転送要求 */
			OUTPacket[0] = 0x34;			// 一括転送コマンド準備
			OUTPacket[1] = 0;
			OUTPacket[2] = 0;	
			State = SEND_COMMAND;			// 送信ステートへ
		}
	}
}

/***********************************************************
*  ユーザーアプリステート関数
* 　IDLE時タッチスクリーン入力か、タイマ３イベントでトリガ
*   DO制御か一括状態計測要求
************************************************************/
void Process(void)
{
	switch (State)
	{
		/******** デバイス接続待ち *******/		
		case INITIALIZE:									// 初期化終了
			PutStr(0, 0, (unsigned char*)"Start PIO Controller", WHITE, BLACK);
			State = DEVICE_NOT_CONNECTED;
			break;
		case DEVICE_NOT_CONNECTED:
		    if (deviceAddress == 0){						// デバイス未接続か？
		        #ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
		            DevID.serialNumberLength = 0;			// デバイスNoリセット
		            DevID.serialNumber = NULL;
		        #endif
		        /** デバイス接続チェック **/
		        if (USBHostGenericGetDeviceAddress(&DevID)){
					deviceAddress = DevID.deviceAddress;	//デバイスアドレス取得
					State = DEVICE_CONNECTED;				// 接続確認へ
		        }
		    }
			break;			
		/************ デバイス確認プロセス *************/
		case DEVICE_CONNECTED:								// デバイス確認コマンド送信
			OUTPacket[0] = 0x30;							// 接続確認コマンド
			OUTPacket[1] = 0;
			if (!USBHostGenericTxIsBusy(deviceAddress))		// 送信レディーか？
			{	/* 確認コマンド送信実行 */
				if ( (RetVal=USBHostGenericWrite(deviceAddress, &OUTPacket, 2)) == USB_SUCCESS )
					State = WAITING_SEND;					// 送信完了待ちへ
				else
					PutStr(0, 1, (unsigned char*)"USB Write Error!    ", RED, BLACK);
			}
			break;
		case WAITING_SEND:									// 送信完了待ち
			if (!USBHostGenericTxIsBusy(deviceAddress) )
				State = READ_OK;
			break;
		case READ_OK:										// OK応答受信
			if (!USBHostGenericRxIsBusy(deviceAddress))		// 受信待ち
			{	/** 受信実行 **/
				if ( (RetVal=USBHostGenericRead(deviceAddress, &INPacket, 4)) == USB_SUCCESS )
					State = WAITING_READ;					// データ取得待ちへ
				else
					PutStr(0, 1, (unsigned char*)"USB Read Error!     ", RED, WHITE);
			}
			break;
		case WAITING_READ:
			if (!USBHostGenericRxIsBusy(deviceAddress)){	// 受信待ち
				/** OK応答確認 **/
				if(USBHostGenericGetRxLength(deviceAddress) == 4 && INPacket[0]== 0x30
					&& INPacket[2] == 'O' && INPacket[3] == 'K')
				{	/* OK確認の場合 */
					PutStr(0, 1, (unsigned char*)"USB Device Check OK!", GREEN, BLACK);
					State = SET_MENU;						// タッチスクリーン処理へ
				}
				else
				{	/* 確認失敗の場合 */
					PutStr(0, 1, (unsigned char*)"USB Device Check NG!", RED, BLACK);
					State = DEVICE_NOT_CONNECTED;			// ボード確認不可の場合
				}
			}
			break;
			
		/************* アイドルプロセス ****************/
		case SET_MENU:
			Display_Menu();								// メニュー画面表示
			State = IDLE;								// タッチ入力待ちへ
			break;
		/** タッチ入力待ち **/	
		case IDLE:
			if(GetScreen()){							// タッチ入力
				Btn = CheckBtn(Xset, Yset);				// ボタン番号取得
				/*** コマンドセット **/
				if(Btn >= 0){							// ボタン番号正常か？
					if((Btn >= 0)&&(Btn <= 4)){			// DOの場合
						OUTPacket[0] = 0x31;
						OUTPacket[1] = Btn + 0x31;		// DOコマンド準備
						if(Btn_Status[Btn] == 0x31)
							OUTPacket[2] = 0x30;		// Off
						else
							OUTPacket[2] = 0x31;		// On
						State = SEND_COMMAND;
					}		
				}
			}
			delay_ms(5);								// 入力繰り返し速度制限用
			break;
		case SEND_COMMAND:
			if (!USBHostGenericTxIsBusy(deviceAddress))			// 送信レディーか？
			{	/** 制御コマンド送信実行  */
				if ( (RetVal=USBHostGenericWrite(deviceAddress, &OUTPacket, 3)) == USB_SUCCESS )
					State = WAITING_WR_BTN;						// 送信完了待ちへ
				else
					PutStr(0, 1, (unsigned char*)"USB Write Error!    ", RED, BLACK);
			}
			break;		
		case WAITING_WR_BTN:									// 送信完了待ち
			if (!USBHostGenericTxIsBusy(deviceAddress) )		// 送信完了か？
				State = READ_BTN;								// 応答受信待ちへ
			break;
			
		/************* 応答受信プロセス *************/
		case READ_BTN:	
			if (!USBHostGenericRxIsBusy(deviceAddress))			// 受信レディーか？
			{	/** 受信実行 **/
				if ( (RetVal=USBHostGenericRead(deviceAddress, &INPacket, 64)) == USB_SUCCESS )
					State = PROCESS_BTN;						// 受信処理へ
				else
					PutStr(0, 1, (unsigned char*)"USB Read Error!     ", RED, WHITE);
			}
			break;
		case PROCESS_BTN:	
			if (!USBHostGenericRxIsBusy(deviceAddress)){		// 受信完了か？
				/******* 受信データ処理 ********/
				switch(INPacket[0]){							// コマンドで区別
					case 0x31:	// DOの場合
						Adrs = INPacket[1] - 0x31;				// DOアドレス
						Btn_Status[Adrs] = INPacket[2];			// 指定DOの状態格納
						for(i=0; i<5; i++){						// 全DO状態表示
							if(Btn_Status[i] == 0x31){
								PutBox(i*48+40, 72, 32, 32, RED);	// Onの場合赤
								PutCha(i*3+3, 5, (0x31+i), BLACK, RED);
							}		
							else{
								PutBox(i*48+40, 72, 32, 32, GREEN);	// Offの場合緑
								PutCha(i*3+3, 5, (0x31+i), BLACK, GREEN);
							}							
						}
						delay_ms(1000);							// 次の制御1秒待ち
						break;
					case 0x34:	// 一括状態受信の場合 
						for(i=0; i<4; i++){						// 全DIの状態表示
							SW_Status[i] = INPacket[i+2];
							if(SW_Status[i] == 0x31){
								PutBox(i*48+40, 120, 32, 32, RED);	//Onの場合赤
								PutCha(i*3+3, 8, (0x31+i), BLACK, RED);
							}								
							else{
								PutBox(i*48+40, 120, 32, 32, GREEN);	// Offの場合緑
								PutCha(i*3+3, 8, (0x31+i), BLACK, GREEN);
							}
						}
						for(i=0; i<3; i++){						// 全計測データ表示
							POT[i] = INPacket[i*2+7]*256+INPacket[i*2+6];
							itostring(4, POT[i], MesrMsg);			// 文字に変換
							PutStr(i*6+2, 11, MesrMsg, WHITE, BLACK);	
						}
						break;
					default: break;
				}
				State = IDLE;									// タッチ待ちへ戻る
			}
			break;
		default :
			break;
	}
}
/*****************************************************
* メニュー画面表示関数 
*****************************************************/
void Display_Menu(void){
	int i;

	/** 見出し表示 **/
	PutStr(0, 0, (unsigned char*)"PIO Board Controller", WHITE, RED);
	/** DOメニュー表示  **/
	PutStr(0, 5, (unsigned char*)"DO", MAGENTA, BLACK);
	for(i=0; i<5; i++){
		if(Btn_Status[i] == 0x31){
			PutBox(i*48+40, 72, 32, 32, RED);
			PutCha(i*3+3, 5, (0x31+i), BLACK, RED);
		}				
		else{
			PutBox(i*48+40, 72, 32, 32, GREEN);
			PutCha(i*3+3, 5, (0x31+i), BLACK, GREEN);
		}			
	}
	/**　DIメニュー表示 **/
	PutStr(0, 8, (unsigned char*)"DI", MAGENTA, BLACK);
	for(i=0; i<4; i++){
		if(SW_Status[i] == 0x31){
			PutBox(i*48+40, 120, 32, 32, RED);
			PutCha(i*3+35, 8, (0x31+i), BLACK, RED);
		}					
		else{
			PutBox(i*48+40, 120, 32, 32, GREEN);
			PutCha(i*3+3, 8, (0x31+i), BLACK, GREEN);
		}				
	}
	/** 計測メニュー表示 **/
	PutStr(0, 11, (unsigned char*)"AI", MAGENTA, BLACK);
	for(i=0; i<3; i++){
		itostring(4, POT[i], MesrMsg);
		PutStr(0, 10, (unsigned char*)"  CH1   CH2   CH3   ", MAGENTA, BLACK);
		PutStr(i*6+2, 11, MesrMsg, CYAN, BLACK);	
	}
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
	PutStr(3, 14, MsgScrn, BLUE, BLACK);
	/** ボタンチェック **/
	btn = -1;
	for(i=0; i<5; i++){
		if((x > Button[i][0]-20)&&(x <	Button[i][0]+20)){
			if((y > Button[i][1]-30)&&(y < Button[i][1]+30))
				btn = i;
		}
	}
	return(btn);
}
/***************************************
* 整数からASCII文字に変換
****************************************/
void itostring(char digit, unsigned int data, unsigned char *buffer)
{
	char i;

	buffer += digit;					// 最後の数字位置
	for(i=digit; i>0; i--) {			// 変換は下位から上位へ
		buffer--;					// ポインター１
		*buffer = (data % 10) + '0';	// ASCIIへ
		data = data / 10;				// 次の桁へ
	}
}

//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	#ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
		BYTE i;
	#endif
	/* イベント処理 */
    	switch( event )
    	{
		case EVENT_GENERIC_ATTACH:
			if (size == sizeof(GENERIC_DEVICE_ID))
			{
				deviceAddress   = ((GENERIC_DEVICE_ID *)data)->deviceAddress;
				State = DEVICE_CONNECTED;
				PutStr(0, 2,(unsigned char*)"Device Attached!    ", GREEN, BLACK);
				#ifdef USB_GENERIC_SUPPORT_SERIAL_NUMBERS
					for (i=1; i<((GENERIC_DEVICE_ID *)data)->serialNumberLength; i++)
					{
//						UART2PutChar( ((GENERIC_DEVICE_ID *)data)->serialNumber[i] );
					}
				#endif
				return TRUE;
			}
			break;
		
		case EVENT_GENERIC_DETACH:
			deviceAddress   = 0;
			ClearBox(BLACK);
			State = INITIALIZE;
			PutStr(0, 2, (unsigned char*)"Device Detached!    ", YELLOW, BLACK);
			mLED_1_Off();
			mLED_2_Off();			
			return TRUE;
		
		case EVENT_GENERIC_TX_DONE:      // The main state machine will poll the driver.
		case EVENT_GENERIC_RX_DONE:
			return TRUE;
		
		case EVENT_VBUS_REQUEST_POWER:
//			PutStr(0, 1, (unsigned char*)"Current Set Normal! ", GREEN, BLACK);
			return TRUE;
		
		case EVENT_VBUS_RELEASE_POWER:
			return TRUE;

		case EVENT_HUB_ATTACH:
			PutStr(0, 1, (unsigned char*)"Hub is not supported", RED, BLACK); 
			return TRUE;
			break;
		
		case EVENT_UNSUPPORTED_DEVICE:
			PutStr(0, 1, (unsigned char*)"Device Not Supported", MAGENTA, BLACK);
			return TRUE;
			break;
		
		case EVENT_CANNOT_ENUMERATE:
			PutStr(0, 1, (unsigned char*)"Enumeration Error!! ", RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_CLIENT_INIT_ERROR:
			PutStr(0, 1, (unsigned char*)"Initialize Errorr!! ", RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_OUT_OF_MEMORY:
			PutStr(0, 1, (unsigned char*)"Out of Memory Error!", RED, BLACK);
			return TRUE;
			break;
		
		case EVENT_UNSPECIFIED_ERROR:
			PutStr(0, 1, (unsigned char*)"Unspecified Error!  ", RED, BLACK);
			return TRUE;
			break;
		case EVENT_SUSPEND:
		case EVENT_DETACH:
		case EVENT_RESUME:
		case EVENT_BUS_ERROR:
			return TRUE;
			break;

		default :
			break;
	}
	return FALSE;
}
