/******************************************
*  I2C�ʐM���C�u�����p�w�b�_�t�@�C��
*  PIC24�t�@�~����I2C���W���[���g�p
*   I2CStart()
*   I2CStop()
*   I2COut()
*   I2CRcv()
******************************************/
#include <p24fj64gb002.h>


/** �֐��v���g�^�C�s���O **/
void I2CStart(void);
void I2CStop(void);
void I2COut(unsigned char data);
unsigned char I2CRcv(unsigned char Ack);
void IdleI2C1(void);
