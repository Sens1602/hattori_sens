/********************************************************************
 USB-CDC�ʐM
 i-PSD�@��
 MPU-9250
********************************************************************/
/**�w�b�_�t�@�C��*************/
#include "./USB/usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "USB/usb_device.h"
#include "USB/usb.h"
#include "HardwareProfile.h"
#include "p18f2553.h"
#include "i2c.h"
#include "stdio.h"
#include "stdlib.h"
#include "timers.h"
#include "adc.h"

//#define Nop()    _asm nop _endasm

/**�R���t�B�O���[�V����***********************/
/*18Fpic18f14k50
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PW RTEN = ON, BOREN = OFF, MCLRE = ON
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF
*/
//pragma�Q�l�@http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C�Q�l�@http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
//�i�����炭�j�U���q12MHz����3������4MHz�𐶐���PLL��96MHz�𐶐����Ă܂�2��������48MHz�𐶐��AUSB�N���b�N�ƃV�X�e���N���b�N�Ɏg�p�A�Ƃ����\���F�f�[�^�V�[�g2550,TABLE 2-3:
#pragma config FOSC = HSPLL_HS    
//#pragma config PLLDIV = 2               //�Z�����b�N8MHz
#pragma config PLLDIV = 3               //�Z�����b�N12MHz
#pragma config CPUDIV = OSC1_PLL2       //2������CPU48MHz
#pragma config VREGEN = ON              //USB�p���M�����[�^ON
#pragma config USBDIV =2                //2������USB�N���b�N����
#pragma config FCMEN = OFF
#pragma config IESO = OFF
#pragma config PWRT = ON
#pragma config BOR = ON
#pragma config BORV =1
#pragma config MCLRE = ON
#pragma config WDT = OFF
#pragma config WDTPS = 32
#pragma config LVP = OFF
#pragma config XINST = OFF
#pragma config DEBUG = OFF
#pragma config PBADEN = ON       //�|�[�gB���f�t�H���g�Ńf�W�^��
//#pragma config ICPRT = OFF              //�H

/** �O���[�o���ϐ���` ************/
#pragma udata
char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
USB_HANDLE    lastTransmission;
unsigned char i;

int err;//I2C�ʐM�G���[�R�[�h��M
char outbuf[30];//
int ave[10];//ADC���ω�
unsigned long counter;
unsigned long counter2;
int b;
char temp;
unsigned char USBRxNum;//USB��M�o�C�g���J�E���^
unsigned char dummy[2] = {'\0', '\0'};
int flag = 0, start = 0;

char text[20] = "kanopero__\r\n";


