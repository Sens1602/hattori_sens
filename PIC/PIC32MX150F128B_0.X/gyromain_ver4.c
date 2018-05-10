// FOR PIC32MX150F128B
// 2013/11/21
// ver.3
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

// FOR MICRO SD CARD (SPI)
// The following are written partly also in "SD-SPI.h"
// SD INSERT (9) <-> RB2 (SD CD) (pin6)
// CMD/DI    (3) <-> RB5 (OUT)   (pin14)
// CD/DAT3   (2) <-> RB6 (SD CS) (pin15)
// DAT0      (7) <-> RB13 (IN)   (pin24)
// CLK/SCLK  (5) <-> RB15 (CLK)  (pin26)
#include "FSIO.h"
//#define SDC_CS      LATBbits.LATB6
#define	SDC_INS	    PORTBbits.RB2
static unsigned char SDC_MODE = 0;

// FOR SDC DATA/INDEX FILE
FSFILE *fp;
#define INDEX       "INDEX.TXT"
#define MAXBUFF     128
#define SIG_MIN     1
static unsigned char number = 0;
static unsigned char fnum[8];
static unsigned int  wbuff[MAXBUFF];

// FOR GYRO SPI
// Tclk      (12) <-> RB14 (SCK1) (pin25)
// Tdata     (13) <-> RA1  (SDI1) (pin3)
// Tsync     (14) <-> RA0  (SS1)  (pin2)
// Msync     (15) <-> RB9         (pin18)
#define MSYNC   PORTBbits.RB9
#define SIG50HZ PORTBbits.RB10
#define TRIG    LATBbits.LATB11
#define G_POWER LATBbits.LATB12
static unsigned int bcounter = 0;
static unsigned int scounter = 0;
static unsigned int rData = 0;
static unsigned char stoggle = 0;
static unsigned char sig_old = 0;
static unsigned int save_flag = 0;
static unsigned int wcounter = 0;
// FOR RS-232C
void InitUART(void);
void delay_us(unsigned int usec);
void delay_ms(unsigned int msec);

