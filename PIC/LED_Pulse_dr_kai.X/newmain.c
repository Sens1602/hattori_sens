/* 
 ?????LED??????
 */

#include "p18f2553.h"
#include "stdio.h"
#include "stdlib.h"
#include "timers.h"

/*
 *??????????
 */
#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 3               //?????12MHz
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
#pragma config PBADEN = ON       //???B???????????
//#pragma config ICPRT = OFF              //?

/** ????????? ************/
#pragma udata
unsigned char i;

int err;//I2C??????????
char outbuf[30];//
int ave[10];//ADC???
unsigned long counter;
unsigned long counter2;
int b;
char temp;
unsigned char USBRxNum;//USB??????????
unsigned char dummy[2] = {'\0', '\0'};
int flag = 0, start = 0;

/**???????????? *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void Calc();

/*** ?????????***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/****????????***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        
        if(INTCONbits.TMR0IF){ //???????Timer1??????
            
            INTCONbits.TMR0IF = 0; //?????? 
            WriteTimer0(50700);//??????
            LATAbits.LATA0 ^= 1;
            LATAbits.LATA1 ^= 1;
               
        }
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

int main(int argc, char** argv) {
    
    counter2 = 0;
    //??????
    while(counter2 < 1000){
        //Nop();
        counter2++;
    }
     ADCON1 = 0xFF;//???????
  	TRISA = 0b00000000;				//RA ???????LED?
    TRISB = 0b00110000;				//
	TRISC = 0b00000000;				//
    
    PORTA = 0b00000000;//???
    PORTB = 0b00000000;//???
    
    LATAbits.LATA0 = 1;
    LATAbits.LATA1 = 0;
     

    //?????
    //18F2553?1??4????
    //1????:1/(48MHz/4) ? 0.166//??????1:2
    //5ms(200Hz)??????5000/0.1666 = 30000?????????)
    //65536 - 30000 ? 35536
    
    T0CON = 0b10000000;//???0,8???,??????1:2
    WriteTimer0(50536);//??????
    INTCONbits.GIE = 1;//????????
    INTCONbits.TMR0IE = 1;//TMR0??????
    
    while(1){  		
    }
}

