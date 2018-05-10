/*********************************************************************
*PIC32MX150F128B
*GYRO INTERFACE ver.0
*2014/10/07
*********************************************************************/
#include <plib.h>
#include <stdio.h>
int Clock = 48000000 ; // Hz

// FOR CONFIG 48MHz HS + PLL
// PERIPHERAL MODULE CONFIG
#pragma config PMDL1WAY  = OFF
// PERIPHERAL PIN SELECT
#pragma config IOL1WAY   = OFF
// USB UID SELECTION
#pragma config FUSBIDIO  = OFF
// USB VBUS ON SELECTION
#pragma config FVBUSONIO = OFF
// PLL DEVIDER CONFIG
#pragma config FPLLIDIV  = DIV_4
// PLL MULTIPLIER
#pragma config FPLLMUL   = MUL_24
// SYSTEM PLL OUTPUT CLK DEVIDER
#pragma config FPLLODIV  = DIV_1
// OSCILLATOR SELECTION
#pragma config FNOSC     = PRIPLL
// SECONDARY OSCILLATOR
#pragma config FSOSCEN   = OFF
// INTERNAL/EXTERNAL SWITCH OVER
#pragma config IESO      = OFF
// PRIMERY OSCILLATOR CONFIG
#pragma config POSCMOD   = HS
// CLK0 OUTPUT SIGNAL ACTIVE ON THE OSCO
#pragma config OSCIOFNC  = OFF
// PERIPHERAL CLK DEVIDOR
#pragma config FPBDIV    = DIV_1
// CLK SWITHCHING AND MONITOR SELECTION
#pragma config FCKSM     = CSDCMD
// WATCHDOG TIMER POSTSCALER
#pragma config WDTPS     = PS1
// WATCHDOG TIMER WINDOW
#pragma config WINDIS    = OFF
// WATCHDOG TIMER
#pragma config FWDTEN    = OFF
// WATCHDOG TIMER WINDOW SIZE
#pragma config FWDTWINSZ = WINSZ_50
// BACKGROUND DEBUGGER
#pragma config DEBUG     = OFF
// JTAG SELECTION
#pragma config JTAGEN    = OFF
// ICE/ICD COMM CHANNEL SELECT
#pragma config ICESEL    = ICS_PGx2
// PROGRAM FLASH WRITE PROTECT
#pragma config PWP       = OFF
// BOOT FLASH WRITE PROTECT
#pragma config BWP       = OFF
// CODE PROTECT
#pragma config CP        = OFF

// FOR LOGIC DEFINITION
// FOR PUSH BUTTON & LED
#define _OFF    1
#define _ON     0
// FOR FLAGS
#define _UP     1
#define _DOWN   0
// FOR SPI DATA TRANSFER
#define _HIGH   1
#define _LOW    0
#define TRIG    LATBbits.LATB11
// FOR GYRO ANGLE
unsigned int rData = 0;
unsigned char buff[4];

//FOR COMMUNICATION
unsigned char a;
unsigned char cnt;

// FOR RS232C
void InitUART(void);
void delay_us(unsigned int usec);
void delay_ms(unsigned int msec);

