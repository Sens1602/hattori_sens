/*****************************************************************************
 * GRAPHICS PICTail PLUS BOARD MEMORY PROGRAMMER MODULE
 * This program receives Intel HEX file from UART and programs
 * flash memory installed on Graphics PICTail board.
 *
 * Please read ReadMe file for details.
 *
 *****************************************************************************
 * FileName:        FlashProgrammer.c
 * Dependencies:    FlashProgrammer.h
 * Processor:       PIC24F, PIC24H, dsPIC, PIC32
 * Compiler:       	MPLAB C30, MPLAB C32
 * Linker:          MPLAB LINK30, MPLAB LINK32
 * Company:         Microchip Technology Incorporated
 *
 * Software License Agreement
 *
 * Copyright © 2010 Microchip Technology Inc.  All rights reserved.
 * Microchip licenses to you the right to use, modify, copy and distribute
 * Software only when embedded on a Microchip microcontroller or digital
 * signal controller, which is integrated into your product or third party
 * product (pursuant to the sublicense terms in the accompanying license
 * agreement).  
 *
 * You should refer to the license agreement accompanying this Software
 * for additional information regarding your rights and obligations.
 *
 * SOFTWARE AND DOCUMENTATION ARE PROVIDED “AS IS” WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 * OF MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR
 * PURPOSE. IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR
 * OBLIGATED UNDER CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION,
 * BREACH OF WARRANTY, OR OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT
 * DAMAGES OR EXPENSES INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL,
 * INDIRECT, PUNITIVE OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA,
 * COST OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY
 * CLAIMS BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
 * OR OTHER SIMILAR COSTS.
 *
 * Date        Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * 08/04/10    Creation...
 *****************************************************************************/
#include "FlashProgrammer.h"
#include "comm_pkt.h"
#include "MainDemo.h"

#define FLASH_PROGRAMMER_COMMUNICATION_MEDIUM (COMM_PKT_MEDIA_SERIAL_PORT)

void BinaryMemoryUpload(void);
BOOL BinaryHandlePacket(void);
BYTE WriteMemory(DWORD addr, BYTE *data, WORD length);
DWORD CalculateCheckSum(DWORD addr, BYTE *buffer, DWORD range);


typedef struct
{
    DWORD addr;
    BYTE data;
}COMM_PKT_MEMORY_PAYLOAD __attribute__((packed));

typedef struct
{
    DWORD addr;
    DWORD range;
}COMM_PKT_VERIFY_PAYLOAD __attribute__((packed));

///////////////////////////////////// MAIN ////////////////////////////////////
int ProgramFlash(void)
{

 	#if defined (PIC24FJ256DA210_DEV_BOARD)
    
    // Make all the analog pins digital.
	ANSA = 0x0000;
    ANSB = 0x0000;		
    ANSC = 0x0000;		
    ANSD = 0x0000;
    ANSE = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;		
    
    #else

		#if defined (__PIC24FJ256GB210__)
		    // Make all the analog pins digital.
			ANSA = 0x0000;
		    ANSB = 0x0000;		
		    ANSC = 0x0000;		
		    ANSD = 0x0000;
		    ANSE = 0x0000;
		    ANSF = 0x0000;
		    ANSG = 0x0000;		
		#endif

    /////////////////////////////////////////////////////////////////////////////
    // ADC Explorer 16 Development Board Errata (work around 2)
    // RB15 should be output
    /////////////////////////////////////////////////////////////////////////////
    LATBbits.LATB15 = 0;
    TRISBbits.TRISB15 = 0;
	#endif
    
	
    /////////////////////////////////////////////////////////////////////////////
    #ifdef __PIC32MX__
    INTEnableSystemMultiVectoredInt();
    #endif
const DRV_SPI_INIT_DATA SPI_Init_Data = {SST25_SPI_CHANNEL, 1, 0, 0, 1, 1, 0};
    SST25Init((void*) &SPI_Init_Data);

    UARTInit();

    HardwareButtonInit();
    
    BinaryMemoryUpload();

    return (0);
}

void BinaryMemoryUpload(void)
{
    COMM_PKT_Init();

    while(!BinaryHandlePacket())
    {
        COMM_PKT_Update(FLASH_PROGRAMMER_COMMUNICATION_MEDIUM);
    }
}

BOOL BinaryHandlePacket(void)
{
    BYTE *packet;
    BYTE *payload;
    COMM_PKT_HDR *hdr;
    BYTE ack_nack;
    BOOL result = FALSE;

    if(COMM_PKT_RxPacketAvailable() == FALSE)
        return result; 

    packet = COMM_PKT_GetRxPacket();
    
    if(COMM_PKT_IsPacketValid(packet) == FALSE)
        return result;

    hdr = (COMM_PKT_HDR *)packet;
    payload = packet + sizeof(COMM_PKT_HDR);

    ack_nack = COMM_PKT_ACK;
    
    switch(hdr->cmd)
    {

    case COMM_PKT_ECHO:
        break;

    case COMM_PKT_MAX_PAYLOAD_SIZE:
        *((WORD *)payload) = COMM_PKT_RX_MAX_SIZE;
        hdr->length = 2;
        break;

    case COMM_PKT_MEMORY_ERASE:
    	ChipErase();
        break;

    case COMM_PKT_MEMORY_WRITE:
        {    
            COMM_PKT_MEMORY_PAYLOAD *memPayload = (COMM_PKT_MEMORY_PAYLOAD *)payload;

            if(!WriteMemory(memPayload->addr, (BYTE *)&memPayload->data, hdr->length - 4))
                ack_nack = COMM_PKT_NACK;

            hdr->length = 4;
        }
        break;

    case COMM_PKT_MEMORY_READ:
        {
            COMM_PKT_MEMORY_PAYLOAD *memPayload = (COMM_PKT_MEMORY_PAYLOAD *)payload;

            hdr->length = *((WORD *)(payload + 4));
            ReadArray(memPayload->addr, (BYTE *)&memPayload->data, hdr->length);
            hdr->length += 4;
        }
        break;

    case COMM_PKT_MEMORY_VERIFY:
        {
            COMM_PKT_VERIFY_PAYLOAD *verifyPayload = (COMM_PKT_VERIFY_PAYLOAD *)payload;

            *((DWORD *)payload) = CalculateCheckSum(verifyPayload->addr, payload, verifyPayload->range);
            hdr->length = 4;
        }
        break;

    case COMM_PKT_MEMORY_DONE:
        result = TRUE;
        break;

    default:
        ack_nack = COMM_PKT_NACK;
        break;
    }

    COMM_PKT_SendReply( FLASH_PROGRAMMER_COMMUNICATION_MEDIUM,
                        hdr->cmd,
                        ack_nack,
                        payload,
                        hdr->length);

    return result;
}
BYTE WriteMemory(DWORD addr, BYTE *data, WORD length)
{
    return WriteArray(addr, data, length);
}

DWORD CalculateCheckSum(DWORD addr, BYTE *buffer, DWORD range)
{
    DWORD   checksum = 0xFFFFFFFF;
    
    while(range > 0)
    {
        WORD arraySize = COMM_PKT_RX_MAX_SIZE;
        WORD    i;

        if(arraySize > range)
            arraySize = range;

        ReadArray(addr, buffer, arraySize);

        for(i = 0; i < arraySize; i++)
        {
            checksum += (DWORD)buffer[i]; 
        }

        range -= arraySize;
        addr += (DWORD)arraySize;
    }

    checksum *= -1;

    return checksum;

}
