/*********************************************************************
*  PIC32MX150F128B
*??????????????????
*  ????????FSTets1
*********************************************************************/
#include <plib.h>						/* PIC32 peripheral library */
#include <FSIO.h>						// ??????????????

//Define configration
/////////48MHzHS+PLL
#pragma config PMDL1WAY  = OFF    //Peripheral Module Disable Configuration:Allow multiple reconfigurations
#pragma config IOL1WAY   = OFF    //Peripheral Pin Select Configuration:Allow multiple reconfigurations
#pragma config FUSBIDIO  = OFF    //USB USID Selection:Controlled by Port Function
#pragma config FVBUSONIO = OFF    //USB VBUS ON Selection:Controlled by Port Function
//#pragma config FPLLIDIV= DIV_1  //PLL Input Divider:1x Divider (DIV_1,DIV_2,DIV_3,DIV_4,DIV_5,DIV_6,DIV_10,DIV_12)
#pragma config FPLLIDIV  = DIV_4
//#pragma config FPLLMUL = MUL_15 //PLL Multiplier:15x Multiplier(MUL_15,MUL_16,MUL_17,MUL_18,MUL_19,MUL_20,MUL_21,MUL_24)
#pragma config FPLLMUL   = MUL_24
//#pragma config FPLLODIV= DIV_1  //System PLL Output Clock Divider:PLL Divide by 1(DIV_1,DIV_2,DIV_4,DIV_8,DIV_16,DIV_32,DIV_64,DIV_256)
#pragma config FPLLODIV  = DIV_1
//#pragma config FNOSC   = FRC    //Oscillator Selection Bits:Fast RC Osc (FRC) (FRC,FRCPLL,PRI,PRIPLL,SOSC,LPRC,FRCDIV16,FRCDIV)
//#pragma config FNOSC   = FRCPLL
#pragma config FNOSC     = PRIPLL
#pragma config FSOSCEN   = OFF    //Secondary Oscillator Enable:Disabled
#pragma config IESO      = OFF    //Internal/External Switch Over:Disabled
//#pragma config POSCMOD = OFF    //Primary Oscillator Configuration:Primary osc disabled (EC,XT,HS,OFF)  ==> Used Primary Oscillator !!!
#pragma config POSCMOD   = HS     //Primary Oscillator Configuration:Primary osc disabled (EC,XT,HS,OFF)
#pragma config OSCIOFNC  = OFF    //CLKO Output Signal Active on the OSCO Pin::Disabled
#pragma config FPBDIV    = DIV_1  //Peripheral Clock Divisor:Pb_Clk is Sys_Clk/1 (DIV_1,DIV_2,DIV_4,DIV_8)
#pragma config FCKSM     = CSDCMD //Clock Switching and Monitor Selection:Clock Switch Disable, FSCM Disabled (CSECME,CSECMD,CSDCMD)
#pragma config WDTPS     = PS1    //Watchdog Timer Postscaler:1:1 (PS1,,,,PS1048576)
#pragma config WINDIS    = OFF    //Watchdog Timer Window Enable:Watchdog Timer is in Non-Window Mode
#pragma config FWDTEN    = OFF    //Watchdog Timer Enable:WDT Disabled (SWDTEN Bit Controls)
#pragma config FWDTWINSZ = WINSZ_50//Watchdog Timer Window Size:Window Size is 50% (WINSZ_75,WINSZ_50,WINSZ_37,WISZ_25)
#pragma config DEBUG     = OFF    //Background Debugger Enable:Debugger is Disabled
#pragma config JTAGEN    = OFF    //JTAG Enable:JTAG Disabled
//#pragma config ICESEL    = RESERVED//ICE/ICD Comm Channel Select:Reserved (RESERVED,ICS_PGx3,ICS_PGx2,ICS_PGx1)
#pragma config ICESEL    = ICS_PGx2
#pragma config PWP       = OFF    //Program Flash Write Protect:
#pragma config BWP       = OFF    //Boot Flash Write Protect bit:
#pragma config CP        = OFF    //Code Protect:
/////////
#define FCY     24    // (CLOCK/2) MHz
#define	LCD_CLK         FCY
// FOR LOGIC DEFINITION
#define OFF     1   // FOR PUSH BUTTON & LED
#define ONN      0
#define UP      1   // FOR FLAGS
#define DOWN    0
#define HIGH    1   // FOR SPI DATA TRANSFER
#define LOW     0