/**�֐��v���g�^�C�s���O�錾 *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void Calc();


/*** ���荞�݃x�N�^��`***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/****���荞�ݏ����֐�***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        
        if(INTCONbits.TMR0IF){ //���荞�ݗv����Timer1���荞�݂Ȃ�
            
            INTCONbits.TMR0IF = 0; //�t���O�N���A 
            WriteTimer0(35536);//�^�C�}�Z�b�g
            //�f�o�C�X�ڑ��m�F
            if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
                USBDeviceAttach();// USB���荞�݋���			
            // �������s
            if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
                //if(start) //C��M�\�t�g�p
                Calc();//�f�[�^�擾�A���M
                PORTCbits.RC6 ^= 1;
            }      
        }
        
        #if defined(USB_INTERRUPT)
            USBDeviceTasks();
        #endif
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

/*********** ���C���֐� **************************/
void main(void){  

    counter2 = 0;
    //���M����҂�
    while(counter2 < 1000){
        //Nop();
        counter2++;
    }
    
    //�s���ݒ�
 	TRISA = 0b11111111;				//RA�AADC�p����
	TRISB = 0b00110000;				//
	TRISC = 0b00000000;				//

    //USB�o�b�t�@�N���A
	for (i=0; i<sizeof(USB_Out_Buf); i++){
		USB_Out_Buf[i] = 0;
    }
	lastTransmission = 0;		// �n���h���N���A
    USBDeviceInit();			// USB������
    USBDeviceAttach();			// USB���荞�݋���
    //ADC�ݒ�
�@�@//8TAD���ƃA�N�C�W�V�������Ԃ�����Ȃ�
    OpenADC(ADC_FOSC_64 & ADC_RIGHT_JUST & ADC_20_TAD, ADC_CH0
            & ADC_INT_OFF & ADC_REF_VREFPLUS_VSS, 0b00011001);
    

    /*��������    
    //I2C�ݒ�
    //SSPADD = ((Fosc/4) / Fscl) - 1
    OpenI2C(MASTER, SLEW_ON);   //�}�X�^�[���[�h
    SSPADD = 29;                //I2C400kHz?_��قǕ׋�
    err = WI2C(0b11010000, 0x24, 0x0D);//�X���[�u���N���b�N�ݒ�

    //�Z���T�������ݒ�
    //�����x�Q�W���C���X���[�v���[�h����
    err = WI2C(0b11010000, 0x6B, 0x00);   
    err = WI2C(0b11010000, 0x37, 0x02);
    //err = WI2C(0b11010000, 0x1B, 0b00010010);//1000dps
    //���C�Z���T16bitAD�ϊ����s
    err = WI2C(0b00011000, 0x0A, 0x16);//100Hz���[�h
    
     �����܂�*/
        
    //�^�C�}�ݒ�
    //18F2553��1����4�N���b�N
    //1���ߎ���:1/(48MHz/4) �� 0.166//�v���X�P�[��1:2
    //5ms(200Hz)�ق����̂ŁA5000/0.1666 = 30000�c�~�����J�E���g��)
    //65536 - 30000 �� 35536
    
    T0CON = 0b10000111;//�^�C�}0,8�r�b�g,�v���X�P�[��1:2
    WriteTimer0(35536);//�^�C�}�Z�b�g
    INTCONbits.GIE = 1;//���荞�݋@�\�L��
    INTCONbits.TMR0IE = 1;//TMR0���荞�݋���

    while(1){  
        USBDeviceAttach();// USB���荞�݋���
        /*
        if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)) {
            if(getsUSBUSART(dummy, 1)){
               if(dummy[0] == '0') start = 0; 
               if(dummy[0] == '1') start = 1; 
            }
        }
         */ 
    }
}

//I2C�ʐM�X���[�u��������
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // �A�C�h���m�F
    StartI2C();                                // start �o�́E�I���҂�
   // if ( PIR2bits.BCLIF )return ( 1 );        // �o�X�Փ˔����� 
// ---------------- �R���g���[���o�� -----------------------------
    if(WriteI2C(control))return(2);           // �o�X�Փ˔����� 
    IdleI2C();                                 // �A�C�h���m�F
    if (SSPCON2bits.ACKSTAT )return(3);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- MPU9250�A�h���X�o�� ------------------------
    if(WriteI2C(address))return(4);      // �o�X�Փˎ� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(5);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- �����݃f�[�^�o�� --------------------------
    if(WriteI2C(data))return(8);              // �����݃f�[�^�o��
    IdleI2C();                                 // �A�C�h���m�F  
    if ( SSPCON2bits.ACKSTAT)return(9);       // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Stop condition�o�� --------------------------
    StopI2C();                                 // �o�́E�I���҂�
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
   // if ( PIR2bits.BCLIF )return ( 0 );       // �o�X�Փ˔��� 
    return (0); 
    
}

//I2C�ʐM�X���[�u�ǂݎ��
unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // �A�C�h���m�F
    StartI2C();                                // start �o�́E�I���҂�
   // if ( PIR2bits.BCLIF )return ( 8 );        // �o�X�Փ˔����� 
        
// ---------------- �R���g���[���o�� -----------------------------
    if(WriteI2C(control))return(33);           // �o�X�Փ˔����� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- MPU9250�A�h���X�o�� ------------------------
    if(WriteI2C(address))return(35);      // �o�X�Փˎ� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Restart�o�� -----------------------
    RestartI2C();                              // restart �o�́E�I���҂�
    //if ( PIR2bits.BCLIF )return (37);        // �o�X�Փ˔����� 
