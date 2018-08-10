/********************************************************************
 * miniPSD wireless version
********************************************************************/
#include "p18f2553.h"
#include "stdio.h"
#include "stdlib.h"
#include "delays.h"
#include "usart.h"
#include "delays.h"
#include "timers.h"
#include "i2c.h"
#include "adc.h"
#include "string.h"


/**configration***********************/
//pragma?http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C?http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
//Probably, 4 MHz is generated from the oscillator 12 MHz by 3
//?It generates 96 MHz with PLL, it also divides by 2 to generate 48 MHz, it is used for USB clock and system clock
//datasheet:2550,TABLE 2-3:
#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 3               //12MHz
 //http://mitt.la.coocan.jp/pic/pic2550_01.html
#pragma config CPUDIV = OSC1_PLL2       //2???CPU48MHz
#pragma config VREGEN = OFF              //USB???????ON
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
#pragma config PBADEN = OFF       //???B???????????

/**global variable************/
#pragma udata
unsigned char i;

int err;//I2C??????????
int whoami;
char outbuf[30];//
unsigned long counter;
int b;
char temp;

//RN4020 commands
char usart_buf[16]  = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
char kanon[] = "kanopero";
char pinon[] = "pippi";
char junon[] = "cool";
char junon2[2] = {'j', 'u'};
char character = 'a';
char CR = '\r';
int usart_counter = 0;

