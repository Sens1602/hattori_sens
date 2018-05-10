/********************************************************************
 USB-CDC�ʐM
 i-PSD�@��
********************************************************************/
/**�w�b�_�t�@�C��*************/
#include "usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "usb_device.h"
#include "usb.h"
#include "HardwareProfile.h"
#include "p18f2553.h"
#include "i2c.h"
#include "stdio.h"
#include "stdlib.h"
//#include "usart.h"

/**�R���t�B�O���[�V����***********************/
/*18Fpic18f14k50
#pragma config CPUDIV = NOCLKDIV ,USBDIV = OFF, PCLKEN = ON 
#pragma config FOSC = HS, PLLEN = ON, HFOFST = OFF
#pragma config PW RTEN = ON, BOREN = OFF, MCLRE = ON
#pragma config WDTEN = OFF, LVP = OFF, FCMEN = OFF, IESO = OFF
#pragma config CP0 = OFF, XINST = OFF
*/
//pragma�Q�l�@http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C�Q�l�@http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
//�i�����炭�j�U���q12MHz����3������4MHz�𐶐���PLL��96MHz�𐶐����Ă܂�2��������48MHz�𐶐��AUSB�N���b�N�ƃV�X�e���N���b�N�Ɏg�p�A�Ƃ����\���F�f�[�^�V�[�g2550,TABLE 2-3:
#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 3               //�Z�����b�N12MHz
#pragma config CPUDIV = OSC1_PLL2       //2������CPU48MHz
#pragma config VREGEN = ON              //USB�p���M�����[�^ON
#pragma config USBDIV =2                //2������USB�N���b�N����
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
#pragma config PBADEN = OFF       //�|�[�gB���f�t�H���g�Ńf�W�^��
//#pragma config ICPRT = OFF              //�H

/** �O���[�o���ϐ���` ************/
#pragma udata
char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
USB_HANDLE    lastTransmission;
unsigned char RxIndex;				// USB���M�o�b�t�@�p�|�C���^		
unsigned char USBRxNum;  			// USB��M�o�C�g���J�E���^
unsigned char TxIndex;       		// RS232C���M�o�b�t�@�p�|�C���^
unsigned char Tx_Rdy = 0;			// USART���M���f�B�[�t���O
unsigned char i;

int rs1, rs2, rs3;
int err;
char *outbuf;
char outbuf2[100];
char WHO_ADD = 0b11101011;
unsigned long counter = 0;
int b;
char temp;

/**�֐��v���g�^�C�s���O�錾 *******************/
void ProcessIO(void);
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
unsigned char getcUSART (void);
void debug(char a[]);
void debug_i(int a, int b, int c);
unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data);
unsigned int RI2C(unsigned char control, unsigned char address);
void speedCK();