// ---------------- �R���g���[��Read Mode�o�� -----------------------------
    if(WriteI2C(control+1))return(38);         // �o�X�Փ˔����� 
    IdleI2C();// �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(39);     // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- �P�o�C�g��M -----------------------------
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    NotAckI2C();                               // ACK�ԐM�Ȃ��iNot ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Stop condition�o�� --------------------------
    StopI2C();                                 // �o�́E�I���҂�
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    //if ( PIR2bits.BCLIF )return (40);       // �o�X�Փ˔��� 
    PIR1bits.SSPIF = 0;                    // SSPIF�N���A
    return ( (unsigned int) SSPBUF );      // ����I��
}

//�f�[�^�擾
void Calc(){
/*    
    //�����m�F�p
  //  PORTCbits.RC6 ^= 1;

//----------------�����x,�W���C��-----------------
    IdleI2C();                                 // �A�C�h���m�F
    StartI2C();                                // start �o�́E�I���҂�
    //if ( PIR2bits.BCLIF )return ( 8 );       // �o�X�Փ˔����� 
        
// ---------------- �R���g���[���o�� -----------------------------
    if(WriteI2C(0b11010000))return(33);        // �o�X�Փ˔����� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- MPU9250�A�h���X�o�� ------------------------
    if(WriteI2C(0x3B))return(35);      // �o�X�Փˎ� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Restart�o�� -----------------------
    RestartI2C();                              // restart �o�́E�I���҂�
    //if ( PIR2bits.BCLIF )return (37);        // �o�X�Փ˔����� 
// ---------------- �R���g���[��Read Mode�o�� -----------------------------
    if(WriteI2C(0b11010001))return(38);        // �o�X�Փ˔����� 
    IdleI2C();// �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(39);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- �f�[�^��M -----------------------------
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[0] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[1] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
         
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[2] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
        
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[3] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
        
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[4] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[5] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
    //���x�f�[�^�������o���Ă����Ȃ��ƃW���C��H�ɉ��x�f�[�^�̂��݂����H
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[28] = (unsigned int)  SSPBUF;
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[29] = (unsigned int)  SSPBUF;
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    
    
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[6] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
   
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[7] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[8] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[9] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[10] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    outbuf[11] = (unsigned int)  SSPBUF;       //�f�[�^���o��
    NotAckI2C();                               // ACK�ԐM�Ȃ��iNot ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
           
// ---------------- Stop condition�o�� --------------------------
    StopI2C();                                 // �o�́E�I���҂�
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    
//---------------�R���p�X-------------------
//1�o�C�g�擾����S--T2���W�X�^�ŃI�[�o�[�t���[�m�F���K�{  
    
    outbuf[13]= RI2C(0b00011000, 0x03);
    err = RI2C(0b00011000, 0x09);           //ST2
    outbuf[12]= RI2C(0b00011000, 0x04);
    err = RI2C(0b00011000, 0x09);           //ST2
    outbuf[15]= RI2C(0b00011000, 0x05);
    err = RI2C(0b00011000, 0x09);           //ST2
    outbuf[14]= RI2C(0b00011000, 0x06);
    err = RI2C(0b00011000, 0x09);           //ST2
    outbuf[17]= RI2C(0b00011000, 0x07);
    err = RI2C(0b00011000, 0x09);           //ST2
    outbuf[16]= RI2C(0b00011000, 0x08);
    err = RI2C(0b00011000, 0x09);           //ST2
    
 
*/
//--------------PSD������AD�ϊ�----------------
    SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] =  ADRESH;//���8�r�b�g
    ave[1] = ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] = ADRESH;//���8�r�b�g
    ave[3] = ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] = ADRESH;//���8�r�b�g
    ave[5] = ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] = ADRESH;//���8�r�b�g
    ave[7] = ADRESL;//����8�r�b�g
    
    
    
        SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
            SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
            SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
            SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
        SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] =  ADRESH;//���8�r�b�g
    ave[1] = ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] = ADRESH;//���8�r�b�g
    ave[3] = ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] = ADRESH;//���8�r�b�g
    ave[5] = ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] = ADRESH;//���8�r�b�g
    ave[7] = ADRESL;//����8�r�b�g
    
    
    
        SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
            SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
            SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
            SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    ave[0] +=  ADRESH;//���8�r�b�g
    ave[1] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    ave[2] += ADRESH;//���8�r�b�g
    ave[3] += ADRESL;//����8�r�b�g

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    ave[4] += ADRESH;//���8�r�b�g
    ave[5] += ADRESL;//����8�r�b�g
    
    SetChanADC(ADC_CH4);
    ConvertADC();
    while(BusyADC()); 
    ave[6] += ADRESH;//���8�r�b�g
    ave[7] += ADRESL;//����8�r�b�g
    
    
    outbuf[18] = (char)(ave[0] / 10.0);
    outbuf[19] = (char)(ave[1] / 10.0);
    outbuf[20] = (char)(ave[2] / 10.0);
    outbuf[21] = (char)(ave[3] / 10.0);
    outbuf[22] = (char)(ave[4] / 10.0);
    outbuf[23] = (char)(ave[5] / 10.0);
    outbuf[24] = (char)(ave[6] / 10.0);
    outbuf[25] = (char)(ave[7] / 10.0);
    outbuf[26] = '\r';
    outbuf[27] = '\n';
       
    CDCTxService();
    if(USBUSARTIsTxTrfReady()){ 
        putUSBUSART(text, 10);
    }
    CDCTxService();
}

