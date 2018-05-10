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
#include "p24FJ64GA004.h"
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

int counter = 0;
int date = 0;
int buff[4];
int buff_counter = 0;
int i;
char d;
unsigned char buff_ch;//HIGH 8bits
unsigned char buff_cl;//LOW 8bits
int main(void){

    // MAIN CLOCK: 32MHz
    CLKDIV = 0;
    AD1PCFG=0xFFFF;
    // PORTA: ALL DIGITAL
    //AD1PCFG = 0b1111111111001100;
    // PORTA INPUT: RA4  (pin34) <- SD UMT SW
    // PORTA INPUT: RA8  (pin32) <- SD INS SW
    TRISA = 0b0000000100010011;//0???1?? ?????????
    // PORTB INPUT: RB15 (pin15)<RP15?> <- RS232C RX //ReceiveTra
    TRISB = 0b1011000010001100;
    // PORTC INPUT: RC5  (pin38) <- SPI DATA IN (SDI)
    TRISC = 0b0000000010000110;



    // RS232C (UART1) INITIALIZE 
    // RP15 (pin15): UART1 RX (RS232C)
    RPINR18bits.U1RXR = 15; //RP15?UARTch1????????? RPINRx????
    // RP14 (pin14): UART1 TX (RS232C)
    RPOR7bits.RP14R = 3; //RP14?UARTch1????????? RPORx???? 
    //????(3)?UARTch1???????

    U1BRG = 8;  //UARTch1??????9600? ?????
    U1MODE = 0b1000100000000000; //UART?????? 15bit????
    U1STA  = 0b0000010000000000; //UART?????? 10bit????


    printf("\r\nRS232C->OK...\r\n");


    CS = HIGH;
    SCLK = HIGH;
    Din = LOW;

    buff_ch = 0;
    buff_cl = 0;

    
    delay_ms(500);

    //output start bits for PC
    ///*int i;
    printf("\r\nADC START!!\r\n");
    /*
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    U1TXREG = 100;
    while(!U1STAbits.TRMT){
    }
    */
    while(1){//main loop

        int i;
        for(i = 0; i < 4; i++){
            buff[i] = 0;
        }

  
        //PULS_CHECK = !PULS_CHECK;
        d = 0; //CH0 0 0 0 reverse
        ad_converter();
        delay_us(3);
        d = 4;//CH1 0 0 1
        ad_converter();
        delay_us(3);
        d = 2;//CH2 0 1 0
        ad_converter();
        delay_us(3);
        d = 6;//CH3 0 1 1
        ad_converter();
        delay_us(3);
        counter = 0;

        d = 0; //CH0 0 0 0 reverse
        ad_converter();
        delay_us(3);
        d = 4;//CH1 0 0 1
        ad_converter();
        delay_us(3);
        d = 2;//CH2 0 1 0
        ad_converter();
        delay_us(3);
        d = 6;//CH3 0 1 1
        ad_converter();
        delay_us(3);
        counter = 0;

        d = 0; //CH0 0 0 0 reverse
        ad_converter();
        delay_us(3);
        d = 4;//CH1 0 0 1
        ad_converter();
        delay_us(3);
        d = 2;//CH2 0 1 0
        ad_converter();
        delay_us(3);
        d = 6;//CH3 0 1 1
        ad_converter();
        delay_us(3);
        counter = 0;
        


        d = 0; //CH0 0 0 0 reverse
        ad_converter();
        delay_us(3);
        d = 4;//CH1 0 0 1
        ad_converter();
        delay_us(3);
        d = 2;//CH2 0 1 0
        ad_converter();
        delay_us(3);
        d = 6;//CH3 0 1 1
        ad_converter();
        delay_us(3);
        counter = 0;


        for(i = 0; i < 4; i++){
            printf("%d\t", buff[i] / 4);
        }

        delay_ms(200);
        printf("\r\n");
        counter = 0;
    }

}

/*void channel_select(int channcnel){
    d[0] = channcnel % 2;
    channcnel = channcnel >> 1;
    d[1] = channcnel % 2;
    channcnel = channcnel >> 1;
    d[2] = channcnel % 2;
}*/

void ad_converter(){
       
       CS = HIGH;
       SCLK = HIGH;
       Din = LOW;
       delay();
    //START
        CS = LOW;
        SCLK = LOW;
        Din = HIGH;
        delay();
    //CLK
        SCLK = HIGH;
        delay();
    //SGL/DIFF -> SGL
        Din = HIGH;
        SCLK = LOW;
        delay();
    //CLK
        SCLK = HIGH;
        delay();
    //D2
        Din = d;
        SCLK =LOW;
        delay();
    //CLK
        SCLK =HIGH;
        delay();
    //D1
        d = d >> 1;
        Din = d;
        SCLK =LOW;
        delay();
    //CLK
        SCLK =HIGH;
        delay();
    //D0
        d = d >> 1;
        Din = d;
        SCLK =LOW;
        delay();
    //CLK
        SCLK =HIGH;
        delay();
    //CLK SAMP
        SCLK =LOW;
        delay();
    //CLK SAMP
        SCLK =HIGH;
        delay();
    //CLK SAMP
        SCLK =LOW;
        delay();
    //CLK SAMP
        SCLK = HIGH;
        delay();
        SCLK =LOW;
        delay();
    //CLK SAMP
        SCLK = HIGH;
        delay();
 
       
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_ch += Dout;//B11
        buff_ch = buff_ch << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_ch += Dout;//B10
        buff_ch = buff_ch << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_ch += Dout;//B9
        buff_ch = buff_ch << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_ch += Dout;//B8
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B7
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B6
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B5
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B4
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B3
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B2
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
       buff_cl += Dout;//B1
        buff_cl = buff_cl << 1;
        delay();
        SCLK = HIGH;
        delay();
        //CLK
        SCLK = LOW;
        buff_cl += Dout;//B0
        delay();
       
        CS = HIGH;
        delay();

        buff[counter] += (int)buff_ch * 256 + (int)buff_cl;
        counter++;
        //printf("%d\n", (int)buff_ch * 256 + (int)buff_cl);
        //printf("buff[%d] = %d\n", counter, buff[i]);
        //printf("counter = %d\r\n", counter);

        buff_ch = 0;
        buff_cl = 0;


}


void delay_375ns(){
    asm("NOP");
    asm("NOP");
    //asm("NOP");
    //asm("NOP");
}

void delay(){//500nsec
     asm("NOP");
    asm("NOP");
    asm("NOP");
    asm("NOP");
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
