/******************************************
*  I2C通信ライブラリ
*  PIC24ファミリでI2Cモジュールを使用
*   I2CStart()
*   I2CStop()
*   I2COut()
*   I2CRcv()
******************************************/
#include <p24fj64gb002.h>
#include "i2c_lib2.h"
#include "lcd_i2c_lib2.h"

/*****************************
* スタート条件出力
*****************************/
void I2CStart(void){
	IdleI2C1();
	I2C1CONbits.SEN = 1;   				// スタート出力//
	while(I2C1CONbits.SEN);				// スタート終了待ち//	
}
/*****************************
* ストップ条件出力 
*****************************/
void I2CStop(void){
    I2C1CONbits.PEN = 1;   				// ストップ出力//
	while(I2C1CONbits.PEN);				// ストップ終了待ち//
	IdleI2C1();
}
/*** アイドル待ちサブ関数　***/
void IdleI2C1(void){
    while(I2C1CONbits.SEN || I2C1CONbits.PEN || I2C1CONbits.RCEN
     || I2C1CONbits.ACKEN || I2C1STATbits.TRSTAT);  
}
/*********************************
* I2Cで1バイト出力
* スレーブからのACKを戻り値とする 
**********************************/
void I2COut(unsigned char data){

	I2C1TRN = data;						// data送信//
	while(I2C1STATbits.TBF);			// 送信終了待ち//
	while(I2C1STATbits.ACKSTAT);		// ACK返信待ち//	
	IdleI2C1();							// アイドル待ち//
	delay_us(2);
}
/********************************
* I2Cで1バイト入力
* パラメータでACK/NAKを返送
********************************/
unsigned char I2CRcv(unsigned char Ack){

   	I2C1CONbits.ACKDT = Ack;			// ACK設定//
   	I2C1CONbits.RCEN = 1;				// 受信許可//
   	while(I2C1CONbits.RCEN);			// 受信待ち//
   	I2C1CONbits.ACKEN = 1;				// ACK返送//
 	IdleI2C1();							// アイドル待ち//
	return(I2C1RCV);					// 受信データ取得//		
}
