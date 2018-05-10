/* 
 * 2016???????PSD4?????????
 * File:   newmain.c
 * Author: aromagedon
 *
 * Created on 2016/10/17, 15:25
 */

#include <stdio.h>
#include <stdlib.h>
#include <p24FJ64GC006.h>
#include <adc.h>
#include <uart.h>
#include <timer.h>
#define CLOCK   32  // MHz
#define FCY     16  // (1/2)CLOCK MHz

_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & ICS_PGx1)
_CONFIG2(IESO_OFF & FNOSC_PRIPLL & FCKSM_CSDCMD
    & IOL1WAY_OFF)

//4 terminal voltage
    double v1, v2, v3, v4;

int main(int argc, char** argv) {

    // MAIN CLOCK: 32MHz
    CLKDIV = 0;
   //AD1PCFG=0xFFFF;
   // TRISA = 0b0000000100010011;
    TRISB = 0b1011000010001100;
    TRISC = 0b0000000010000110;
    RPINR18bits.U1RXR = 15;
    RPOR7bits.RP14R = 3;
    
    U1BRG = 8;  //UARTch1??????9600? ?????
    U1MODE = 0b1000100000000000; //UART?????? 15bit????
    U1STA  = 0b0000010000000000; 
    
    //timer config
    T3CON = 0xC35;   
    WriteTimer3(0000);
    
    printf("\r\nRS232C->OK...\r\n");
    printf("\r\nADC START!!\r\n");
    
    return (EXIT_SUCCESS);
}

/*********** timer3 interrupt ***********/
void __attribute__((interrupt, no_auto_psv)) _T3Interrupt(void){
    IFS0bits.T3IF = 0;// flag clear
    
    
    //printf();
}


