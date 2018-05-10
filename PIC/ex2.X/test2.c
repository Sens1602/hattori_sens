#include "p24FJ64GA002.h"
// FOR PIC
// MCLR & PICKIT3 <-> RESET BUTTON   (pin1)
// VSS            <-> GND            (pin8)
// OSCI           <-> CERALOCK 8MHz  (pin9)
// OSCO           <-> CERALOCK 8MHz  (pin10)
// VDD            <-> 3.3V           (pin13)
// VSS            <-> GND            (pin19)
// VCAP           <-> CAPACITOR 10uF (pin20)
// VSS1           <-> GND            (pin27)
// VDD1           <-> 3.3V           (pin28)

_CONFIG1( JTAGEN_OFF & GCP_OFF & GWRP_OFF & BKBUG_OFF
	 & COE_OFF & ICS_PGx1 & FWDTEN_OFF )
_CONFIG2( IESO_OFF & FNOSC_FRCPLL & FCKSM_CSDCMD
	 & OSCIOFNC_OFF & IOL1WAY_OFF & I2C1SEL_PRI & POSCMOD_NONE)

// FOR MAIN CLOCK
#define CLOCK   32      // MHz
#define FOSC    16      // (CLOCK/2) MHz

// FOR WAIT (NOP)
void delay_us(int usec);
void delay_ms(int msec);

// FOR TEST
// PUSH BUTTON & PICKIT3 <-> RB1 (pin5)
// LED         & PICKIT3 <-> RB0 (pin4)

#include <stdio.h>
// FOR RS232C (UART)
// UART1 RX (12) <-> RB5 (pin14)
// UART1 TX (10) <-> RB4 (pin11)

// FOR LCD (4BIT MODE)
// DB7 (14) <-> RB15 (pin26)
// DB6 (13) <-> RB14 (pin25)
// DB5 (12) <-> RB13 (pin24)
// DB4 (11) <-> RB12 (pin23)
// E   (6)  <-> RB11 (pin22)
// RS  (4)  <-> RB10 (pin21)
#define	LCD_CLK         FOSC
#define	LCD_DATA_PORT	LATB
#define	LCD_RS		LATBbits.LATB10
#define	LCD_E		LATBbits.LATB11
#define LCD_COLUMN      16
#define LCD_LOW         2
static char ch=0;
static unsigned int low=0, column=0;
void lcd_out(char code, char flag);
void lcd_data(char asci);
void lcd_cmd(char cmd);
void lcd_clear(void);
void lcd_init(void);
void lcd_str(char *str);

#include <spi.h>
// FOR SD CARD (SPI)
// DAT0      (7)  <-> RB9 (SDI) (pin18)
// CLK/SCLK  (5)  <-> RB8 (SCK) (pin17)
// CMD/DI    (3)  <-> RB7 (SDO) (pin16)
// CD/DAT3   (2)  <-> RB6 (CS)  (pin15)
// SD INSERT (10) <-> RB2 (CDI) (pin6)
// LED            <-> RB3       (pin7)
#define SPI1_CS  LATBbits.LATB6
#define SPI1_CLK LATBbits.LATB8
#define SPI1_SDO LATBbits.LATB7
BOOL SD_CD = FALSE, SD_CK = FALSE;
void mmc2spi(void);
unsigned int SPICONValue1 = ENABLE_SCK_PIN & ENABLE_SDO_PIN &
                            SPI_MODE8_ON & SPI_SMP_ON &
                            SPI_CKE_OFF & SLAVE_ENABLE_OFF &
                            CLK_POL_ACTIVE_LOW & MASTER_ENABLE_ON &
                            SEC_PRESCAL_8_1 & PRI_PRESCAL_64_1;
unsigned int SPICONValue2 = FRAME_ENABLE_OFF & FRAME_SYNC_INPUT &
                            FRAME_POL_ACTIVE_HIGH &
                            FRAME_SYNC_EDGE_COINCIDE &
                            FIFO_BUFFER_ENABLE;
unsigned int SPISTATValue = SPI_ENABLE & SPI_IDLE_CON &
                            SPI_RX_OVFLOW_CLR;
unsigned int SPI1_RES;

// PINS FREE
// RA0 (pin2)
// RA1 (pin3)
// RA4 (pin12)

