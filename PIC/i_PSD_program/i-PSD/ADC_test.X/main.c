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
#include <time.h>
#include <ctype.h> //???????????
static char ch;

#define CH0 0
#define CH1 1
#define CH2 2
#define CH3 3
#define CH4 4
#define CH5 5
#define CH6 6
#define CH7 7

//MCP3208
#define CS LATBbits.LATB9
#define Din LATCbits.LATC6
#define Dout PORTCbits.RC7
#define SCLK LATCbits.LATC8

#define PULSE LATAbits.LATA4


int main(void){


    printf("\r\nADC START!!\r\n");

    while(1){//main loop
        //printf("in loop");
    }


}

