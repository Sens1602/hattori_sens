/*******************************************************
*  HIDホストプログラム
*  　HIDデバイス（Low Pin Count USB DemBord）を制御
*    QVGAグラフィックLCDとタッチパネルを使用
********************************************************/
#include <p24fxxxx.h>
#include "GenericTypeDefs.h"
#include "HardwareProfile.h"
#include "usb_config.h"
#include "LCDBlocking.h"
#include "USB/usb.h"
#include "USB/usb_host_hid_parser.h"
#include "USB/usb_host_hid.h"
#include "DALCD_Lib1.h"					// 液晶表示器ライブラリ

/**** コンフィギュレーション設定 ***/
_CONFIG1( WDTPS_PS32768 & FWPSA_PR128 & WINDIS_OFF
	 & FWDTEN_OFF & ICS_PGx1 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2( POSCMOD_HS & IOL1WAY_OFF & OSCIOFNC_OFF & OSCIOFNC_OFF
	 & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV2 & IESO_OFF)
_CONFIG3( WPFP_WPFP255 & SOSCSEL_SOSC & WUTSEL_LEG 
	 & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)

/**　ステート変数の定義 **/
typedef enum
{
    DEMO_INITIALIZE,
    DEVICE_NOT_CONNECTED,
    DEVICE_CONNECTED, 
    IDLE, 
    HID_SEND_OUT_REPORT,
    HID_SEND_OUT_REPORT_WAIT,
    HID_GET_POT_VALUE_REPORT,
    HID_GET_POT_VALUE_REPORT_WAIT,
    HID_GET_SWITCH_STATE_REPORT,
    HID_GET_SWITCH_STATE_REPORT_WAIT,
}AP_STATE;

volatile AP_STATE  State;
#define MAX_ALLOWED_CURRENT	(500)		// 供給電流500mA Max

/***** プロトタイピング *****/
void ftostring(int seisu, int shousu, float data, unsigned char *buffer);
void itostring(char digit, unsigned int data, unsigned char *buffer);
void Process(void);
void Display_Menu(void);
int CheckBtn(int x, int y);

/**** グローバル変数定義　 ***/
BYTE error_counter_hid;
BYTE device_adc_pot_value[64];
BYTE hid_interface_number;
BYTE device_switch_state[64];
volatile BYTE device_send_command[4];
int data;
BYTE displayOnce;
BYTE temp;
BYTE ErrorDriver;
BYTE NumOfBytesRcvd;
int Btn, Flag;	
float Ondo, Volt;

/* タッチボタン座標データ */
extern unsigned int	Xset, Yset;
int Button[15][2] = {{390,570},{520,570},{650,570},{780,570},	// LED
					 {390,400},{520,400},{650,400},				// SW
					 {200,240},{500,240},{800,240}};			// 計測
unsigned char MsgScrn[] = "X=xxx Y=xxx";		// デバッグ用タッチ座標表示
unsigned char display_data[21] = " xxxx   xx    xxxx  "; 

/** 現在状態保持配列 */
BYTE LED_state[4] = {0x30, 0x30, 0x30, 0x30};	// LED
BYTE SW_state[3] = {0x30, 0x30, 0x30};			// SW
unsigned int AN_state[3];						// 計測    

/****************** メイン関数 ***********************/
int main (void)
{
	/* クロックの初期設定　*/
	CLKDIVbits.CPDIV 	= 0;			// 32MHz
	CLKDIVbits.PLLEN 	= 1;			// 96MHz PLL Enable
	CLKDIVbits.G1CLKSEL = 1;			// Select 96MHz
	CLKDIV2bits.GCLKDIV = 40;			// 8.00MHz
	/* IOポートの初期設定 */
	TRISB = 0xF20B;						// Analog,スイッチ以外を出力モードに
	TRISC = 0xF000;
	TRISD = 0x0000;
	TRISE = 0x0000;
	TRISF = 0x0084;						// VBUS
	TRISG = 0x010C;						// D+,D- Input	
	/* アナログ、デジタルモード設定 */
	ANSB = 0xF000;						// RB12-15のみアナログ入力
	ANSC = 0;
	ANSD = 0;
	ANSG = 0;
	/* タイマ3初期設定 100msec周期 状態計測トリガ用**/
	T3CON = 0x0030;						// 1/256, 16MHz
	TMR3 = 0;
	PR3 = 6250;							// 16MHz/256=62.5kHz/6250= 10Hz
	IFS0bits.T3IF = 0;					// 割り込みフラグクリア
	IEC0bits.T3IE = 1;					// 割り込み許可
	Flag = 0;
	/* A/Dコンバータ初期設定 */
	SetupScreen();						// タッチパネル用
	/* 液晶表示器初期化 */
	GInit();
	ClearBox(BLACK);
    /* Initialize USB layers */
    USBInitialize(0);
	State = DEMO_INITIALIZE;    		// ステート初期設定
	displayOnce = FALSE;				// Detouch1回表示用フラグ
	T3CONbits.TON = 1;					// タイマ３スタート
	
	/***************** メインループ **********************/
    while(1)
    {
		USBTasks();						// USB送受信実行
		/* 通常プロセス実行　*/
		Process();
	}
}
/***********************************************************
*   タイマ3割り込み処理関数 
*   状態と計測のトリガ用　100msec周期
*   Flagで順番に1つずつ要求を送信する
***********************************************************/
void __attribute__((__interrupt__, auto_psv)) _T3Interrupt(void)
{
	if(IFS0bits.T3IF){
		IFS0bits.T3IF = 0;							// 割り込みフラグクリア
		if(State == IDLE){							// USBアイドル中か？
			/* 順番にデータ送信要求 */
			if((Flag >= 0) && (Flag <= 2)){			// 状態の場合
				device_send_command[0] = 0x32;
				device_send_command[1] = Flag + 0x31;
				device_send_command[2] = 0;
				Flag++;
			}
			else if((Flag >= 3) && (Flag <= 5)){	// 計測の場合
				device_send_command[0] = 0x33;
				device_send_command[1] = Flag-3 + 0x31;
				Flag++;
				if(Flag > 5)						// 要求項目最後か？
					Flag = 0;						// 最初に戻す
			}
			State = HID_SEND_OUT_REPORT;			// コマンド送信へ					
		}
	}
}					
			
/***********************************************************
*  メインステート関数
*  HIDデバイス認識処理関数
*  認識後タッチボタン処理へ
************************************************************/
void Process(void)
{
	/* HIDデバイス認識 */
	switch(State)
	{
		/*********** HIDデバイス接続確認 ***********/
		case DEMO_INITIALIZE:								// 見出し表示
			State = DEVICE_NOT_CONNECTED;
			break;
		
		case DEVICE_NOT_CONNECTED:							// 未接続状態表示
			if(displayOnce == FALSE)
			{
				ClearBox(BLACK);
				PutStr(0, 0, (unsigned char*)"Start HID Controller", WHITE, BLACK);								
				PutStr(0, 2, (unsigned char*)"Device Detached!    ", YELLOW, BLACK);
				displayOnce = TRUE;							// 1回表示フラグオン

			}
			if(USBHostHID_ApiDeviceDetect())				// 接続チェック
			{
				State = DEVICE_CONNECTED;					// 接続確認へ
				displayOnce = FALSE;						// 1回表示フラグリセット
			}
			break;
			
		case DEVICE_CONNECTED:								// 接続完了表示
			PutStr(0, 2, (unsigned char*)"Device Attached!    ", GREEN, BLACK);
			Display_Menu();									// 画面見出し表示
			/** USBインターフェース番号取得 **/
			hid_interface_number = USBHostHID_ApiGetCurrentInterfaceNum();
			State = IDLE;									// USBアイドル状態へ			
			break;
			
		/********* アイドル中 タッチパネル操作チェック *******/
		case IDLE:
			/* デバイス途中切断チェック */
			if(!USBHostHID_ApiDeviceDetect()){
//  			State = DEVICE_NOT_CONNECTED;					// 未接続状態へ
				Reset();										// 強制リセット
			}
			/* タッチ操作に応じてコマンド送信　*/
			if(GetScreen()){									// タッチスイッチ座標入力
				Btn = CheckBtn(Xset, Yset);						// ボタン番号取得
				if(Btn >= 0){									// 正常ボタンか？
					/* ボタンごとの処理 */
					if((Btn >=0) && (Btn <= 3)){				// オンオフ制御ボタンの場合
						device_send_command[0] = 0x31;
						device_send_command[1] = Btn + 0x31;	// LEDアドレス指定
						if(LED_state[Btn] == 0x31)
							device_send_command[2] = 0x30;		// オフ制御指定
						else
							device_send_command[2] = 0x31; 		// オン制御指定
						State = HID_SEND_OUT_REPORT;			// コマンド送信へ								
					}
				}					
			}
			break;

		/************** コマンド実行 *****************/
		/***** コマンド送信 *****/		
		case HID_SEND_OUT_REPORT: 
			if(!USBHostHID_ApiSendReport(0,hid_interface_number,3, (BYTE*)&device_send_command))
				State = HID_SEND_OUT_REPORT_WAIT;				// 送信完了待ちへ
			break;

		/**** コマンド送信完了待ち ***/
		case HID_SEND_OUT_REPORT_WAIT:	
			if(USBHostHID_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
			{
				/** 送信完了確認後　各コマンドごとの処理へ分岐 ***/
				if(device_send_command[0] == 0x31)
					State = HID_GET_SWITCH_STATE_REPORT;		// LED状態要求
				else if(device_send_command[0] == 0x32)
					State = HID_GET_SWITCH_STATE_REPORT;		// SW状態要求
				else if(device_send_command[0] == 0x33)
					State = HID_GET_POT_VALUE_REPORT;			// 計測要求
			}
			break;

		/*** 状態要求  ***/
		case HID_GET_SWITCH_STATE_REPORT:
			/** 状態要求コマンド送信 **/
			if(!USBHostHID_ApiGetReport(0,hid_interface_number,64, device_switch_state))
				State = HID_GET_SWITCH_STATE_REPORT_WAIT;		// 応答待ちへ
			break;

		/*** 応答データにより状態表示 ***/	
		case HID_GET_SWITCH_STATE_REPORT_WAIT:
			/* 応答受信確認 */
			if(USBHostHID_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
			{
				/* 応答内容チェック */
				if((device_switch_state[0] == 0x31) && (NumOfBytesRcvd > 0))
				{
					/* LED制御応答受信の場合 */
					temp = device_switch_state[1] - 0x31;			// LEDアドレス取得
					LED_state[temp] = device_switch_state[2];		// 状態格納
					if(device_switch_state[2] == 0x31){				// オンか？
						PutBox(104+48*temp, 72, 32, 32, RED);		// オンなら赤
						PutCha(7+temp*3, 5, 0x31+temp, BLACK, RED);						
					}	
					else{
						PutBox(104+48*temp, 72, 32, 32, GREEN);		// オフなら緑
						PutCha(7+temp*3, 5, 0x31+temp, BLACK, GREEN);						
					}	
					error_counter_hid = 0;							// 応答未着カウンタクリア
					State = IDLE;									// USBアイドルへ
					delay_ms(1000);									// 制御繰り返し間隔制限
				}
				else{
					/* スイッチ状態応答の場合 */
					if((device_switch_state[0] == 0x32) && (NumOfBytesRcvd > 0))
					{
						temp = device_switch_state[1] - 0x31;		// スイッチアドレス取得
						SW_state[temp] = device_switch_state[2];	// 状態格納
						if(device_switch_state[2] == 0x30){			// オンか？
							PutBox(104+48*temp, 120, 32, 32, RED);	// オンなら赤
							PutCha(7+temp*3, 8, 0x31+temp, BLACK, RED);							
						}		
						else{
							PutBox(104+48*temp, 120, 32, 32, GREEN);// オフなら緑
							PutCha(7+temp*3, 8, 0x31+temp, BLACK, GREEN);								
						}	
						error_counter_hid = 0;						// 未着カウンタクリア
						State = IDLE;								// USBアイドルへ
					}
					/* 応答未着の場合　*/
					else{
						error_counter_hid ++;						// 未着カウンタアップ
						if(error_counter_hid > 10){					// 10回を超えたか？
							State = IDLE;							// 無視しUSBアイドルへ
							error_counter_hid = 0;					// カウンタクリア
						}
						else {
							State = HID_GET_SWITCH_STATE_REPORT;	// まだなら受信待ちへ戻る
						}
					}
				}
			}
			break;
						
		/*** 計測データ要求   ***/		
		case HID_GET_POT_VALUE_REPORT:
			/* 計測要求コマンド送信 */
			if(!USBHostHID_ApiGetReport(0,hid_interface_number,64, device_adc_pot_value))
				State = HID_GET_POT_VALUE_REPORT_WAIT;				// 送信完了なら次へ
			break;

		/*** 応答データにより計測値表示 ***/	
		case HID_GET_POT_VALUE_REPORT_WAIT:
			/* 受信完了待ち */
			if(USBHostHID_ApiTransferIsComplete(&ErrorDriver,&NumOfBytesRcvd))
			{
				if(NumOfBytesRcvd > 0)								// 受信データありか？
				{
					/* 指定チャネルの計測データ格納 */
					temp = device_adc_pot_value[1] - 0x31;			// チャネル番号取得
					data = device_adc_pot_value[3]*256+device_adc_pot_value[2];// 10ビットデータへ
					AN_state[temp] = data;							// 格納
					switch(temp){
						case 0: // 温度の場合
								/* 0.5V@0℃ 10mV/℃ */
							Ondo = (data * 500.0)/1024 - 50.0;		// 温度に変換
							ftostring(2, 1, Ondo, display_data+1);	// 文字に変換し表示
							PutStr(0, 11, display_data, WHITE, BLACK);	
							break;
						case 1:	// 湿度の場合
							data = (75 * data) / 409 -18;			// スケール変換　0to100%
							itostring(2, data, display_data+8);		// 文字に変換し表示
							PutStr(0, 11, display_data, WHITE, BLACK);	
							break;
						case 2:	// 電圧の場合
							Volt = (data * 5.0) / 1024;
							ftostring(1, 2, Volt, display_data+14);	// 文字に変換し表示
							PutStr(0, 11, display_data, WHITE, BLACK);	
							break;							
						default: break;
					}							
					State = IDLE;									// USBアイドルへ
					error_counter_hid = 0;							// 未着カウンタクリア
				}
				/* 受信未着の場合 */
				else{
					error_counter_hid ++;							// 未着カウンタアップ	
					if(error_counter_hid > 10){						// 10回を超えたか
						State = IDLE;								// 無視しUSBアイドルへ
						error_counter_hid = 0;
					}
					else{
						State = HID_GET_POT_VALUE_REPORT;			// 受信待ち繰り返し
					}
				}
			}
			break;
			
		default :
		break;		

	}
}

/*****************************************************
* メニュー画面表示関数 
*****************************************************/
unsigned char header[21] = {0x20,0x8A,0x81,0x20,0x20,0x20,0x20,0x20,	// 温度　湿度　電圧
	 0x8B,0x81,0x20,0x20,0x20,0x20,0x91,0x92,0x20,0x20,0x20,0x20,0};
unsigned char header2[8] = {0x8A,0x81,0x8B,0x81,0xD2,0xB0,0xC0,0};		// 温湿度メータ
unsigned char header3[5] = {0xBD,0xB2,0xAF,0xC1,0};						// スイッチ


void Display_Menu(void){
	int i;
	
	PutStr(0, 3, (unsigned char*)"*****         ******", MAGENTA, BLACK);
	PutStr(6, 3, header2, MAGENTA, BLACK);
	/* LED制御ボタン表示 */
	PutStr(1, 5, (unsigned char*)"LED", MAGENTA, BLACK);
	for(i=0; i<4; i++){
		if(LED_state[i] == 0x31){
			PutBox(104+48*i, 72, 32, 32, RED);
			PutCha(7+i*3, 5, 0x31+i, BLACK, RED);
		}			
		else{
			PutBox(104+48*i, 72, 32, 32, GREEN);
			PutCha(7+i*3, 5, 0x31+i, BLACK, GREEN);
		}
	}
	/* スイッチ用ボタン表示 */
	PutStr(1, 8, header3, MAGENTA, BLACK);
	for(i=0; i<3; i++){	
		if(device_switch_state[1] == 1){
			PutBox(104+48*i, 120, 32, 32, RED);
			PutCha(7+i*3, 8, 0x31+i, BLACK, RED);			
		}			
		else{
			PutBox(104+48*i, 120, 32, 32, GREEN);
			PutCha(7+i*3, 8, 0x31+i, BLACK, GREEN);			
		}	
	}
	/* 計測値表示 */
	PutStr(0, 10, header, MAGENTA, BLACK);
	PutStr(0, 11, display_data, WHITE, BLACK);
	PutStr(0, 12, (unsigned char*)" DegC   %RH   Volt  ", BLUE, BLACK);
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
	for(i=0; i<10; i++){										// 最大10個のボタン
		if((x > Button[i][0]-20)&&(x <	Button[i][0]+20)){		// 範囲±20
			if((y > Button[i][1]-20)&&(y < Button[i][1]+20))	// 範囲±20
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
		buffer--;						// ポインター１
		*buffer = (data % 10) + '0';	// ASCIIへ
		data = data / 10;				// 次の桁へ
	}
}
/***********************************
* Floatから文字列へ変換
* 合計有効桁は8桁以下とすること
***********************************/
void ftostring(int seisu, int shousu, float data, unsigned char *buffer)
{
	int i;
	long dumy;

	if(shousu != 0)					//小数部桁ありか
		buffer += seisu+shousu+1;		//全体桁数＋小数点
	else							//小数部桁なしのとき
		buffer += seisu + shousu;		//全体桁数のみ
	buffer--;						//配列ポインタ-1
	for(i=0; i<shousu; i++)			//小数部を整数に変換
		data = data * 10;				//１０倍
	/// dumyがオーバーフローすると変換不可(８桁が限界)
	dumy = (long) (data + 0.5);		//四捨五入して整数に変換
	for(i=shousu; i>0; i--)	{		//小数桁数分繰り返し
		*buffer =(dumy % 10)+'0';		//数値を文字に変換格納
		buffer--;					//格納場所下位から上位へ
		dumy /= 10;					//次の桁へ
	}
	if(shousu != 0) {					//小数桁0なら小数点なし
		*buffer = '.';				//小数点を格納
		buffer--;					//ポインタ-1
	}
	for(i=seisu; i>0; i--) {			//整数桁分繰り返し
		*buffer = (dumy % 10)+'0';		//数値を文字に変換格納
		buffer--;					//ポインタ-1
		dumy /= 10;					//次の桁へ
	}
	i = 0;							// ブランキング処理
	buffer++;
	while((i<seisu-1)&&(*buffer == '0')){	// 上位桁が0の間
		*buffer = ' ';				// ブランクに変換
		buffer++;
		i++;
	}
}
//******************************************************************************
//******************************************************************************
// USB Support Functions
//******************************************************************************
//******************************************************************************

BOOL USB_ApplicationEventHandler( BYTE address, USB_EVENT event, void *data, DWORD size )
{
	/* イベント処理 */
   	switch( event )
   	{
		case EVENT_VBUS_REQUEST_POWER:
            if (((USB_VBUS_POWER_EVENT_DATA*)data)->current <= (MAX_ALLOWED_CURRENT / 2))
            {
//				PutStr(0, 1, (unsigned char*)"Current Set Normal! ", GREEN, BLACK);	            
                return TRUE;
            }
            else
            {
 				PutStr(0, 1, (unsigned char*)"Over Current Error! ", RED, BLACK);
            }
            break;
		
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
		case EVENT_DETACH:
            State = DEVICE_NOT_CONNECTED;
            return TRUE;
            break;

		case EVENT_HID_RPT_DESC_PARSED:
			#ifdef APPL_COLLECT_PARSED_DATA
				return(APPL_COLLECT_PARSED_DATA());
			#else
				return TRUE;
			#endif
			break;

		default :
			break;
	}
	return FALSE;
}
