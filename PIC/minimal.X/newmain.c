/********************************************************************
 * miniPSD wireless version
********************************************************************/

#include "p18f2553.h"
#include "timers.h"

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
#pragma config PBADEN = ON       //???B???????????
//#pragma config ICPRT = OFF              //?

/**global variable************/
/**function prototype *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();


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
    if(INTCONbits.TMR0IF){  
        INTCONbits.TMR0IF = 0; 
        WriteTimer0(35416);
        PORTBbits.RB5 ^= 1;
        }      
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

/****main function***/
void main(void){  
    PORTBbits.RB5 = 0;

    TRISA = 0b11111111;
    TRISB = 0b00011100;
    TRISC = 0b00000000;
 
    //timer configration
    //18F2553?1??4????
    //1????:1/(48MHz/4) = 0.166)
    //5ms(200Hz)??????5000/0.1666 = 30120?????????)
    //65536 - 30120 ? 35416
    T0CON = 0b10000100;//???0,8???,??????1:2
    WriteTimer0(35416);//??????
    INTCONbits.GIE = 1;//????????
    INTCONbits.TMR0IE = 1;//TMR0??????
        
    while(1){  
    }
}