/*** ���荞�݃x�N�^��`***/
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
/****���荞�ݏ����֐�***/
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){
        USBDeviceTasks();		// USB????????
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

/*********** ���C���֐� **************************/

void main(void){  

    ADCON1 = 0b00001111;            //�|�[�gB�S�ăf�W�^��
	TRISA = 0b11111111;				// RA0-5??
	TRISB = 0b00110000;				//
	TRISC = 0b00100000;				// RC5????
//	WPUBbits.WPUB4 = 1;			// RB4 pull up
	TRISC = 0x00;				// RC0-7??

	for (i=0; i<sizeof(USB_Out_Buf); i++){
		USB_Out_Buf[i] = 0;
    }
	RxIndex = 0;				// ???????
	USBRxNum = 0;				// ???????
	lastTransmission = 0;		// ???????
    USBDeviceInit();			// USB???

    //I2C�ݒ�
    //SSPADD = ((Fosc/4) / Fscl) - 1
    OpenI2C(MASTER, SLEW_ON);   //�}�X�^�[���[�h
    SSPADD = 29;                //I2C400kHz?_��قǕ׋�
    err = WI2C(0b11010000, 0x24, 0x0D);//�X���[�u���N���b�N�ݒ�
    rs1 = RI2C(0b11010000, 0x75);//WHO_AM_I

    //�Z���T�������ݒ�
    //�����x�Q�W���C���X���[�v���[�h����
    err = WI2C(0b11010000, 0x6B, 0x00);   
    err = WI2C(0b11010000, 0x37, 0x02);
    //���C�Z���TAD�ϊ����s
    err = WI2C(0b00011000, 0x0A, 0x12);
    
    rs2 = RI2C(0b11010000, 0x6B);
    rs3 = RI2C(0b11010000, 0x37);
        
    debug_i(rs1, rs2, rs3);
    
}

unsigned int WI2C( unsigned char control, 
            unsigned char address, unsigned char data){
    IdleI2C();                                 // �A�C�h���m�F
    StartI2C();                                // start �o�́E�I���҂�
    if ( PIR2bits.BCLIF )return ( 1 );        // �o�X�Փ˔����� 
// ---------------- �R���g���[���o�� -----------------------------
    if(WriteI2C(control))return(2);           // �o�X�Փ˔����� 
    IdleI2C();                                 // �A�C�h���m�F
    if (SSPCON2bits.ACKSTAT )return(3);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- MPU9250�A�h���X�o�� ------------------------
    if(WriteI2C(address))return(4);      // �o�X�Փˎ� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(5);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- �����݃f�[�^�o�� --------------------------
    if(WriteI2C(data))return(8);              // �����݃f�[�^�o��
    IdleI2C();                                 // �A�C�h���m�F  
    if ( SSPCON2bits.ACKSTAT)return(9);       // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Stop condition�o�� --------------------------
    StopI2C();                                 // �o�́E�I���҂�
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    if ( PIR2bits.BCLIF )return ( 0 );       // �o�X�Փ˔��� 
    return (0); 
    

}

unsigned int RI2C(unsigned char control, unsigned char address){
    
    IdleI2C();                                 // �A�C�h���m�F
    StartI2C();                                // start �o�́E�I���҂�
    //if ( PIR2bits.BCLIF )return ( 8 );        // �o�X�Փ˔����� 
        
// ---------------- �R���g���[���o�� -----------------------------
    if(WriteI2C(control))return(33);           // �o�X�Փ˔����� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( counter = SSPCON2bits.ACKSTAT )return(34);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- MPU9250�A�h���X�o�� ------------------------
    if(WriteI2C(address))return(35);      // �o�X�Փˎ� 
    IdleI2C();                                 // �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(36);      // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Restart�o�� -----------------------
    RestartI2C();                              // restart �o�́E�I���҂��A���s�[�g�X�^�[�g�R���f�B�V�����H
    //if ( PIR2bits.BCLIF )return (37);        // �o�X�Փ˔����� 
// ---------------- �R���g���[��Read Mode�o�� -----------------------------
    if(WriteI2C(control+1))return(38);         // �o�X�Փ˔����� 
    IdleI2C();// �A�C�h���m�F
    if ( SSPCON2bits.ACKSTAT )return(39);     // ACK���� 
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- �P�o�C�g��M -----------------------------
    SSPCON2bits.RCEN = 1;                      // ��MON
    while ( SSPCON2bits.RCEN );                // ��M�����҂�
    NotAckI2C();                               // ACK�ԐM�Ȃ��iNot ACK)
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
// ---------------- Stop condition�o�� --------------------------
    StopI2C();                                 // �o�́E�I���҂�
    PIR1bits.SSPIF = 0;                        // SSPIF�N���A
    //if ( PIR2bits.BCLIF )return (40);       // �o�X�Փ˔��� 
    PIR1bits.SSPIF = 0;                    // SSPIF�N���A*/
    return ( (unsigned int) SSPBUF );      // ����I��

}

void debug(char a[]){
    counter = 40000000;
    outbuf = a;
	while(counter != 0){
	    // USB??????
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB????			
		// ??????????????
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
            //putrsUSBUSART(outbuf);
            putrsUSBUSART("cheak\r\n");
            CDCTxService();
		}
        counter--;
    }
}
void debug_i(int a, int b, int c){
 
    int acxh,acxl,acyh,acyl,aczh,aczl;//�����x
    int gyxh,gyxl,gyyh,gyyl,gyzh,gyzl;//�W���C��
    int coxh,coxl,coyh,coyl,cozh,cozl;//�R���p�X
  
        temp = (char)a;
    counter = 40000000;

    outbuf2[0] = 'a';
    outbuf2[1] = 'b';
    outbuf2[2] = 'c';
    outbuf2[3] = '\r';
    outbuf2[4] = '\n';
    outbuf2[5] = temp;

	while(counter != 0){
	    // USB�ڑ���Ԋm�F
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB�ڑ�����		
		// �f�o�C�X�ڑ���ԂȂ�@�\���s
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
           
            //�����x
            acxh = RI2C(0b11010000, 0x3B);
            acxl = RI2C(0b11010000, 0x3C);
            acyh = RI2C(0b11010000, 0x3D);
            acyl = RI2C(0b11010000, 0x3E);
            aczh = RI2C(0b11010000, 0x3F);
            aczl = RI2C(0b11010000, 0x40);
            
            //�W���C��
            gyxh = RI2C(0b11010000, 0x43);
            gyxl = RI2C(0b11010000, 0x44);
            gyyh = RI2C(0b11010000, 0x45);
            gyyl = RI2C(0b11010000, 0x46);           
            gyzh = RI2C(0b11010000, 0x47);
            gyzl = RI2C(0b11010000, 0x48);
            
            //�R���p�X
            //coxh = RI2C(0b0001100, 0x03);
            //coxl = RI2C(0b0001100, 0x04);
            
            outbuf2[6] = acxh;
            outbuf2[7] = acxl;
            outbuf2[8] = acyh;
            outbuf2[9] = acyl;
            outbuf2[10] = aczh;
            outbuf2[11] = aczl;
            putUSBUSART(outbuf2, 12);
            CDCTxService();

		}
        counter--;
    }
}

