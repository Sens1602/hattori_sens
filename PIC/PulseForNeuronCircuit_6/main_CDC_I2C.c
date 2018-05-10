/********************************************************************
 �p���X���H(������)
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
#include "delays.h"

#define Nop() {_asm nop _endasm}

/**�R���t�B�O���[�V����***********************/
//pragma�Q�l�@http://chitose6thplant.web.fc2.com/pic18f/2550/pragma_config2550.htm
//I2C�Q�l�@http://www.maroon.dti.ne.jp/koten-kairo/works/dsPIC/i2c3.html
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
char cbco = 0, cflg = 0;
char ssflg = 0, smsflg = 0, susflg = 0, mssflg = 0, msmsflg = 0, msusflg = 0, ussflg = 0, usmsflg = 0, ususflg = 0;  
int h1 = 0, h10 = 0, h100 = 0,l1 = 0, l10 = 0, l100 = 0;
int cyc1 = 0, cyc10 = 0;
int ht = 0,lt = 0;
int cycle, cycco;
USB_HANDLE    lastTransmission;
int i, j, k;

int b;
char temp;
int flag = 0, start = 0;
int counter2;
int state = 0;
unsigned int counter3;
int dummy;

/**�֐��v���g�^�C�s���O�錾 *******************/
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void USB_CDC_Process();
void Delay_s(int tm);
void Delay_ms(int tm);
void Delay_us(int tm);


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
      
    while(1){  
        if(USB_BUS_SENSE && (USBGetDeviceState() == DETACHED_STATE))
            USBDeviceAttach();// USB���荞�݋���				
        if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)) {
            USB_CDC_Process();
        } 
    }
}
void USB_CDC_Process(){
    if(state == 0){
        if(USBUSARTIsTxTrfReady()){
                putrsUSBUSART("\r\nSTART: ");
                USB_In_Buf[0] = '\0';
                cbco = 0;
                cflg = 0;
                dummy = 0;
                state++;
        }
        
    }else if(state == 1){
        if(USBUSARTIsTxTrfReady()){
           dummy = getsUSBUSART(&USB_In_Buf[cbco], 1);
        }
        if(dummy != 0){
            if(USB_In_Buf[cbco] != '\r'){
                if(USB_In_Buf[cbco] == 'G'){
                    USB_In_Buf[cbco + 1] = '\r';
                    USB_In_Buf[cbco + 2] = '\n';
                    USB_In_Buf[cbco + 3] = '\0';
                    cbco += 3;
                    cflg = 0;
                    state++;
                }else if(USB_In_Buf[cbco] == '?'){
                    USB_In_Buf[0] = '?';
                    USB_In_Buf[1] = '\r';
                    USB_In_Buf[2] = '\n';
                    USB_In_Buf[3] = '\0';
                    cbco = 4;
                    cflg = 1;
                    state++;
                }else if(cbco >= 12){
                    USB_In_Buf[cbco + 1] = '\r';
                    USB_In_Buf[cbco + 2] = '\n';
                    USB_In_Buf[cbco + 3] = '\0';
                    cbco += 3;
                    cflg = 2;
                    state++;
                }else cbco++;
            }
        }

    }else if(state == 2){
        if(USBUSARTIsTxTrfReady()){
            putUSBUSART(USB_In_Buf, cbco);
            state++;
        }
        
    }else if(state == 3){
        if(USBUSARTIsTxTrfReady()){
            if(cflg == 0){
                //�t�H�[�}�b�g
                if(USB_In_Buf[0] < '0' ) cflg = 2;
                if(USB_In_Buf[0] > '9' ) cflg = 2;
                if(USB_In_Buf[1] < '0' ) cflg = 2;
                if(USB_In_Buf[1] > '9' ) cflg = 2;
                if(USB_In_Buf[2] < '0' ) cflg = 2;
                if(USB_In_Buf[2] > '9' ) cflg = 2;          
                if(USB_In_Buf[4] != 's') cflg = 2;
                if(USB_In_Buf[5] < '0' ) cflg = 2;
                if(USB_In_Buf[5] > '9' ) cflg = 2;
                if(USB_In_Buf[6] < '0' ) cflg = 2;
                if(USB_In_Buf[6] > '9' ) cflg = 2;
                if(USB_In_Buf[7] < '0' ) cflg = 2;
                if(USB_In_Buf[7] > '9' ) cflg = 2;
                if(USB_In_Buf[9] != 's') cflg = 2;   
                if(USB_In_Buf[10] < '0' ) cflg = 2;
                if(USB_In_Buf[10] > '9' ) cflg = 2;
                if(USB_In_Buf[11] < '0' ) cflg = 2;
                if(USB_In_Buf[11] > '9' ) cflg = 2;             
            }
            if(cflg == 0){
                state++;
            }
            if(cflg == 1) state = 0;
            if(cflg == 2) {                
                putrsUSBUSART("ERROR");
                state = 0;
            }        
        }
    }else if(state == 4){
        if(USBUSARTIsTxTrfReady()){
            if(USB_In_Buf[3] == ' ') cflg = 10;
            if(USB_In_Buf[3] == 'm') cflg = 20;
            if(USB_In_Buf[3] == 'u') cflg = 30;
            if(USB_In_Buf[8] == ' ') cflg += 1;
            if(USB_In_Buf[8] == 'm') cflg += 2;
            if(USB_In_Buf[8] == 'u') cflg += 3;
            if(cflg == 0) {                
                putrsUSBUSART("ERROR");
                state = 0;
            }
            state++;
        }
    }else if(state == 5){
        if(USBUSARTIsTxTrfReady()){
            h1 = (int)USB_In_Buf[2] - 48;
            h10 = (int)USB_In_Buf[1] - 48;
            h100 = (int)USB_In_Buf[0] - 48;
            l1 = (int)USB_In_Buf[7] - 48;
            l10 = (int)USB_In_Buf[6] - 48;
            l100 = (int)USB_In_Buf[5] - 48;
            cyc1 = (int)USB_In_Buf[11] - 48;
            cyc10 = (int)USB_In_Buf[10] - 48;               
                
            if(cflg == 11){
                ssflg = 1;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 12){
                ssflg = 0;
                smsflg = 1;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 13){
                ssflg = 0;
                smsflg = 0;
                susflg = 1;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 21){
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 1;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 22){    
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 1;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 23){ 
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 1;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 31){
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 1;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 32){
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 1;
                ususflg = 0;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;
                cycle = cyc1 + cyc10*10;
                state++;
            }else if(cflg == 33){
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 1;
                cycco = 0;
                ht =h1 + h10*10 + h100*100;
                lt = l1 + l10*10 + l100*100;     
                cycle = cyc1 + cyc10*10;
                state++;
            }else{                
                ssflg = 0;
                smsflg = 0;
                susflg = 0;
                mssflg = 0;
                msmsflg = 0;
                msusflg = 0;
                ussflg = 0;
                usmsflg = 0;
                ususflg = 0;
                cycco = 0;
                putrsUSBUSART("ERROR");
                state = 0;
            }
        }  
    }else if(state == 6){
        if(USBUSARTIsTxTrfReady()){
            putrsUSBUSART("ACCEPT");
            state = 0;
        }
    }
    CDCTxService();
    
    if(ssflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_s(ht);
            PORTCbits.RC6 = 0;
            Delay_s(lt);
            cycco++;
        }
    }else if(smsflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_s(ht);
            PORTCbits.RC6 = 0;
            Delay_ms(lt);
            cycco++;
        }
    }else if(susflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_s(ht);
            PORTCbits.RC6 = 0;
            Delay_us(lt);
            cycco++;
        }        
    }else if(mssflg){
        if(cycco<cycle){        
            PORTCbits.RC6 = 1;
            Delay_ms(ht);
            PORTCbits.RC6 = 0;
            Delay_s(lt);
            cycco++;
        }
    }else if(msmsflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_ms(ht);
            PORTCbits.RC6 = 0;
            Delay_ms(lt);
            cycco++;
        }
    }else if(msusflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_ms(ht);
            PORTCbits.RC6 = 0;
            Delay_us(lt);
            cycco++;
        }
    }else if(ussflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_us(ht);
            PORTCbits.RC6 = 0;
            Delay_s(lt);
            cycco++;
        }
    }else if(usmsflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_us(ht);
            PORTCbits.RC6 = 0;
            Delay_ms(lt);        
            cycco++;
        }
    }else if(ususflg){
        if(cycco<cycle){
            PORTCbits.RC6 = 1;
            Delay_us(ht);
            PORTCbits.RC6 = 0;
            Delay_us(lt);        
            cycco++;
        }
    }else{
        PORTCbits.RC6 = 0;
    }
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
        //1us?
        Delay1TCY();
        Delay1TCY();
        Delay1TCY();
        Delay1TCY();
        Delay1TCY();
        Delay1TCY(); 
        Delay1TCY(); 
    }    
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