/***********************************************************
* ?????????
*
* ???:  USB_CDC_SET_LINE_CODING_HANDLER ??????????
* ?USB??USART?????????????????
************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps?????????
	}
	else{
		DWORD_VAL dwBaud;
		
		// CDC????????????
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
		// USART????????
		dwBaud.Val = (DWORD)(GetSystemClock()/4)/line_coding.dwDTERate.Val-1;
		SPBRG = dwBaud.v[0];
		SPBRGH = dwBaud.v[1];
	}
}
#endif

// ***********************************************************
// ************** USB Callback Functions *********************
// ***********************************************************

/*************************************************************
 * Function:        void USBCBSuspend(void)
 *************************************************************/
void USBCBSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*************************************************************
 * Function:        void USBCBErrorHandler(void)
 *************************************************************/
void USBCBErrorHandler(void)
{
}
/*************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}//end
/*************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*************************************************************
 * Function:        void USBCBInitEP(void)
 *************************************************************/
void USBCBInitEP(void)
{
    CDCInitEP();
}
/*************************************************************
 * Function:        void USBCBSendResume(void)
 *************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    if(USBGetRemoteWakeupStatus() == TRUE) 
    {
        //Verify that the USB bus is in fact suspended, before we send
        //remote wakeup signalling.
        if(USBIsBusSuspended() == TRUE)
        {
            USBMaskInterrupts();
            
            //Clock switch to settings consistent with normal USB operation.
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  //So we don't execute this code again, 
                                        //until a new suspend condition is detected.

            delay_count = 3600U;        
            do
            {
                delay_count--;
            }while(delay_count);
            
            //Now drive the resume K-state signalling onto the USB bus.
            USBResumeControl = 1;       // Start RESUME signaling
            delay_count = 1800U;        // Set RESUME line for 1-13 ms
            do
            {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       //Finished driving resume signalling

            USBUnmaskInterrupts();
        }
    }
}


/***************************************************************
 * Function:        void USBCBEP0DataReceived(void)
 ***************************************************************/
#if defined(ENABLE_EP0_DATA_RECEIVED_CALLBACK)
void USBCBEP0DataReceived(void)
{
}
#endif

/***************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 ***************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_TRANSFER:
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