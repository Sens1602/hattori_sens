/* 
 ?????LED??????
 */

#include "p18f2553.h"
#include "stdio.h"
#include "stdlib.h"
#include "timers.h"
#include "delays.h"
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
int counter2;
int ht, lt, i;
/**???????????? *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void Delay_s(int tm);
void Delay_ms(int tm);
void Delay_us(int tm);

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
    ht =0;
    lt = 0;
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
    INTCONbits.GIE = 0;//????????
    INTCONbits.TMR0IE = 0;//TMR0??????
    
    while(1){  		
        LATAbits.LATA0 = 1;
        LATAbits.LATA1 = 0;            
        Delay_ms(1);
        LATAbits.LATA0 = 0;
        LATAbits.LATA1 = 1;            
        Delay_ms(4);           
        
    }
}

void Delay_s(int tm){
    for(i=0; i<tm; i++){
        //1s
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(80);
    }
}

void Delay_ms(int tm){
    for(i=0; i<tm; i++){
        //1ms
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);  
        Delay10TCYx(100);  
    }    
}

void Delay_us(int tm){
    int tmus = tm / 3;
    for(i=0; i<tmus; i++){
        //1us
        Delay1TCY();
        Delay1TCY();
        Delay1TCY();
        Delay1TCY();
        Delay1TCY();
        Delay1TCY(); 
        Delay1TCY(); 
    }    
}