int main(void) {
    // SYSTEM INITIALIZE
    SYSTEMConfigPerformance(48000000);
    mJTAGPortEnable(DEBUG_JTAGPORT_OFF);

    // PORTA: ALL DIGITAL
    // AD1PCFG = 0xFFFE;

    // PORTA INPUT: RA0 (pin2)  (SS1 (TSYNC))
    // PORTA INPUT: RA1 (pin3)  (SDI1 (TDATA))
    // PORTA INPUT: RA4 (pin12) (UART1 RX (RS232C))
    TRISA = 0b0000000000010011;

    // PORTB INPUT: RB2  (pin6)  (SDC INSERT (SDCD))
    // PORTB INPUT: RB9  (pin18) (MSYNC)
    // PORTB INPUT: RB10 (pin21) (SIGNAL_50HZ)
    // PORTB INPUT: RB13 (pin24) (SDC DAT0 (SDI))
    // PORTB INPUT: RB14 (pin25) (SDC SCK1 (TCLK))
    TRISB = 0b0110011000000100;

    // DEFINE ANSEL (All DIGITAL)
    ANSELA = 0;
    ANSELB = 0;

    // PULL UP: CNPUB2 (pin6)   (SDC INSERT (CDI))
    // PULL UP: CNPUB7 (pin16)  (SPI OUT)
    // PULL UP: CNPUB8 (pin17)  (SPI CLK)
    // PULL UP: CNPUB13 (pin24) (SPI IN)
    CNPUB = 0b0010000110000100;

    // SPI1
    //SPI IN:   RA1 (pin3)
    SDI1R  = 0b0000;
    // SPI CLK: RB14 (pin25)
    // SPI OUT: NOT USE
    // SPI SS1: RA0 (pin2)
    SS1R = 0b0000;

    // SPI2
    // SPI IN:  RB13 (pin24)
    SDI2R  = 0b0011;
    // SPI CLK: RB15 (pin26)
    // SPI OUT: RB5 (pin14)
    RPB5R  = 0b0100;

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
    // Rx1: RP13
    // Tx1: RP15
    // Rx: U1RX => RPA4
    U1RXR  = 0b0010;
    // Tx: U1TX => RPB4(RB4)
    RPB4R = 0b0001;
    // INT1:RPB9(pin18)
    INT1R = 0b0100;
    // INIT UART
    InitUART();
    delay_ms(500);
    printf("MX150F128B: RS232C INITIALIZED...\r\n");

    // INIT SIGNALS;
    G_POWER = _LOW;
    TRIG = _LOW;

    // INT1 EXTERNAL INTERRUPT CONFIG
    ConfigINT1(EXT_INT_ENABLE | RISING_EDGE_INT | EXT_INT_PRI_5);
    // INT1 sflag CLEAR
    mINT1ClearIntFlag();

    while(1){
        // RESET SDC CARD
        if(SDC_INS == _OFF){
            SDC_MODE = 0;
        //    SDC_CS = _HIGH;
        }

        // WAITING FOR SDC INSERT
        if(SDC_MODE == 0){
            if(!MDD_MediaDetect()){
                printf("SDC NOT MOUNTED...\r\n");
            } else{
                SDC_MODE = 1;
                printf("SDC MOUNTED...\r\n");
            }
            delay_ms(500);
        }

        // INITIALIZE SDC
        if(SDC_MODE == 1){
            if(FSInit() == TRUE){
                fnum[0] = '0';
                fnum[1] = '0';
                fnum[2] = '0';
                fnum[3] = '.';
                fnum[4] = 'T';
                fnum[5] = 'X';
                fnum[6] = 'T';
                fnum[7] = '\0';
            SDC_MODE = 2;
                printf("SDC INITIALIZED...\r\n");
            } else{
                SDC_MODE = 255;
                printf("SDC INIT ERROR...\r\n");
            }
            delay_ms(500);
        }

        // FOR SETTING FILE NUMBER
        if(SDC_MODE == 2){
            G_POWER = _HIGH;
            delay_ms(500);
            if((fp = FSfopen(INDEX, "r")) == NULL){
                delay_ms(500);
            if((fp = FSfopen(INDEX, "w")) == NULL){
                    SDC_MODE = 255;
                    printf("INDEX OPEN ERROR (W)...\r\n");
            } else{
                    fnum[2] = '1';
                    number = 1;
                    FSfwrite((const void *)fnum, 3, 1, fp);
                    SDC_MODE = 3;
                    printf("INDEX NEWLY CREATED...\r\n");
                }
            } else{
                FSfread((void*)fnum, 3, 1, fp);
                FSfclose(fp);
                // ASCII TO INTEGER
                number = (fnum[0] - 48) * 100
                        + (fnum[1] - 48) * 10
                        + (fnum[2] - 48);
                if(number == 255){
                    number = 0;
                } else{
                    number++;
                }
                // INTEGER TO ASCII
                fnum[0] = number / 100 + 48;
                fnum[1] = number / 10 + 48;
                fnum[2] = number % 10 + 48;
                delay_ms(500);
                if((fp = FSfopen(INDEX, "w")) == NULL){
                    SDC_MODE = 255;
                    printf("INDEX OPEN ERROR (W)...\r\n");
                } else{
                    FSfwrite((const void*)fnum, 3, 1, fp);
                    FSfclose(fp);
                    SDC_MODE = 3;
                    printf("INDEX INCREMENTED...\r\n");
                }
            }
            delay_ms(500);
        }

        // FOR SDC DATA FILE OPEN (FAT MODE)
        if(SDC_MODE == 3){
            if((fp = FSfopen(fnum, "w")) == NULL){
                SDC_MODE = 255;
                printf("DATA OPEN ERROR (W)...\r\n");
            } else{
                SDC_MODE = 4;
                printf("DATA OPEN (W)...\r\n");
            }
            delay_ms(500);
        }

        // FOR SIGNAL 50HZ DETCTION
        if(SDC_MODE == 4){
            if(SIG50HZ == _HIGH){
                sig_old = _LOW;
                TRIG = _HIGH;
                INTEnableSystemMultiVectoredInt();
                INTEnable(INT_INT1,1);
                SDC_MODE = 5;
            }
        }
        if(SDC_MODE == 6){
            // TIMER -> OFF
             INTEnable(INT_INT1,0);
            // RESET POWER FOR GYRO
            //G_POWER = _LOW;
            FSfclose(fp);
            delay_ms(500);
            SDC_MODE = 7;
            printf("DATA CLOSED...\r\n");
        }

        if(SDC_MODE == 7){
            if(save_flag == 1){
                SDC_MODE = 2;
                save_flag = 0;
            }else{
                FSremove(fnum);
                printf("DATA REMOVED...\r\n");
                wcounter = 0;
                SDC_MODE = 3;
            }
        }

        if(SDC_MODE == 255){
            if(SDC_INS == _OFF){
                SDC_MODE = 0;
            } else{
                printf("PLEASE RESET SDC...\r\n");
            }
            delay_ms(500);
        }
    }
}

void __ISR(7, ipl5) INT1Handler(void){
    if(stoggle == 0){
        if(SIG50HZ == _HIGH){
            rData = getcSPI1();
            // old = 0b00*00000000000000000000000000000;
            rData &= 0b10011111111111111111111111111111;
        rData |= 0b00100000000000000000000000000000;
            if(sig_old == _LOW){
                sig_old = _HIGH;
                scounter++;
            }
        } else{
             rData = getcSPI1();
            // old = 0b00*00000000000000000000000000000;
            rData &= 0b10011111111111111111111111111111;
            if(sig_old == _HIGH){
                sig_old = _LOW;
                scounter++;
            }
        }
        wbuff[bcounter] = rData;
    } else{
        if(SIG50HZ == _HIGH){
            //           new = 0b0*000000000000000000000000000000
            wbuff[bcounter] |= 0b01000000000000000000000000000000;
            if(sig_old == _LOW){
                sig_old = _HIGH;
                scounter++;
            }
        } else{
            //              new = 0b0*000000000000000000000000000000
            // wbuff[bcounter] |= 0b00000000000000000000000000000000;
            if(sig_old == _HIGH){
                sig_old = _LOW;
                scounter++;
            }
        }
        bcounter++;
        if(bcounter == MAXBUFF){
            FSfwrite((const void*)wbuff, 512, 1, fp);
            printf(" WRITTEN\r\n");
            if(save_flag == 0){
                wcounter++;
            }
            if(wcounter == 3){
                save_flag = 1;
                wcounter = 0;
            }
            if(scounter < SIG_MIN){
                SDC_MODE = 6;
                TRIG = _LOW;
            }
            bcounter = 0;
            scounter = 0;
        }
    }
    stoggle ^= 1;
    //INT1 CLEAR
    mINT1ClearIntFlag();
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