int main(void){
    // SYSTEM INITIALIZE
    SYSTEMConfigPerformance(48000000);
    mJTAGPortEnable(DEBUG_JTAGPORT_OFF);

    // PORTA: ALL DIGITAL
    // AD1PCFG = 0xFFFE;

    // PORTA INPUT: RA0 (pin2)  (SS1 (TSYNC))
    // PORTA INPUT: RA1 (pin3)  (SDI1 (TDATA))
    // PORTA INPUT: RA4 (pin12) (UART1 RX (RS232C))
    TRISA = 0b0000000000010011;

    // PORTB INPUT: RB10 (pin21) (SIGNAL_1kHZ)
    // PORTB INPUT: RB14 (pin25) (SCK1 (TCLK))
    TRISB = 0b0100010000000000;

    // DEFINE ANSEL (All DIGITAL)
    ANSELA = 0;
    ANSELB = 0;
    // PULL UP NONE
    CNPUB = 0b0000000000000000;

    // SPI1
    //SPI IN:   RA1 (pin3)
    SDI1R  = 0b0000;
    // SPI CLK: RB14 (pin25)
    // SPI OUT: NOT USE
    // SPI SS1: RA0 (pin2)
    SS1R = 0b0000;

    //SPI1CONFIG
    // RESET SPI1
    SPI1CON = 0;
    // RESET AUDIO SETTINGS
    SPI1CON2 = 0;
    // RECEIVE BUFFER CLEAR
    rData=SPI1BUF;
    // SLAVE MODE, SPI ON, CKP=1, 32 BITS PER FRAME
    SPI1CON =0b11111101100000101001110010000011;
    SPI1CON2 =0b00000000000000000000001100001000;

    // FOR UART1
    // Rx: U1RX => RPA4 (pin12)
    U1RXR  = 0b0010;
    // Tx: U1TX => RPB4 (pin11)
    RPB4R = 0b0001;
    // INT1:RPB10(pin21)
    INT1R = 0b0011;
    // INIT UART
    InitUART();
    delay_ms(50);
    //printf("MX150F128B: RS232C INITIALIZED...\r\n");
    TRIG = _LOW;
    while(a != 120){
        while(!U1STAbits.URXDA);
        a = U1RXREG;
    }
    for(cnt = 0 ; cnt < 8 ; cnt++){
         U1TXREG = 100;
         while(!U1STAbits.TRMT);
    }
    // INT1 EXTERNAL INTERRUPT CONFIG
    ConfigINT1(EXT_INT_ENABLE | RISING_EDGE_INT | EXT_INT_PRI_5);
    // INT1 sflag CLEAR
    mINT1ClearIntFlag();
    INTEnableSystemMultiVectoredInt();
    while(1);
}

/****************************************************
* external interrupt
****************************************************/
void __ISR(7, ipl5) INT1Handler(void){
    TRIG = _HIGH;
    rData = getcSPI1();
    buff[0] = rData;
    rData = rData >> 8;
    buff[1] = rData;
    rData = rData >> 8;
    buff[2] = rData;
    rData = rData >> 8;
    buff[3] = rData;
    // GYRODATA UART OUTPUT
    U1TXREG = buff[3];
    while(!U1STAbits.TRMT);
    U1TXREG = buff[2];
    while(!U1STAbits.TRMT);
    U1TXREG = buff[1];
    while(!U1STAbits.TRMT);
    U1TXREG = buff[0];
    while(!U1STAbits.TRMT);
    mINT1ClearIntFlag();
    TRIG = _LOW;
}

void InitUART(void) {
    // DEFINE UxMODE: UARTx MODE REGISTER
    U1MODEbits.ON     = 0;
    U1MODEbits.SIDL   = 0;
    U1MODEbits.IREN   = 0;
    U1MODEbits.RTSMD  = 0;
    U1MODEbits.UEN0   = 0;
    U1MODEbits.UEN1   = 0;
    U1MODEbits.WAKE   = 0;
    U1MODEbits.LPBACK = 0;
    U1MODEbits.ABAUD  = 0;
    U1MODEbits.RXINV  = 0;
    U1MODEbits.BRGH   = 1;
    U1MODEbits.PDSEL1 = 0;
    U1MODEbits.PDSEL0 = 0;
    U1MODEbits.STSEL  = 0;

    // DEFINE U1BRG
    U1BRG = 103;

    // DEFINE UxSTA: UARTx STATUS AND CONTROL REGISTER
    U1STAbits.ADM_EN   = 0;
    U1STAbits.UTXISEL1 = 0;
    U1STAbits.UTXISEL0 = 0;
    U1STAbits.UTXINV   = 0;
    U1STAbits.URXEN    = 0;
    U1STAbits.UTXBRK   = 0;
    U1STAbits.UTXEN    = 0;
    U1STAbits.URXISEL0 = 0;
    U1STAbits.URXISEL1 = 0;
    U1STAbits.ADDEN    = 0;
    U1STAbits.OERR     = 0;

    // START UART
    U1MODEbits.ON      = 1;
    U1STAbits.UTXEN    = 1;
    U1STAbits.URXEN    = 1;

}

void delay_us(unsigned int usec) {
    int i;
    i = (int)(Clock/20000000)*usec;
    do{
        asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");
        asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");
        i--;
    } while(i != 0);
}

void delay_ms(unsigned int msec){
    unsigned int i;
    for(i=0; i<msec; i++){
        delay_us(1000);
    }
}

void _mon_putc (char c){
    while (U1STAbits.UTXBF);
    U1TXREG = c;
}




