// FOR PIC24FJ64GA004
// PIC DISVREG  (pin6)  <-> GND
// PIC VCAP     (pin7)  <-> 10uF
// PIC AVSS     (pin16) <-> AGND????????????????
// PIC AVDD     (pin17) <-> AVDD (3.3V)????????????
// PIC MCLR     (pin18) <-> RESET SW
// PIC VDD      (pin28) <-> 3.3V
// PIC VSS      (pin29) <-> GND
// PIC OSCI     (pin30) <-> CERALOCK (8MHz)
// PIC OSCO     (pin31) <-> CERALOCK (8MHz)
// PIC VSS1     (pin39) <-> GND
// PIC VDD1     (pin40) <-> 3.3V
#include "p24FJ64GA002.h"
#define CLOCK   32  // MHz
#define FCY     16  // (1/2)CLOCK MHz
_CONFIG1(JTAGEN_OFF & GCP_OFF & GWRP_OFF & BKBUG_OFF
    & COE_OFF & ICS_PGx1 & FWDTEN_OFF )
_CONFIG2(IESO_OFF & FNOSC_PRIPLL & FCKSM_CSDCMD
    & OSCIOFNC_OFF & IOL1WAY_OFF & I2C1SEL_PRI & POSCMOD_HS)


// FOR LOGIC DEFINITION
#define OFF     1   // FOR PUSH BUTTON & LED
#define ON      0
#define UP      1   // FOR FLAG
#define DOWN    0
#define HIGH    1   // FOR SPI DATA TRANSFER
#define LOW     0


// FOR RS232C ADM3202 (UART)
// RB14 (pin14) <-> UART1 TX (10) //??
// RB15 (pin15) <-> UART1 RX (12) //?? PIC????
#include <stdio.h>
#include <ctype.h> //???????????

//static void delay_us();
//static void delay_ms();



int main(void){

    DLKDIV = 0;
    AD1PCFG = 0xFFFF;
    RPINR18bits.U1RXR = 5;
    RPOR2bits.RP4R = 3;
    U1BRG = 103;
    U1MODE = 0b1000100000000000;
    U1STA = 0b0000010000000000;

    while(){
        printf("\r\nPassword = ");
        while(!U1STAbits.URXDA);

        cmnd = getchar();
        putchar(cmnd);

        if(cmnd == 'a')
            printf("\r\nRS232-C is OK");
        else
            printf("???");
        
    }
   
}

void delay_us(int usec){
    usec = (int)(FCY * usec) / 10;
    while(usec)   {
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        asm("NOP");
        usec--;
    }
}

void delay_ms(int msec){
    int i;
    for(i=0; i<msec; i++){
        delay_us(1000);
    }
}