char echo = '+';
char echo2[3] = {'+', '\r'};
char cmd0[] = {'R', ',', '1', '\r'};
char cmd1[] = {'S', 'F', ',', '1', '\r'};
char cmd2[] = {'S', 'S', ',', '4', '0', '0', '0', '0', '0', '0', '1',  '\r'};
char cmd3[] = {'S', 'R', ',', '3', '0', '0', '0', '0', '0', '0', '0',  '\r'};
char cmd4[] = {'P', 'Z',  '\r'};
char cmd5[] = {'P', 'S', ',', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', '0', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F',  '\r'};
char cmd6[] = {'P', 'C', ',', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', 'F', 'F', ',','1','0',',','2','0', '\r'};
char cmd7[] = {'S', 'H', 'W', ',', '0', '0', '0', 'B', ',', 'a', 'a', 'b', 'b', 'c', 'c', 'd', 'd', 'e', 'e', 'f', 'f', '0', '0', '1', '1', '2', '2', '3', '3', '4', '4', '5', '5', '6', '6', '7', '7', '8', '8', '9', '9', '0', '0', 'a', 'a', 'b', 'b', 'c', 'c', '\r'};

char bufbuf[];
char bt_data_buf[30];

unsigned int accel_h_x;
unsigned int accel_l_x;
unsigned int accel_h_y;
unsigned int accel_l_y;
unsigned int accel_h_z;
unsigned int accel_l_z;
unsigned int gylo_h_x;
unsigned int gylo_l_x;
unsigned int gylo_h_y;
unsigned int gylo_l_y;
unsigned int gylo_h_z;
unsigned int gylo_l_z;
char bt_accel_h_x[];
char bt_accel_l_x[];
char bt_accel_h_y[];
char bt_accel_l_y[];
char bt_accel_h_z[];
char bt_accel_l_z[];
char bt_gylo_h_x[];
char bt_gylo_l_x[];
char bt_gylo_h_y[];
char bt_gylo_l_y[];
char bt_gylo_h_z[];
char bt_gylo_l_z[];

/**function prototype *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void ProcessIO();
void send_command(char* src);
void get_response(char* dst);
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void Delay_s(int tm);
void Delay_ms(int tm);
void Delay_us(int tm);

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
    //Timer1 interrupt
    if(INTCONbits.TMR0IF){ //???????Timer1??????        
        INTCONbits.TMR0IF = 0; //?????? 
        WriteTimer0(35416);//??????
        
        PORTCbits.RC2 ^= 1;
        ProcessIO();
        
        sprintf(bt_accel_h_x, "%x", accel_h_x);
        sprintf(bt_accel_l_x, "%x", accel_l_x);      
        sprintf(bt_accel_h_y, "%x", accel_h_y);        
        sprintf(bt_accel_l_y, "%x", accel_l_y);        
        sprintf(bt_accel_h_z, "%x", accel_h_z);
        sprintf(bt_accel_l_z, "%x", accel_l_z);      
        sprintf(bt_gylo_h_x, "%x", gylo_h_x);
        sprintf(bt_gylo_l_x, "%x", gylo_l_x);      
        sprintf(bt_gylo_h_y, "%x", gylo_h_y);        
        sprintf(bt_gylo_l_y, "%x", gylo_l_y);        
        sprintf(bt_gylo_h_z, "%x", gylo_h_z);
        sprintf(bt_gylo_l_z, "%x", gylo_l_z);      
        
        
        cmd7[9] = bt_accel_h_x[0];
        cmd7[10] = bt_accel_h_x[1];
        cmd7[11] = bt_accel_l_x[0];
        cmd7[12] = bt_accel_l_x[1];
        cmd7[13] = bt_accel_h_y[0];
        cmd7[14] = bt_accel_h_y[1];
        cmd7[15] = bt_accel_l_y[0];
        cmd7[16] = bt_accel_l_y[1];
        cmd7[17] = bt_accel_h_z[0];
        cmd7[18] = bt_accel_h_z[1];
        cmd7[19] = bt_accel_l_z[0];
        cmd7[20] = bt_accel_l_z[1];
        cmd7[21] = bt_gylo_h_x[0];
        cmd7[22] = bt_gylo_h_x[1];
        cmd7[23] = bt_gylo_l_x[0];
        cmd7[24] = bt_gylo_l_x[1];
        cmd7[25] = bt_gylo_h_y[0];
        cmd7[26] = bt_gylo_h_y[1];
        cmd7[27] = bt_gylo_l_y[0];
        cmd7[28] = bt_gylo_l_y[1];
        cmd7[29] = bt_gylo_h_z[0];
        cmd7[30] = bt_gylo_h_z[1];
        cmd7[31] = bt_gylo_l_z[0];
        cmd7[32] = bt_gylo_l_z[1];

        send_command((char *)cmd7);  
        
    }    
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code


/****main function***/
void main(void){  

    
    TRISA = 0b11111111;
    TRISB = 0b00010000;
    TRISC = 0b10000000;
    PORTCbits.RC2 = 0; 
    PORTCbits.RC1 = 0;
    //memset( usart_buf , '\0' , strlen(usart_buf) );

    //First of all, establish communication with the RN 4020 !
    //USART configration

    OpenUSART(USART_TX_INT_OFF & USART_RX_INT_OFF &
                       USART_ASYNCH_MODE & USART_EIGHT_BIT &
                       USART_CONT_RX & USART_BRGH_HIGH, 25);


    //[CMD\r\n]
    getsUSART(usart_buf, 5);
    Delay_s(1);

    PORTCbits.RC2 = 0; 
    PORTCbits.RC1 = 0;
    send_command((char *)cmd1);
    PORTCbits.RC2 = 0; 
    PORTCbits.RC1 = 1;

    send_command((char *)cmd2);
    PORTCbits.RC2 = 1; 
    PORTCbits.RC1 = 0;

    send_command((char *)cmd3);
    PORTCbits.RC2 = 1; 
    PORTCbits.RC1 = 1;
    send_command((char *)cmd4);
    PORTCbits.RC2 = 0; 
    PORTCbits.RC1 = 0;
    Delay_s(1);
   
    send_command((char *)cmd5);
    PORTCbits.RC2 = 0; 
    PORTCbits.RC1 = 1;
    Delay_s(1);
    
    send_command((char *)cmd6);
    PORTCbits.RC2 = 1; 
    PORTCbits.RC1 = 0;
    Delay_s(1); 
    
    send_command((char *)cmd0);
    Delay_s(5); 
    
    //PORTCbits.RC2 = RCSTAbits.OERR; 
    //PORTCbits.RC1 = RCSTAbits.FERR;

    //ADC configration
    OpenADC(ADC_FOSC_64 & ADC_RIGHT_JUST & ADC_12_TAD, ADC_CH0
            & ADC_INT_OFF & ADC_REF_VDD_VSS, 0x0B);

    //I2C configration
    //?????=FOSC/((SSPADD + 1)*4)
    OpenI2C(MASTER, SLEW_ON);   // master mode
    SSPADD = 29;                //I2C400kHz
    //Delay_s(1);
    
    err = WI2C(0b11010000, 0x24, 0x0D);//slave clock configration

    //MPU initialize
    //accel, gylo wake to sleep
    err = WI2C(0b11010000, 0x6B, 0x00);   
    err = WI2C(0b11010000, 0x37, 0x02);    
    whoami = RI2C(0b11010000, 0x75);
       
    //timer configration
    //18F2553?1??4????
    //1????:1/(48MHz/4) = 0.166)
    //5ms(200Hz)??????5000/0.1666 = 30120?????????)
    //65536 - 30120 ? 35416
    T0CON = 0b10000000;//???0,8???,??????1:2
    WriteTimer0(35416);//??????
    INTCONbits.GIE = 1;//????????
    INTCONbits.TMR0IE = 1;//TMR0??????
    
    while(1){  
    }
}

void ProcessIO(){
//----------------accelaration, gylo-----------------
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
    //if ( PIR2bits.BCLIF )return ( 8 );       // ??????? 
    
// ---------------- ???????? -----------------------------
    if(WriteI2C(0b11010000))return(33);        // ??????? 
    IdleI2C();                                 // ??????
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(0x3B))return(35);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Restart?? -----------------------
    RestartI2C();                              // restart ????????????????????????
    //if ( PIR2bits.BCLIF )return (37);        // ??????? 
// ---------------- ??????Read Mode?? -----------------------------
    if(WriteI2C(0b11010001))return(38);        // ??????? 
    IdleI2C();// ??????
    if ( SSPCON2bits.ACKSTAT )return(39);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ????? -----------------------------
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    accel_h_x = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    accel_l_x = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
         
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    accel_h_y = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
        
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    accel_l_y = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
        
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    accel_h_z = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    accel_l_z = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    //Temperature data is discarded
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    
    //gylo
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    gylo_h_x = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
   
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    gylo_l_x = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    gylo_h_y = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    gylo_l_y = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    gylo_h_z = (unsigned int)  SSPBUF;       //???????
    AckI2C(); 
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    gylo_l_z = (unsigned int)  SSPBUF;       //???????
    NotAckI2C();                               // ACK?????Not ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF???
           
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
     
//--------------PSD???AD??----------------
    /*
    SetChanADC(ADC_CH0);
    ConvertADC();
    while(BusyADC()); 
    outbuf[18] = ADRESH;//??8???
    outbuf[19] = ADRESL;//??8???
    
    SetChanADC(ADC_CH1);
    ConvertADC();
    while(BusyADC()); 
    outbuf[20] = ADRESH;//??8???
    outbuf[21] = ADRESL;//??8???

    SetChanADC(ADC_CH2);
    ConvertADC();
    while(BusyADC()); 
    outbuf[22] = ADRESH;//??8???
    outbuf[23] = ADRESL;//??8???
    
    SetChanADC(ADC_CH3);
    ConvertADC();
    while(BusyADC()); 
    outbuf[24] = ADRESH;//??8???
    outbuf[25] = ADRESL;//??8???
   */
}