// FOR OPERATION CHECK
#define TEST_LED    LATBbits.LATB15

#define FILE_NAME   "LOG.TXT"
#define MAXBUFF     128 // BYTES
static unsigned int i = 0;
static unsigned int wbuff[MAXBUFF];
static unsigned int SDC_WRITE = 0;
int Clock = 48000000 ; // 48 MHz
unsigned char value[];
unsigned int rData = 0;
static unsigned int counter = 0;
const double lsb = 0.00004291534;
double angle = 0;
// FOR SPI CONNECTION
//#define SPI_IN  PORTBbits.RB13
//#define SPI_CLK LATBbits.RB15
//#define SPI_OUT LATBbits.RB5

// FOR MICRO SD CARD (SPI)
// The following are written partly also in "SD-SPI.h"
// DAT0      (7)  <-> RB13 (IN)    (pin24)
// CLK/SCLK  (5)  <-> RB15 (CLK)   (pin26)
// CMD/DI    (3)  <-> RB5 (OUT)   (pin14)
// CD/DAT3   (2)  <-> RB6 (SD CS) (pin15)
// SD INSERT (10) <-> RB2 (SD CD) (pin6)
// SD UMOUNT      <-> RB0         (pin4)
// SD LED         <-> RB1         (pin5)

// FOR GYRO SPI
// Tclk      (12) <-> RB14 (SCK1) (pin25)
// Tdata     (13) <-> RA1  (SDI1) (pin3)
// Tsync     (14) <-> RA0  (SS1)  (pin2)
// Msync     (15) <-> RB9         (pin18)
FSFILE *fp;
static unsigned int SDC_CD = 0;
static unsigned int SDC_CK = 0;
static unsigned int SDF_CLOSE = 0;

#define SDC_CS  LATBbits.LATB6
#define	SDC_UMT	PORTBbits.RB0
#define	SDC_INS	PORTBbits.RB2
#define	SDC_LED	LATBbits.LATB1
#define Msync   PORTBbits.RB9
#define G_POWER LATBbits.LATB12
#define TRIG    LATBbits.LATB11
// ????????????
void itostring(char digit, unsigned int data, char *buffer);
void InitUART(void);
void RecUART(unsigned char *);
void SendUART(unsigned char);
void SendUARTStr(unsigned char *);
void bitshow(unsigned int in_a , unsigned char in_b []);
void delay_us(unsigned int usec);
void delay_ms(unsigned int msec);

/******* ??????? ***********/
int main(void)
{
	// Initialize
	SYSTEMConfigPerformance(48000000);		// ???
	mJTAGPortEnable(DEBUG_JTAGPORT_OFF);	// JTAG????
	//I/O??
        // PORTA: ALL DIGITAL
        // AD1PCFG = 0xFFFE;						// ?????
	// (1)Define PortA,B
        // PORTA INPUT: RA0 (pin2) (SS1 (Tsync))
        // PORTA INPUT: RA1 (pin3) (SDI1 (Tdata))
        // PORTA INPUT: RA4 (pin12) (UART1 RX (RS232C))
           TRISA = 0b0000000000010011;

       // PORTB INPUT: RB0 (pin4) (SD CARD UNMOUNT)
       // PORTB INPUT: RB2 (pin6) (SD CARD INSERT)
       // PORTB INPUT: RB13 (pin24) (DAT0 (SDI))
       // PORTB INPUT: RB14 (pin25) (SCK1 (Tclk))
       // PORTB INPUT: RB9 (pin18) (Msync)
          TRISB = 0b0110001000000101;

       // (2)Define ANSEL (All Degital Port)
            ANSELA = 0;
            ANSELB = 0;
       // PULL UP: CNPUB0 (pin4) (SD CARD UNMOUNT)
       // PULL UP: CNPUB2 (pin6) (SDCARD INSERT (CDI))
       // PULL UP: CNPUB7 (pin16) (SPI OUT)
       // PULL UP: CNPUB8 (pin17) (SPI CLK)
       // PULL UP: CNPUB13 (pin24) (SPI IN)
          CNPUB = 0b0010000000000101;

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
       // SD LED -> OFF
           SDC_LED = OFF;
           SDC_CS = HIGH;

       //SPI1CONFIG
         //IEC0CLR=0x03800000; // disable all interrupts
          SPI1CON = 0; // Stops and resets the SPI1.
          SPI1CON2 = 0; // Reset audio settings
          rData=SPI1BUF; // clears the receive buffer
          SPI1CON =0b11111101100000101001110010000000; // Slave mode, SPI ON, CKP = 1, 32 bits per frame
          SPI1CON2 =0b00000000000000000000001100001000; //

       //Timer2 Initialize  20.83 ns*256*937 =5 ms
       // OpenTimer2(T2_ON | T2_SOURCE_INT | T2_PS_1_256, 187);     // 5 ms
       // ConfigIntTimer2(T2_INT_ON | T2_INT_PRIOR_2);
       // Assign UART1 Pin (Rx1:RP13,Tx1:RP15)
       //  Rx:U1RX==>RPA4
          U1RXR  = 0b0010;
       //  Tx:RPB4R(PORTB4)==>U1TX
           RPB4R = 0b0001;

           // INT1:RPB9(pin18)
           INT1R = 0b0100;

       //  Initialize UART
           InitUART();
           delay_ms(500);
       //  Put Message
           printf("    PIC32MX120F032B Connected OK> \r\n");
           G_POWER = HIGH;
           TRIG = HIGH;
            //?????????????????????2
           ConfigINT1(EXT_INT_ENABLE | RISING_EDGE_INT | EXT_INT_PRI_7);
                // ?????????????
	   mINT1ClearIntFlag();

    	INTEnableSystemMultiVectoredInt();
           while(1){

           }
}

