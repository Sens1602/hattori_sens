/******************************************
*  I2C�ʐM���C�u����
*  PIC24�t�@�~����I2C���W���[�����g�p
*   I2CStart()
*   I2CStop()
*   I2COut()
*   I2CRcv()
******************************************/
#include <p24fj64gb002.h>
#include "i2c_lib2.h"
#include "lcd_i2c_lib2.h"

/*****************************
* �X�^�[�g�����o��
*****************************/
void I2CStart(void){
	IdleI2C1();
	I2C1CONbits.SEN = 1;   				// �X�^�[�g�o��//
	while(I2C1CONbits.SEN);				// �X�^�[�g�I���҂�//	
}
/*****************************
* �X�g�b�v�����o�� 
*****************************/
void I2CStop(void){
    I2C1CONbits.PEN = 1;   				// �X�g�b�v�o��//
	while(I2C1CONbits.PEN);				// �X�g�b�v�I���҂�//
	IdleI2C1();
}
/*** �A�C�h���҂��T�u�֐��@***/
void IdleI2C1(void){
    while(I2C1CONbits.SEN || I2C1CONbits.PEN || I2C1CONbits.RCEN
     || I2C1CONbits.ACKEN || I2C1STATbits.TRSTAT);  
}
/*********************************
* I2C��1�o�C�g�o��
* �X���[�u�����ACK��߂�l�Ƃ��� 
**********************************/
void I2COut(unsigned char data){

	I2C1TRN = data;						// data���M//
	while(I2C1STATbits.TBF);			// ���M�I���҂�//
	while(I2C1STATbits.ACKSTAT);		// ACK�ԐM�҂�//	
	IdleI2C1();							// �A�C�h���҂�//
	delay_us(2);
}
/********************************
* I2C��1�o�C�g����
* �p�����[�^��ACK/NAK��ԑ�
********************************/
unsigned char I2CRcv(unsigned char Ack){

   	I2C1CONbits.ACKDT = Ack;			// ACK�ݒ�//
   	I2C1CONbits.RCEN = 1;				// ��M����//
   	while(I2C1CONbits.RCEN);			// ��M�҂�//
   	I2C1CONbits.ACKEN = 1;				// ACK�ԑ�//
 	IdleI2C1();							// �A�C�h���҂�//
	return(I2C1RCV);					// ��M�f�[�^�擾//		
}
