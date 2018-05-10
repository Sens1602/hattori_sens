/******************************************
*  I2C通信ライブラリ用ヘッダファイル
*  PIC24ファミリでI2Cモジュール使用
*   I2CStart()
*   I2CStop()
*   I2COut()
*   I2CRcv()
******************************************/
#include <p24fj64gb002.h>


/** 関数プロトタイピング **/
void I2CStart(void);
void I2CStop(void);
void I2COut(unsigned char data);
unsigned char I2CRcv(unsigned char Ack);
void IdleI2C1(void);