/*****************************************
*   ??????????
*****************************************/
void itostring(char digit, unsigned int data, char *buffer)
{
	char i;
	buffer += digit;						// ??????
	for(i=digit; i>0; i--) {				// ?????????
		buffer--;						// ??????
		*buffer = (data % 10) + '0';		// ?????????????
		data = data / 10;					// ?-1
	}
}

/****************************************************
* external interrupt
****************************************************/
void __ISR(7, ipl7) INT1Handler(void){
    	rData = getcSPI1();
        if(counter == 100){
            rData &=0b00000000011111111111111111111111;
            angle = rData * lsb;
            printf("%f",angle);
            printf("\r\n");
            counter = 0;
        }
        counter++;
       	mINT1ClearIntFlag();
}
//******************************************************************************************
//   Function Name : InitUART
//   Title         : Initialized UART
//   Input         :
//   Output        :
//******************************************************************************************
void InitUART(void)
{
// **************************
// (1)Define UxMODE: UARTx MODE REGISTER
//        UxMODE[31-16] Unimplemented: Read as ?0?
//        UxMODE[15] ON: UARTx Enable bit(1)
//            1 = UARTx is enabled. UARTx pins are controlled by UARTx as defined by UEN<1:0> and UTXEN control bits
//            0 = UARTx is disabled. All UARTx pins are controlled by corresponding bits in the PORTx, TRISx and LATx
//                registers; UARTx power consumption is minimal
//        UxMODE[14] Unimplemented: Read as ?0?
//        UxMODE[13] SIDL: Stop in Idle Mode bit
//            1 = Discontinue operation when device enters Idle mode
//            0 = Continue operation in Idle mode
//        UxMODE[12] IREN: IrDA Encoder and Decoder Enable bit
//            1 = IrDA is enabled
//            0 = IrDA is disabled
//        UxMODE[11] RTSMD: Mode Selection for UxRTS Pin bit
//            1 = UxRTS pin is in Simplex mode
//            0 = UxRTS pin is in Flow Control mode
//        UxMODE[10] Unimplemented: Read as ?0?
//        UxMODE[9-8] UEN<1:0>: UARTx Enable bits
//            11 = UxTX, UxRX and UxBCLK pins are enabled and used; UxCTS pin is controlled by corresponding bits
//                 in the PORTx register
//            10 = UxTX, UxRX, UxCTS and UxRTS pins are enabled and used
//            01 = UxTX, UxRX and UxRTS pins are enabled and used; UxCTS pin is controlled by corresponding bits
//                 in the PORTx register
//            00 = UxTX and UxRX pins are enabled and used; UxCTS and UxRTS/UxBCLK pins are controlled by
//                 corresponding bits in the PORTx register
//        UxMODE[7] WAKE: Enable Wake-up on Start bit Detect During Sleep Mode bit
//            1 = Wake-up enabled
//            0 = Wake-up disabled
//        UxMODE[6] LPBACK: UARTx Loopback Mode Select bit
//            1 = Loopback mode is enabled
//            0 = Loopback mode is disabled
//        UxMODE[5] ABAUD: Auto-Baud Enable bit
//            1 = Enable baud rate measurement on the next character - requires reception of Sync character (0x55);
//                cleared by hardware upon completion
//            0 = Baud rate measurement disabled or completed
//        UxMODE[4] RXINV: Receive Polarity Inversion bit
//            1 = UxRX Idle state is ?0?
//            0 = UxRX Idle state is ?1?
//        UxMODE[3] BRGH: High Baud Rate Enable bit
//            1 = High-Speed mode - 4x baud clock enabled
//            0 = Standard Speed mode - 16x baud clock enabled
//        UxMODE[2-1] PDSEL<1:0>: Parity and Data Selection bits
//            11 = 9-bit data, no parity
//            10 = 8-bit data, odd parity
//            01 = 8-bit data, even parity
//            00 = 8-bit data, no parity
//        UxMODE[0] STSEL: Stop Selection bit
//            1 = 2 Stop bits
//            0 = 1 Stop bit
// **************************
//  U1MODEbits.ON     = 1;
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

// **************************
// (2)Define U1BRG
//     BAUDRATE(Register)=SYSCLK/16/BAUDRATE-1
// **************************
   // U1BRG = 259;         // BAUDRATE = 40MHz/16/9600-1 = 0d259  ?9600BPS(40MHz)
   // U1BRG = 311;         // BAUDRATE = 48MHz/16/9600-1 = 0d259  ?9600BPS(40MHz)
      U1BRG = 103;         // BAUDRATE = 48MHz/4/115200-1 = 0d103 ?115200BPS(40MHz) (BRGH = 1)
// **************************
// (3)Define UxSTA: UARTx STATUS AND CONTROL REGISTER
//        UxSTA[31-25] Unimplemented: Read as ?0?
//        UxSTA[24] ADM_EN: Automatic Address Detect Mode Enable bit
//             1 = Automatic Address Detect mode is enabled
//             0 = Automatic Address Detect mode is disabled
//        UxSTA[23-16] ADDR<7:0>: Automatic Address Mask bits
//            When the ADM_EN bit is ?1?, this value defines the address character to use for automatic address detection.
//        UxSTA[15-14] UTXISEL<1:0>: TX Interrupt Mode Selection bits
//             11 = Reserved, do not use
//             10 = Interrupt is generated and asserted while the transmit buffer is empty
//             01 = Interrupt is generated and asserted when all characters have been transmitted
//             00 = Interrupt is generated and asserted while the transmit buffer contains at least one empty space
//        UxSTA[13] UTXINV: Transmit Polarity Inversion bit
//             If IrDA mode is disabled (i.e., IREN (UxMODE<12>) is ?0?):
//                1 = UxTX Idle state is ?0?
//                0 = UxTX Idle state is ?1?
//             If IrDA mode is enabled (i.e., IREN (UxMODE<12>) is ?1?):
//                1 = IrDA encoded UxTX Idle state is ?1?
//                0 = IrDA encoded UxTX Idle state is ?0?
//        UxSTA[12] URXEN: Receiver Enable bit
//             1 = UARTx receiver is enabled. UxRX pin is controlled by UARTx (if ON = 1)
//             0 = UARTx receiver is disabled. UxRX pin is ignored by the UARTx module. UxRX pin is controlled by port.
//        UxSTA[11] UTXBRK: Transmit Break bit
//             1 = Send Break on next transmission. Start bit followed by twelve ?0? bits, followed by Stop bit;
//                 cleared by hardware upon completion
//             0 = Break transmission is disabled or completed
//        UxSTA[10] UTXEN: Transmit Enable bit
//             1 = UARTx transmitter is enabled. UxTX pin is controlled by UARTx (if ON = 1)
//             0 = UARTx transmitter is disabled. Any pending transmission is aborted and buffer is reset.
//                 UxTX pin is controlled by port.
//        UxSTA[9] UTXBF: Transmit Buffer Full Status bit (read-only)
//             1 = Transmit buffer is full
//             0 = Transmit buffer is not full, at least one more character can be written
//        UxSTA[8] TRMT: Transmit Shift Register is Empty bit (read-only)
//             1 = Transmit shift register is empty and transmit buffer is empty (the last transmission has completed)
//             0 = Transmit shift register is not empty, a transmission is in progress or queued in the transmit buffer
//        UxSTA[7-6] URXISEL<1:0>: Receive Interrupt Mode Selection bit
//             11 = Reserved; do not use
//             10 = Interrupt flag bit is asserted while receive buffer is 3/4 or more full (i.e., has 6 or more data characters)
//             01 = Interrupt flag bit is asserted while receive buffer is 1/2 or more full (i.e., has 4 or more data characters)
//             00 = Interrupt flag bit is asserted while receive buffer is not empty (i.e., has at least 1 data character)
//        UxSTA[5] ADDEN: Address Character Detect bit (bit 8 of received data = 1)
//             1 = Address Detect mode is enabled. If 9-bit mode is not selected, this control bit has no effect
//             0 = Address Detect mode is disabled
//        UxSTA[4] RIDLE: Receiver Idle bit (read-only)
//             1 = Receiver is Idle
//             0 = Data is being received
//        UxSTA[3] PERR: Parity Error Status bit (read-only)
//             1 = Parity error has been detected for the current character
//             0 = Parity error has not been detected
//        UxSTA[2] FERR: Framing Error Status bit (read-only)
//             1 = Framing error has been detected for the current character
//             0 = Framing error has not been detected
//        UxSTA[1] OERR: Receive Buffer Overrun Error Status bit.
//             This bit is set in hardware and can only be cleared (= 0) in software.
//             Clearing a previously set OERR bit resets the receiver buffer and RSR to empty state.
//                 1 = Receive buffer has overflowed
//                 0 = Receive buffer has not overflowed
//        UxSTA[0] URXDA: Receive Buffer Data Available bit (read-only)
//             1 = Receive buffer has data, at least one more character can be read
//             0 = Receive buffer is empty
// **************************
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

// **************************
// (4)Start UART
// **************************
    U1MODEbits.ON      = 1;
    U1STAbits.UTXEN    = 1;
    U1STAbits.URXEN    = 1;

}

