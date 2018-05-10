/********************************************************************
 �_�o�Ǘp�p���X���H
********************************************************************/
/**�w�b�_�t�@�C��*************/
#include "usb_function_cdc.h"
#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "usb_device.h"
#include "usb.h"
#include "HardwareProfile.h"
#include "p18f2550.h"
#include "i2c.h"
#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "timers.h"
#include "adc.h"

#define Nop() {_asm nop _endasm}

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
#pragma config PBADEN = ON       //�|�[�gB���f�t�H���g�Ńf�W�^��
//#pragma config ICPRT = OFF              //�H

/** �O���[�o���ϐ���` ************/
#pragma udata
unsigned char USB_Out_Buf[CDC_DATA_OUT_EP_SIZE];
unsigned char USB_In_Buf[CDC_DATA_IN_EP_SIZE];
char charbuf[255];
unsigned char cbco = 0;
char *ph;
char *pl;
USB_HANDLE    lastTransmission;
int i;

int b;
char temp;
unsigned char USBRxNum;//USB��M�o�C�g���J�E���^
int flag = 0, start = 0;
int counter2;
int state = 0;

//�p���X�֌W
//int thigh[0], tlow;
unsigned long thigh[1];
unsigned int tlow;
unsigned long buf[2];
int cycready;
unsigned int cycleh, cyclel;
unsigned int counter3,period,tcount;
int dummy;
//int dummy1,dummy2, dummy3,dummy4;


/**�֐��v���g�^�C�s���O�錾 *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void USB_CDC_Process();
unsigned long Multi(unsigned long a, unsigned int b);

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
        if(INTCONbits.TMR0IF){ //���荞�ݗv����Timer1���荞�݂Ȃ�
            INTCONbits.TMR0IF = 0; //�t���O�N���A 
            //�f�o�C�X�ڑ��m�F
            if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
                USBDeviceAttach();// USB���荞�݋���			
            // �������s
            if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)){
                if(cycready == 1){
                    
                    //cycleh = thigh[0] * 10;
                    //cyclel = tlow * 10;
                    cycleh = 8000;
                    cyclel = 4000;
                    INTCONbits.TMR0IE = 0;//TMR0���荞�ݖ���                    
                    cycready = 0;
                     
                }   
            }
         }            
        #if defined(USB_INTERRUPT)
            USBDeviceTasks();
        #endif
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

/*********** ���C���֐� **************************/
void main(void){  

    counter2 = 0;
    counter3 = 0;
    //���M����҂�
    while(counter2 < 1000){
        //Nop();
        counter2++;
    }
    counter2 = 0;

    //�s���ݒ�
 	TRISA = 0b11111111;				//RA�AADC�p����
	TRISB = 0b00110000;				//
	TRISC = 0b00000000;				//

    //USB�o�b�t�@�N���A
	for (i=0; i<sizeof(USB_Out_Buf); i++){
		USB_In_Buf[i] = 0;
        USB_Out_Buf[i] = 0;
    }
	lastTransmission = 0;		// �n���h���N���A
    USBDeviceInit();			// USB������
    USBDeviceAttach();			// USB���荞�݋���

    //�^�C�}�ݒ�
    //18F2553��1����4�N���b�N
    //1���ߎ���:1/(48MHz/4) �� 0.166us//�v���X�P�[��1:2
    //5ms(200Hz)�ق����̂ŁA5000/0.1666 = 30000�c�~�����J�E���g��)
    //65536 - 30000 �� 35536

    thigh[0] = 1000,
    tlow = 1000;
    cycleh = 500;
    cyclel = 5000;
    cycready = 0;
      
    T0CON = 0b10000000;//�^�C�}0,8�r�b�g,�v���X�P�[��1:2
    WriteTimer0(0);//�^�C�}�Z�b�g
    INTCONbits.GIE = 1;//���荞�݋@�\�L��
    INTCONbits.TMR0IE = 0;//TMR0���荞�ݖ���
        
    while(1){  
        if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
            USBDeviceAttach();// USB���荞�݋���				
        if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)) {
            USB_CDC_Process();
        } 
    }
}
void USB_CDC_Process(){
    USBDeviceTasks();
    
    if(state == 0){
        if(USBUSARTIsTxTrfReady()){
            dummy = getsUSBUSART(USB_In_Buf, 1);
        }
        if(USB_In_Buf[0] == 1){
            state++;
        }
            
    }else if(state == 1){
        counter2++;
        if(counter2>104){
            counter2 = 0;
            state++;
        }
    
    }else if(state == 2){
        if(USBUSARTIsTxTrfReady()){
            dummy = getsUSBUSART(USB_In_Buf, 10);
            //thigh[0] = USB_In_Buf[1] + (USB_In_Buf[2]*256) + (USB_In_Buf[3]*256*256) +(USB_In_Buf[4]*256*256*256);
            //thigh[0] = USB_In_Buf[1] + (USB_In_Buf[2]*1000);
            
            //memo long�^��2�o�C�g���܂ł����\���ł��Ă��Ȃ��H
            thigh[0] = 0xAABB;
            
            //����s�����Ɠ����Ȃ�
            //buf[0] = USB_In_Buf[3];
            //buf[0] = Multi(buf[0], 16);
            
            
            pl = (char*)tlow;
            state++;
        }
       
    }else if(state == 3){

         state++;
        
    }else if(state == 4){
        
        pl = (char*)tlow;        
        memcpy(pl, &USB_In_Buf[6], 1);
        pl++;
        memcpy(pl, &USB_In_Buf[7], 1);
        pl++;
        memcpy(pl, &USB_In_Buf[8], 1);
        pl++;
        memcpy(pl, &USB_In_Buf[9], 1);     
        
        tlow = 60000;
        state++;   
        
    }else if(state == 5){
        if(USBUSARTIsTxTrfReady()){
            putsUSBUSART(&thigh[0]);
            CDCTxService();
            cycready = 1;
            WriteTimer0(0);
            INTCONbits.TMR0IE = 1;//TMR0���荞�݋���
            state++;
        }
        
    }else{
        state = 0;
        
    }
    
    

    PORTCbits.RC6 = 1;
    for(counter3=0; counter3<thigh[0]; counter3++){ 
        Nop();
    }
    PORTCbits.RC6 = 0;
    for(counter3=0; counter3<tlow; counter3++){    
        Nop();
    }
    
    
}

unsigned long Multi(unsigned long a, unsigned int b){
    int i1;
    for(i1=0; i1<b; i++){
    a=a<<1;    
    USBDeviceTasks();
    }
    return a;
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