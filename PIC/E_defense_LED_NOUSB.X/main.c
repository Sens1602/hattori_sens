/********************************************************************
 * miniPSD wireless version
********************************************************************/

#include "p18f2553.h"
#include "i2c.h"
#include "stdio.h"
#include "stdlib.h"
#include "timers.h"
#include "adc.h"

/**configration***********************/
//pragma?http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C?http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
//Probably, 4 MHz is generated from the oscillator 12 MHz by 3
//?It generates 96 MHz with PLL, it also divides by 2 to generate 48 MHz, it is used for USB clock and system clock
//datasheet:2550,TABLE 2-3:
#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 2               //8MHz
#pragma config CPUDIV = OSC1_PLL2       //2???CPU48MHz
#pragma config VREGEN = ON              //USB???????ON
#pragma config USBDIV =2                //2???USB??????
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
#pragma config PBADEN = OFF       //???B???????????
//#pragma config ICPRT = OFF              //?

/**global variable************/
#pragma udata
int i;
int led_blightness = 0;
int  blight_flag = 0;
char text[] = "kashikoma";
int err;
unsigned long counter;
char blink_flag = 1;
int init_flg = 0;


/**function prototype *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
/*** interrupt vector***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/****interrupt function***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){ 
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}
#pragma code

/****main function***/
void main(void){  
    //wait for oscillation stability
    for(i=0; i<100; i++)Nop(); 

    ADCON1 = 0b00001111;
    TRISA = 0b00000000;
    TRISB = 0b00000000;
    TRISC = 0b00000000;   
    PORTBbits.RB4 = 1;
    PORTBbits.RB5 = 1;  
    
    //CLK input
    PORTAbits.RA4 = 0;
    TRISA = 0b11111111;

    //I2C configration
    //SSPADD = ((Fosc/4) / Fscl) - 1
    OpenI2C(MASTER, SLEW_ON);   // master mode
    SSPADD = 29;                //I2C400kHz?
    
    //PWM dimming
    //256 stage 7750 Hz? 
    //config
    text[0] = WI2C(0b11001010, 0x01, 0b00001100);
    //ch1
    text[1] = WI2C(0b11001010, 0x02, 0b01000000);
    text[2] = WI2C(0b11001010, 0x03, 0b00000001);
    //ch2
    text[1] = WI2C(0b11001010, 0x04, 0b01000000);
    text[2] = WI2C(0b11001010, 0x05, 0b00000001);
    
    text[2] = WI2C(0b11001010, 0x03, 0b00000000);        
    text[2] = WI2C(0b11001010, 0x05, 0b00000000);    
    while(1){         
        
        if(init_flg == 0 && PORTAbits.RA4 == 1){
            init_flg = 1;
        }
        if(init_flg == 1 && PORTAbits.RA4 == 1){
            text[2] = WI2C(0b11001010, 0x05, 50);
            text[2] = WI2C(0b11001010, 0x03, 0);  
        }else if(init_flg == 1 && PORTAbits.RA4 ==0){
            text[2] = WI2C(0b11001010, 0x05, 0);
            text[2] = WI2C(0b11001010, 0x03, 50);     
        }
        
        if(PORTAbits.RA4 == 1){
            PORTBbits.RB4 = 0;
            PORTBbits.RB5 = 1;  
        }else{
            PORTBbits.RB4 = 1;
            PORTBbits.RB5 = 0;
        }
    }
}
//I2C??????????
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
   // if ( PIR2bits.BCLIF )return ( 1 );        // ??????? 
// ---------------- ???????? -----------------------------
    if(WriteI2C(control))return(2);           // ??????? 
    IdleI2C();                                 // ??????
    if (SSPCON2bits.ACKSTAT )return(3);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(address))return(4);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(5);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ???????? --------------------------
    if(WriteI2C(data))return(8);              // ????????
    IdleI2C();                                 // ??????  
    if ( SSPCON2bits.ACKSTAT)return(9);       // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
   // if ( PIR2bits.BCLIF )return ( 0 );       // ?????? 
    return (0); 
    
}

//I2C??????????
unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
   // if ( PIR2bits.BCLIF )return ( 8 );        // ??????? 
        
// ---------------- ???????? -----------------------------
    if(WriteI2C(control))return(33);           // ??????? 
    IdleI2C();                                 // ??????
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(address))return(35);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Restart?? -----------------------
    RestartI2C();                              // restart ????????????????????????
    //if ( PIR2bits.BCLIF )return (37);        // ??????? 
// ---------------- ??????Read Mode?? -----------------------------
    if(WriteI2C(control+1))return(38);         // ??????? 
    IdleI2C();// ??????
    if ( SSPCON2bits.ACKSTAT )return(39);     // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ?????? -----------------------------
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    NotAckI2C();                               // ACK?????Not ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
    //if ( PIR2bits.BCLIF )return (40);       // ?????? 
    PIR1bits.SSPIF = 0;                    // SSPIF???
    return ( (unsigned int) SSPBUF );      // ????
}