//******************************************************************************************
//   Function Name : SendUARTStr
//   Title         : Send UART Strings
//   Input         :
//   Output        :
//******************************************************************************************
void SendUARTStr(unsigned char in_s[])
{
    unsigned char lp = 0;

    while(in_s[lp] != 0){
        SendUART(in_s[lp]);
        lp++;
    }
}

//******************************************************************************************
//   Function Name : SendUART
//   Title         : Send UART
//   Input         :
//   Output        :
//******************************************************************************************
void SendUART(unsigned char in_c)
{
    while(U1STAbits.UTXBF != 0);
    U1TXREG = in_c;
}

//******************************************************************************************
//   Function Name : RecUART
//   Title         : Recive UART
//   Input         :
//   Output        :
//******************************************************************************************
void RecUART(unsigned char *out_c)
{
    while(U1STAbits.URXDA == 0);
    *out_c = U1RXREG;
}

void delay_us(unsigned int usec)        //1?sec????
{
        int count;

        count = (int)(Clock/20000000)*usec;

        do      //????at?Clock=80000000
        {       //delay_us(1000)?1003?sec??delay_us(100)?102?sec?delay_us(10)?11?sec?delay_us(1)?1.6?sec

                asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");
                asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");     asm("NOP");

                count--;
        }while(count != 0);
}

void delay_ms(unsigned int msec)        //1msec????
{
        unsigned int i;

        for(i=0; i<msec; i++)
//      DelayUS(1000);
        delay_us(1000);
}

void bitshow(unsigned int in_a , unsigned char in_b [])
{
    int k;
    unsigned int t;
    t = 0x01;
    for(k=31; k>=0 ; k--){

        if((unsigned int)(in_a & t) == t){
            in_b[k] = '1';
        }
        else{
            in_b[k] = '0';
        }
       t = t << 1;
    }
}

void _mon_putc (char c){
    while (U1STAbits.UTXBF);
    U1TXREG = c;
}