int main(void){
    // CLOCK: 32MHz
    CLKDIV = 0;

    // PORTA: ALL DIGITAL
    AD1PCFG = 0b1111111111111111;
    TRISA = 0b0000000000000000;

    // PORTB INPUT: RB1 (pin5) (PUSH BUTTON)
    // PORTB INPUT: RB2 (pin6) (SD CARD INSERT)
    // PORTB INPUT: RB5 (pin14) (UART1 RX (RS232C))
    // PORTB INPUT: RB9 (pin18) (DAT0 (SDI))
    TRISB = 0b0000001000100110;

    // PULL UP: CN5 (pin5) (PUSH BUTTON)
    // PULL UP: CN6 (pin6) (SDCARD INSERT (CDI))
    CNPU1 = 0b0000000001100000;
    // PULL UP: CN21 (pin18) (DAT0 (SDI))
    CNPU2 = 0b0000000000100000;

    // SPI2 (SD CARD)
    // DAT0 (SDI): RB9 (pin18)
    RPINR20bits.SDI1R = 9;
    // CLK/SCLK (SCK): RB8 (pin17)
    RPOR4bits.RP8R = 8;
    // CMD/DI (SDO): RB7 (pin16)
    RPOR3bits.RP7R = 7;
    // CD/DAT3 (CS): RB6 (pin15)

    // RS232C
    // RP5 (pin14): UART1 RX (RS232C)
    RPINR18bits.U1RXR = 5;
    // RP4 (pin11): UART1 TX (RS232C)
    RPOR2bits.RP4R = 3;

    // LCD INITIALIZE
    lcd_init();
    lcd_clear();
    delay_ms(1000);
    lcd_str("LCD INITIALIZED");
    column = 0;
    lcd_cmd(0xC0);
    low = 2;

    // RS232C INITIALIZE (9600bps w/o PARITY)
    U1BRG = 103;
    U1MODE = 0b1000000000000000;
    U1STA = 0b0000010000000000;
    delay_ms(1000);
    printf("\r\nRS232C INITIALIZED");
    printf("\r\nLOW=%d: ", low);

    // SD CARD INITIALIZE
    OpenSPI1(SPICONValue1, SPICONValue2, SPISTATValue);
    ConfigIntSPI1(SPI_INT_DIS & SPI_INT_PRI_6);
    SPI1_CS = 1;
    delay_ms(1000);

    // MAIN LOOP
    while(1){
        // TEST BUTTON RB1 (pin5) PUSH -> LED RB0 (pin4) ON
        LATBbits.LATB0 = PORTBbits.RB1;

        // TEST LCD <-> RS232C
        if(U1STAbits.URXDA){
            ch = getchar();
            column++;
            if(column > LCD_COLUMN){
                if(low == LCD_LOW){
                    lcd_clear();
                    low = 1;
                    column = 1;
                } else {
                    lcd_cmd(0xC0);
                    low++;
                    column = 1;
                }
                printf("\r\nLOW=%d: ", low);
            }
            putchar(ch);
            lcd_data(ch);
        }

        // SD CARD INSERTED -> LED RB3 (pin7) ON
        SD_CD=!(LATBbits.LATB3 = PORTBbits.RB2);

        // SD CARD TEST
        if(ch == 's'){
            if(SD_CK == FALSE){
                delay_ms(10);
		if(SD_CD == TRUE){
                    mmc2spi();
                    SD_CK = TRUE;
		}
            }
	} else{
            SD_CK = FALSE;
	}
    }
}

void lcd_out(char code, char flag){
    LCD_DATA_PORT = (LCD_DATA_PORT & 0x0FFF) |
                        ((unsigned int)(code & 0xF0) << 8);
    if (flag == 0){
	LCD_RS = 1;
    } else{
    	LCD_RS = 0;
    }
    delay_us(10);
    LCD_E = 1;
    delay_us(10);
    LCD_E = 0;
}

void lcd_init(void){
    delay_ms(15);
    lcd_out(0x30, 1);
    delay_ms(15);
    lcd_out(0x30, 1);
    delay_ms(15);
    lcd_out(0x30, 1);
    delay_ms(15);
    lcd_out(0x20, 1);
    delay_ms(15);
    lcd_cmd(0x2E);
    lcd_cmd(0x08);
    lcd_cmd(0x0D);
    lcd_cmd(0x06);
    lcd_cmd(0x02);
}

void lcd_data(char asci){
    lcd_out(asci, 0);
    lcd_out(asci << 4, 0);
	delay_us(50);
}

void lcd_cmd(char cmd){
    lcd_out(cmd, 1);
    lcd_out(cmd << 4, 1);
    delay_ms(2);
}

void lcd_clear(void){
    lcd_cmd(0x01);
    delay_ms(15);
}

void lcd_str(char *str){
    while(*str != 0x00){
        lcd_data(*str);
        str++;
    }
}

void delay_us(int usec){
    usec = (int)(LCD_CLK * usec) / 10;
    while(usec)	{
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
    for(i = 0; i < msec; i++){
        delay_us(1000);
    }
}

void mmc2spi(void){
	int i = 0;

	SPI1_CLK = 1;
	SPI1_SDO = 1;
       	SPI1_CS  = 1;
	for(i = 0; i < 10; i++) {
            WriteSPI1(0xFF);
        }
	delay_ms(10);

        SPI1_CS = 0;
	WriteSPI1(0x40);
	WriteSPI1(0x00);
	WriteSPI1(0x00);
	WriteSPI1(0x00);
	WriteSPI1(0x00);
	WriteSPI1(0x95);

	while((ch = ReadSPI1()) != 0x01){
            printf("%x ", (BYTE)ch);
            WriteSPI1(0xFF);
	}
        printf("%x ", (BYTE)ch);
        printf("\r\n step1 OK!\r\n");

        delay_ms(10);
        // DUMMY DATA
        SPI1_CS = 1;
        WriteSPI1(0xFF);

       	SPI1_CS = 0;
	while((ch = ReadSPI1()) != 0x00){
            printf("%x ", (BYTE)ch);
            WriteSPI1(0x41);
            WriteSPI1(0x00);
            WriteSPI1(0x00);
            WriteSPI1(0x00);
            WriteSPI1(0x00);
            WriteSPI1(0xF9);
	}
        printf("%x ", (BYTE)ch);
        printf("\r\n step2 OK!\r\n");

        // DUMMY DATA
        SPI1_CS = 1;
        WriteSPI1(0xFF);
}
