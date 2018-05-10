/*********************************************************************
 *  VS1011E�p�w�b�_�t�@�C��
 *	
********************************************************************/
#include "GenericTypeDefs.h"
/** Delay�֐��p�N���b�N���g����`�@**/
#define CLOCK 32	 	// MHz 
/** �|�[�g�̒�`�@*/
#define MP3_DREQ_TRIS		(TRISAbits.TRISA10)	// Data Request
#define MP3_DREQ_IO 		(PORTAbits.RA10)		
#define MP3_XRESET_TRIS		(TRISBbits.TRISB13)	// Reset, active low
#define MP3_XRESET_IO		(LATBbits.LATB13)
#define MP3_XDCS_TRIS		(TRISAbits.TRISA7)	// Data Chip Select
#define MP3_XDCS_IO			(LATAbits.LATA7)
#define MP3_XCS_TRIS		(TRISBbits.TRISB14)	// Control Chip Select
#define MP3_XCS_IO			(LATBbits.LATB14)
/*  SPI��SPI2���g�p�@*/
#define MP3_SCK_TRIS		(TRISBbits.TRISB15)
#define MP3_SDI_TRIS		(TRISAbits.TRISA1)
#define MP3_SDO_TRIS		(TRISAbits.TRISA0)
#define MP3_SPI_IF			(IFS0bits.SPI1IF)
#define MP3_SSPBUF			(SPI1BUF)
#define MP3_SPICON1			(SPI1CON1)
#define MP3_SPICON1bits		(SPI1CON1bits)
#define MP3_SPICON2			(SPI1CON2)
#define MP3_SPISTAT			(SPI1STAT)
#define MP3_SPISTATbits		(SPI1STATbits)
/* �֐��v���g�^�C�s���O�@*/
BYTE WriteSPI(BYTE output);
void Command(BYTE RegAdrs, BYTE UpData, BYTE LowData);
void SendData(BYTE Data);
void delay_us(int usec);
void delay_ms(int msec);
void VS1011_Init(void);
void VS1011_SineTest(void);
void SetVolume(BYTE right, BYTE left);
void SetBassBoost(BYTE bass, BYTE gfreq);
void PlayEnd(void);