void speedCK(){
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
        Nop();
        PORTCbits.RC6 = 1;
        Nop();
        PORTCbits.RC6 = 0;
} 

void debug_i_1(int a){
 
    temp = (char)a;
    outbuf2[0] = 'a';
    outbuf2[1] = 'b';
    outbuf2[2] = 'c';
    outbuf2[3] = '\r';
    outbuf2[4] = '\n';
    outbuf2[5] = temp;
	    // USB??????
		if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
			USBDeviceAttach();				// USB????			
		// ??????????????
		if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
			ProcessIO();
            putUSBUSART(outbuf2, 6);
            CDCTxService();
		}
}

/**************************************************
 * USB �� �� USART����M
 * �o��������M�S��d�ŉ\
 * LED�ŕ����\���@�ԁFUSB���M�@�΁FUSART���M
 **************************************************/
void ProcessIO(void)
{   
	if (Tx_Rdy == 0)  							// USART????????
	{
		/* USB?? */
		USBRxNum = getsUSBUSART(USB_In_Buf,64);	// USB??????
		if(USBRxNum > 0)						// USB??????
		{
			Tx_Rdy = 1;  						// USART????????
			TxIndex = 0;  						// ????????????
		} 
	}
	/* USB??????USART?? */
	if(Tx_Rdy && TXSTAbits.TRMT)				// ????????
	{
		TXREG = USB_In_Buf[TxIndex];			// USART????????
		++TxIndex;								// ??????
		if (TxIndex == USBRxNum){				// ????????
			Tx_Rdy = 0;							// ?????????
		}
	}
	/* USART????? */
	if(PIR1bits.RCIF && (RxIndex < (CDC_DATA_OUT_EP_SIZE - 1)))
	{
		USB_Out_Buf[RxIndex] = getcUSART();		// USART??????????
		++RxIndex;								// ??????????
		USB_Out_Buf[RxIndex] = 0;				// ???NULL??
	}
	/* USART??????USB?? */
	if((USBUSARTIsTxTrfReady()) && (RxIndex > 0))
	{
		putUSBUSART(&USB_Out_Buf[0], RxIndex);	// USB????????????
		RxIndex = 0;							// ???????
	}
	/* USB���M���s */
    //putrsUSBUSART("KASHIKOMA---!!!");
    //CDCTxService();
}