void send_command(char* src)
{
    char* psrc = src;
    while(*psrc != '\r')
    {
        if(!BusyUSART())
            putcUSART(*psrc++);
    }
    putcUSART('\r');
}
void get_response(char* dst)
{
    char* pdst = dst;

    while(1){
        if(BusyUSART())
        {
            *pdst = getcUSART();          
            if(*pdst == '\r')
                break;
            if(*pdst != '\n')
                pdst++;
        }
    }
}


//I2C??????????
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
   // if ( PIR2bits.BCLIF )return ( 1 );        // ??????? 
// ---------------- ???????? -----------------------------
    if(WriteI2C(control))return(2);           // ??????? 
    IdleI2C();                                 // ??????
    if (SSPCON2bits.ACKSTAT )return(3);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
    
    // ---------------- MPU9250?????? ------------------------
    if(WriteI2C(address))return(4);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(5);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ???????? --------------------------
    if(WriteI2C(data))return(8);              // ????????
    IdleI2C();                                 // ??????  
    if ( SSPCON2bits.ACKSTAT)return(9);       // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
   // if ( PIR2bits.BCLIF )return ( 0 );       // ?????? 

    return (0); 
    
}

//I2C??????????
unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // ??????
    StartI2C();                                // start ???????
   // if ( PIR2bits.BCLIF )return ( 8 );        // ??????? 
    while(SSPCON2bits.SEN);
// ---------------- ???????? -----------------------------
    if(WriteI2C(control))return(33);           // ??????? 
    IdleI2C();                                 // ??????
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- MPU9250?????? ------------------------
    if(WriteI2C(address))return(35);      // ????? 
    IdleI2C();                                 // ??????
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Restart?? -----------------------
    RestartI2C();                              // restart ????????????????????????
    //if ( PIR2bits.BCLIF )return (37);        // ??????? 
// ---------------- ??????Read Mode?? -----------------------------
    if(WriteI2C(control+1))return(38);         // ??????? 
    IdleI2C();// ??????
    if ( SSPCON2bits.ACKSTAT )return(39);     // ACK?? 
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- ?????? -----------------------------
    SSPCON2bits.RCEN = 1;                      // ??ON
    while ( SSPCON2bits.RCEN );                // ??????
    NotAckI2C();                               // ACK?????Not ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF???
// ---------------- Stop condition?? --------------------------
    StopI2C();                                 // ???????
    PIR1bits.SSPIF = 0;                        // SSPIF???
    //if ( PIR2bits.BCLIF )return (40);       // ?????? 
    PIR1bits.SSPIF = 0;                    // SSPIF???
    return ( (unsigned int) SSPBUF );      // ????
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
        Delay10TCYx(36);  
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