/***************************************
*  USART???? 
****************************************/
unsigned char getcUSART (void)
{
	char  c;
	
	if (RCSTAbits.OERR)  			// ???????
	{
		RCSTAbits.CREN = 0;  		// USART???
		c = RCREG;					// ?????????????
		RCSTAbits.CREN = 1;  		// USART???
	}
	else
		c = RCREG;					// ???????
	return c;
}

/***********************************************************
* ?????????
*
* ???:  USB_CDC_SET_LINE_CODING_HANDLER ??????????
* ?USB??USART?????????????????
************************************************************/
#if defined(USB_CDC_SET_LINE_CODING_HANDLER)
void mySetLineCodingHandler(void)
{
	//If the request is not in a valid range
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	// 115kbps?????????
	}
	else{
		DWORD_VAL dwBaud;
		
		// CDC????????????
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
		// USART????????
		dwBaud.Val = (DWORD)(GetSystemClock()/4)/line_coding.dwDTERate.Val-1;
		SPBRG = dwBaud.v[0];
		SPBRGH = dwBaud.v[1];
	}
}
#endif

// ***********************************************************
// ************** USB Callback Functions *********************
// ***********************************************************

/*************************************************************
 * Function:        void USBCBSuspend(void)
 *************************************************************/
void USBCBSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCBWakeFromSuspend(void)
 *************************************************************/
void USBCBWakeFromSuspend(void)
{
}
/*************************************************************
 * Function:        void USBCB_SOF_Handler(void)
 *************************************************************/
void USBCB_SOF_Handler(void)
{
}
/*************************************************************
 * Function:        void USBCBErrorHandler(void)
 *************************************************************/
void USBCBErrorHandler(void)
{
}
/*************************************************************
 * Function:        void USBCBCheckOtherReq(void)
 *************************************************************/
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}//end
/*************************************************************
 * Function:        void USBCBStdSetDscHandler(void)
 *************************************************************/
void USBCBStdSetDscHandler(void)
{
}//end
/*************************************************************
 * Function:        void USBCBInitEP(void)
 *************************************************************/
void USBCBInitEP(void)
{
    CDCInitEP();
}
/*************************************************************
 * Function:        void USBCBSendResume(void)
 *************************************************************/
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    if(USBGetRemoteWakeupStatus() == TRUE) 
    {
        //Verify that the USB bus is in fact suspended, before we send
        //remote wakeup signalling.
        if(USBIsBusSuspended() == TRUE)
        {
            USBMaskInterrupts();
            
            //Clock switch to settings consistent with normal USB operation.
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  //So we don't execute this code again, 
                                        //until a new suspend condition is detected.

            delay_count = 3600U;        
            do
            {
                delay_count--;
            }while(delay_count);
            
            //Now drive the resume K-state signalling onto the USB bus.
            USBResumeControl = 1;       // Start RESUME signaling
            delay_count = 1800U;        // Set RESUME line for 1-13 ms
            do
            {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       //Finished driving resume signalling

            USBUnmaskInterrupts();
        }
    }
}


/***************************************************************
 * Function:        void USBCBEP0DataReceived(void)
 ***************************************************************/
#if defined(ENABLE_EP0_DATA_RECEIVED_CALLBACK)
void USBCBEP0DataReceived(void)
{
}
#endif

/***************************************************************
 * Function:        BOOL USER_USB_CALLBACK_EVENT_HANDLER(
 ***************************************************************/
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_TRANSFER:
            break;
        case EVENT_SOF:
            USBCB_SOF_Handler();
            break;
        case EVENT_SUSPEND:
            USBCBSuspend();
            break;
        case EVENT_RESUME:
            USBCBWakeFromSuspend();
            break;
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
        case EVENT_SET_DESCRIPTOR:
            USBCBStdSetDscHandler();
            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
        case EVENT_BUS_ERROR:
            USBCBErrorHandler();
            break;
        case EVENT_TRANSFER_TERMINATED:

            break;
        default:
            break;
    }      
    return TRUE; 
}