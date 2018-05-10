/******************************************************************************
 *
 *               Microchip Memory Disk Drive File System
 *
 ******************************************************************************
 * FileName:        SD-SPI.c
 * Dependencies:    SD-SPI.h
 *               string.h
 *               FSIO.h
 *                  FSDefs.h
 * Processor:       PIC18/PIC24/dsPIC30/dsPIC33
 * Compiler:        C18/C30
 * Company:         Microchip Technology, Inc.
 * Version:         1.0.0
 *
 * Software License Agreement
 *
 * The software supplied herewith by Microchip Technology Incorporated
 * (the “Company”) for its PICmicro® Microcontroller is intended and
 * supplied to you, the Company’s customer, for use solely and
 * exclusively on Microchip PICmicro Microcontroller products. The
 * software is owned by the Company and/or its supplier, and is
 * protected under applicable copyright laws. All rights are reserved.
 * Any use in violation of the foregoing restrictions may subject the
 * user to criminal sanctions under applicable laws, as well as to
 * civil liability for the breach of the terms and conditions of this
 * license.
 *
 * THIS SOFTWARE IS PROVIDED IN AN “AS IS” CONDITION. NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
 * TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,
 * IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
*****************************************************************************/

#include "FSIO.h"
#include "FSDefs.h"
#include "SD-SPI.h"
#include "string.h"

/******************************************************************************
 * Global Variables
 *****************************************************************************/
#ifdef USE_PIC18
   #pragma udata dataBuffer
#endif

BYTE gDataBuffer[MEDIA_SECTOR_SIZE];

#ifdef USE_PIC18
   #pragma udata FATBuffer
#endif

BYTE gFATBuffer[MEDIA_SECTOR_SIZE];

#pragma udata

DISK gDiskData;






/*********************************************************************
 * sdmmc_cmdtable
 * - Provides information for all the sdmmc commands that we support
 * 
 * Notes: We turn off the CRC as soon as possible, so the commands with
 *        0xFF don't need to be calculated in runtime 
 *********************************************************************/
#ifdef USE_PIC18
   const rom typMMC_CMD sdmmc_cmdtable[] =
#else
   const typMMC_CMD sdmmc_cmdtable[] =
#endif
{
   // cmd               crc      response
   {cmdGO_IDLE_STATE,      0x95,   R1, NODATA},
   {cmdSEND_OP_COND,      0xF9,   R1, NODATA},
   {cmdSEND_CSD,         0xAF,   R1, MOREDATA},
   {cmdSEND_CID,         0x1B,   R1, MOREDATA},
   {cmdSTOP_TRANSMISSION,   0xC3,   R1, NODATA},
   {cmdSEND_STATUS,      0xAF,   R2, NODATA},
   {cmdSET_BLOCKLEN,      0xFF,   R1, NODATA},
   {cmdREAD_SINGLE_BLOCK,   0xFF,   R1, MOREDATA},
   {cmdREAD_MULTI_BLOCK,   0xFF,   R1, MOREDATA},
   {cmdWRITE_SINGLE_BLOCK,   0xFF,   R1, MOREDATA},
   {cmdWRITE_MULTI_BLOCK,   0xFF,   R1, MOREDATA}, 
   {cmdTAG_SECTOR_START,   0xFF,   R1, NODATA},
   {cmdTAG_SECTOR_END,      0xFF,   R1, NODATA},
   {cmdUNTAG_SECTOR,      0xFF,   R1, NODATA},
   {cmdTAG_ERASE_GRP_START, 0xFF,   R1, NODATA},
   {cmdTAG_ERASE_GRP_END,   0xFF,   R1, NODATA},
   {cmdUNTAG_ERASE_GRP,   0xFF,   R1, NODATA},
   {cmdERASE,            0xDF,   R1b, NODATA},
   {cmdLOCK_UNLOCK,      0x89,   R1b, NODATA},  
   {cmdSD_APP_OP_COND,      0xE5,   R1, NODATA},
   {cmdAPP_CMD,         0x73,   R1, NODATA},
   {cmdREAD_OCR,         0x25,   R3, NODATA},
   {cmdCRC_ON_OFF,         0x25,   R1, NODATA}
};




/******************************************************************************
 * Prototypes
 *****************************************************************************/

BYTE DISKmount( DISK *dsk);
BYTE LoadMBR(DISK *dsk);
BYTE LoadBootSector(DISK *dsk);
extern void Delayms(BYTE milliseconds);
BYTE ReadMedia(void);
BYTE MediaInitialize(void);
MMC_RESPONSE SendMMCCmd(BYTE cmd, DWORD address);

#ifdef USE_PIC24
   BYTE ReadByte( BYTE* pBuffer, WORD index );
   WORD ReadWord( BYTE* pBuffer, WORD index );
   DWORD ReadDWord( BYTE* pBuffer, WORD index );
   
   void OpenSPIM ( unsigned int sync_mode, unsigned char bus_mode, unsigned char smp_phase);
   void CloseSPIM( void );
   unsigned char WriteSPIM( unsigned char data_out );
#elif defined USE_PIC18
   void OpenSPIM ( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase);
   void CloseSPIM( void );
   unsigned char WriteSPIM( unsigned char data_out );
#endif

/******************************************************************************
 * Function:        BYTE MediaDetect(void)
 *
 * PreCondition:    InitIO() function has been executed.
 *
 * Input:           void
 *
 * Output:          TRUE   - Card detected
 *                  FALSE   - No card detected
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 *****************************************************************************/
BYTE MediaDetect()
{
   // give it a debounce here
   Delayms(10);

   return(!SD_CD);
}//end MediaDetect


/******************************************************************************
 * Function:        BYTE InitIO(void)
 *
 * PreCondition:    None
 *
 * Input:           void
 *
 * Output:          TRUE   - Card initialized
 *                  FALSE   - Card not initialized
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 *****************************************************************************/

BYTE InitIO (void)
{
   // Turn off the card
   MMC_OFF;
   SD_CD_TRIS = INPUT;            //Card Detect - input
   SD_CS = 1;                     //Initialize Chip Select line
   SD_CS_TRIS = OUTPUT;            //Card Select - output
   SD_WE_TRIS = INPUT;            //Write Protect - input

   return  (DISKmount (&gDiskData) == CE_GOOD);
}
      

/******************************************************************************
 * Function:        BYTE MediaInitialize(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          TRUE                    - Everything is fine
 *                  FALSE      - Communication was not established
 *
 * Overview:        MediaInitialize initializes the media card and supporting variables.
 *
 * Note:            goto's were used for errro conditions
 *****************************************************************************/
BYTE MediaInitialize(void)
{
   WORD timeout;
   BYTE       status = TRUE;
   MMC_RESPONSE    response; 

   SD_CS = 1;               //Initialize Chip Select line

   MMC_ON;

   //Media powers up in the open-drain mode and cannot handle a clock faster
   //than 400kHz. Initialize SPI port to slower than 400kHz
   OpenSPIM(SYNC_MODE_SLOW, BUS_MODE, SMP_PHASE);

   // let the card power on and initialize
   Delayms(100);

   //Media requires 80 clock cycles to startup [8 clocks/BYTE * 10 us]
   for(timeout=0; timeout<10; timeout++)
      mSend8ClkCycles();

   SD_CS = 0;
   
   Delayms(1);

   // Send CMD0 to reset the media
   response = SendMMCCmd(GO_IDLE_STATE,0x0);

   if(response.r1._byte == MMC_BAD_RESPONSE)
   {
      status = FALSE;      // we have not got anything back from the card
      goto InitError;
   }

   // See if the device is ready
   if((response.r1._byte & 0xF7) != 0x01)                  //0x01=No Err&Busy Initializing
   {
      status = FALSE;      // we have not got anything back from the card
      goto InitError;
   }

   // According to spec cmd1 must be repeated until the card is fully initialized
   timeout = 0xFFF;

   do
   {
      response = SendMMCCmd(SEND_OP_COND,0x0);
      timeout--;
   }while(response.r1._byte != 0x00 && timeout != 0);

   // see if it failed
   if(timeout == 0)
   {
      status = FALSE;      // we have not got anything back from the card
      goto InitError;
   }
   else      
      OpenSPIM(SYNC_MODE_FAST, BUS_MODE, SMP_PHASE);


   // Turn off CRC7 if we can, might be an invalid cmd on some cards (CMD59)
   response = SendMMCCmd(CRC_ON_OFF,0x0);

   // Now set the block length to media sector size. It should be already
   SendMMCCmd(SET_BLOCKLEN,MEDIA_SECTOR_SIZE);

   // read it a couple times until we sucessfully read 
   for(timeout = 0xFF; timeout > 0 && SectorRead(0x0,gDataBuffer) != TRUE; timeout--)
   {;}

   // see if we had an issue
   if(timeout == 0)
   {
      status = FALSE;
      goto InitError;
   }

   return(status);

InitError:
   SD_CS = 1;                               // deselect the devices

   // Turn it off
   MMC_OFF;

   return(status);
}//end MediaInitialize

/******************************************************************************
 * Function:        void ShutdownMedia(void)
 *
 * PreCondition:    None
 *
 * Input:           void
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Turn off the card
 *
 * Note:            None
 *****************************************************************************/

void ShutdownMedia(void)
{
   // close the spi bus
   CloseSPIM();

   // deselect the device
   SD_CS = 1;

   // Turn off the card
   MMC_OFF;
}

/******************************************************************************
 * Function:        void SendMMCCmd(BYTE cmd, DWORD address)
 *
 *
 * Input:           None
 *
 * Output:          response            - Response from the card
 *                                      - 0x00 or 0x01 Command received 
 *                                        successfully, else, command failed
 *                  -Bit 0              - In idle state if 1
 *                  -Bit 1              - Erase Reset if 1
 *                  -Bit 2              - Illgal Command if 1
 *                  -Bit 3              - Com CRC Error if 1
 *                  -Bit 4              - Erase Sequence Error if 1
 *                  -Bit 5              - Address Error if 1
 *                  -Bit 6              - Parameter Error if 1
 *                  -Bit 7              - Not used, always '0'
 *
 * Side Effects:    None
 *
 * Overview:        SendMMCCmd prepares the command packet and sends it out
 *                  over the SPI interface. Response data of type 'R1' (see
 *                  SD or MMC product manuals) is returned.
 *
 * Note:            MMC_CS is not set at the end of this function.
 *                  if the command has no data stage, call macro
 *                  mSendMediaCmd_NoData(), it reasserts MMC_CS to 1.
 *                  If the command has a data stage, MMC_CS must be
 *                  reasserted after the data transfer stage is complete.
 *                  See SectorRead and SectorWrite for examples.
 *****************************************************************************/
MMC_RESPONSE SendMMCCmd(BYTE cmd, DWORD address)
{
   WORD timeout = 0x8;
   BYTE index;
   MMC_RESPONSE    response;
   CMD_PACKET  CmdPacket;

   SD_CS = 0;                           //Card Select

   // Copy over data
   CmdPacket.cmd        = sdmmc_cmdtable[cmd].CmdCode;
   CmdPacket.address    = address;
   CmdPacket.crc        = sdmmc_cmdtable[cmd].CRC;       // Calc CRC here

   CmdPacket.TRANSMIT_BIT = 1;             //Set Tranmission bit

   WriteSPIM(CmdPacket.cmd);                //Send Command
   WriteSPIM(CmdPacket.addr3);              //Most Significant Byte
   WriteSPIM(CmdPacket.addr2);
   WriteSPIM(CmdPacket.addr1);
   WriteSPIM(CmdPacket.addr0);              //Least Significant Byte
   WriteSPIM(CmdPacket.crc);                //Send CRC

   // see if we are going to get a response
   if(sdmmc_cmdtable[cmd].responsetype == R1 || sdmmc_cmdtable[cmd].responsetype == R1b)
   {
      do
      {
         response.r1._byte = ReadMedia();
         timeout--;
      }while(response.r1._byte == MMC_FLOATING_BUS && timeout != 0);
   }
   else if(sdmmc_cmdtable[cmd].responsetype == R2)
   {
      ReadMedia();

      response.r2._byte1 = ReadMedia();
      response.r2._byte0 = ReadMedia();
   }

   if(sdmmc_cmdtable[cmd].responsetype == R1b)
   {
      response.r1._byte = 0x00;

      for(index =0; index < 0xFF && response.r1._byte == 0x00; index++)
      {
         timeout = 0xFFFF;

         do
         {
            response.r1._byte = ReadMedia();
            timeout--;
         }while(response.r1._byte == 0x00 && timeout != 0);
      }
   }

   mSend8ClkCycles();                      //Required clocking (see spec)

   // see if we are expecting data or not
   if(!(sdmmc_cmdtable[cmd].moredataexpected))
      SD_CS = 1;

   return(response);
}


/******************************************************************************
 * Function:        BYTE SectorRead(DWORD sector_addr, BYTE *buffer)
 *
 * PreCondition:    None
 *
 * Input:           sector_addr - Sector address, each sector contains 512-byte
 *                  buffer      - Buffer where data will be stored
 *
 * Output:          TRUE      - Sector read
 *               FALSE      - Sector could not be read
 *
 * Side Effects:    None
 *
 * Overview:        SectorRead reads 512 bytes of data from the card starting
 *                  at the sector address specified by sector_addr and stores
 *                  them in the location pointed to by 'buffer'.
 *
 * Note:            The card expects the address field in the command packet
 *                  to be a byte address. Therefore the sector_addr must first
 *                  be converted to byte address. This is accomplished by
 *                  shifting the address left 9 times.
 *****************************************************************************/
BYTE SectorRead(DWORD sector_addr, BYTE* buffer)
{
   WORD index;
   WORD delay;
   MMC_RESPONSE    response;
   BYTE data_token;
   BYTE status = TRUE;
   DWORD   new_addr;

   // send the cmd
   new_addr = sector_addr << 9;
   response = SendMMCCmd(READ_SINGLE_BLOCK,new_addr);

   // Make sure the command was accepted
   if(response.r1._byte != 0x00)
   {
      response = SendMMCCmd (READ_SINGLE_BLOCK,new_addr);
      if(response.r1._byte != 0x00)
         status = FALSE;
   }
   else
   {
      index = 0x2FF;
      
      // Timing delay- at least 8 clock cycles
      delay = 0x40;
      while (delay)
         delay--;
      
      //Now, must wait for the start token of data block
      do
      {
            data_token = ReadMedia();
         index--;   
   
         delay = 0x40;
         while (delay)
            delay--;

      }while((data_token == MMC_FLOATING_BUS) && (index != 0));

      // Hopefully that zero is the datatoken
      if((index == 0) || (data_token != DATA_START_TOKEN))
      {
         status = FALSE;
      }
      else
      {
         for(index = 0; index < MEDIA_SECTOR_SIZE; index++)      //Reads in 512-byte of data
         {
               buffer[index] = ReadMedia();
         }
         // Now ensure CRC
         mReadCRC();               //Read 2 bytes of CRC
         //status = mmcCardCRCError;
      }

      mSend8ClkCycles();            //Required clocking (see spec)
   }

   SD_CS = 1;

   return(status);
}//end SectorRead

/******************************************************************************
 * Function:        BYTE SectorWrite(DWORD sector_addr, BYTE *buffer, BYTE allowWriteToZero)
 *
 * PreCondition:    None
 *
 * Input:           sector_addr - Sector address, each sector contains 512 bytes
 *                  buffer      - Buffer that data will be read from
 *               allowWriteToZero   - allows write to the MBR sector
 *
 * Output:          TRUE      - Sector written
 *               FALSE      - Sector could not be written
 *
 * Side Effects:    None
 *
 * Overview:        SectorWrite sends 512 bytes of data from the location
 *                  pointed to by 'buffer' to the card starting
 *                  at the sector address specified by sector_addr.
 *
 * Note:            The card expects the address field in the command packet
 *                  to be byte address. Therefore the sector_addr must first
 *                  be converted to byte address. This is accomplished by
 *                  shifting the address left 9 times.
 *****************************************************************************/
BYTE SectorWrite(DWORD sector_addr, BYTE* buffer, BYTE allowWriteToZero)
{
   WORD index;
    BYTE data_response;
   MMC_RESPONSE    response; 
    BYTE status = TRUE;

   if (sector_addr == 0 && allowWriteToZero == FALSE)
      status = FALSE;
   else
   {
      // send the cmd
      response = SendMMCCmd(WRITE_SINGLE_BLOCK,(sector_addr << 9));

      // see if it was accepted
      if(response.r1._byte != 0x00)
         status = FALSE;
      else
      {
         WriteSPIM(DATA_START_TOKEN);                 //Send data start token

         for(index = 0; index < MEDIA_SECTOR_SIZE; index++)                    //Send 512 bytes of data
            WriteSPIM(buffer[index]);

         // calc crc
         mSendCRC();                                 //Send 2 bytes of CRC

         data_response = ReadMedia();                //Read response

         if((data_response & 0x0F) != DATA_ACCEPTED)
         {
            status = FALSE;
         }
         else
         {
            index = 0;            //using i as a timeout counter

            do                  //Wait for write completion
            {
               data_response = ReadMedia();
               index++;
            }while((data_response == 0x00) && (index != 0));

            if(index == 0)                                  //if timeout first
               status = FALSE;
         }

         mSend8ClkCycles();
      }

      SD_CS = 1;

   } // Not writing to 0 sector

   return(status);
} //end SectorWrite


/******************************************************************************
 * Function:        BYTE WriteProtectState(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          BYTE    - Returns the status of the "write enabled" pin
 *
 * Side Effects:    None
 *
 * Overview:        Determines if the card is write-protected
 *
 * Note:            None
 *****************************************************************************/
BYTE WriteProtectState(void)
{
//   return(!SD_WE);
    return(SD_WE);
}


/******************************************************************************
 * Function:        BYTE Delayms(void)
 *
 * PreCondition:    None
 *
 * Input:           BYTE millisecons   - Number of ms to delay
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Delays- used for SPI timing
 *
 * Note:            None.
 *****************************************************************************/

void Delayms(BYTE milliseconds)
{
   BYTE    ms;
   DWORD   count;
   
   ms = milliseconds;
   while (ms--)
   {
      count = MILLISECDELAY;

      while (count--)
      {
         ;
      }
   }
   Nop();
   return;
}


/******************************************************************************
 * Function:        BYTE ReadMedia(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          BYTE    - One byte of data read in from SPI port
 *
 * Side Effects:    None
 *
 * Overview:        ReadMedia reads in one byte of data while sending out 0xFF
 *
 * Note:            Could not use ReadSPI because it initializes SSPBUF to
 *                  0x00. The card expects 0xFF (see spec).
 *****************************************************************************/
BYTE ReadMedia(void)
{
   SPIBUF = 0xFF;                              //Data Out - Logic ones
   while(!SPISTAT_RBF);                     //Wait until cycle complete
   return(SPIBUF);                             //Return with byte read 
}//end ReadMedia


/******************************************************************************
 * Function:        BYTE DISKmount ( DISK *dsk)
 *
 * PreCondition:    Called from FSInit()
 *
 * Input:           dsk      - The disk to be mounted
 *
 * Output:          CE_GOOD       - Disk mounted
 *               CE_INIT_ERROR   - Initialization error has occured
 *
 * Side Effects:    None
 *
 * Overview:        Will mount only the first partition on the disk/card
 *
 * Note:            None
 *****************************************************************************/

BYTE DISKmount( DISK *dsk)
{
   BYTE        error = CE_GOOD;

   dsk->mount = FALSE; // default invalid
   dsk->buffer = gDataBuffer;    // assign buffer

   // Initialize the sdmmc card
   if(MediaInitialize() != TRUE)
   {
      error = CE_INIT_ERROR;
   }
   else
   {
      // Load the Master Boot Record (partition)
      if((error = LoadMBR(dsk)) == CE_GOOD)
      {
         // Now the boot sector
         if((error = LoadBootSector(dsk)) == CE_GOOD)
            dsk->mount = TRUE; // Mark that the DISK mounted successfully
      }

   } // -- Initialize the SDMMC card

   return(error);
} // -- mount

/******************************************************************************
 * Function:        CETYPE LoadMBR ( DISK *dsk)
 *
 * PreCondition:    Called from DISKmount
 *
 * Input:           dsk      - The disk containing the master boot record to be loaded
 *
 * Output:          CE_GOOD          - MBR loaded successfully
 *                  CE_BAD_SECTOR_READ   - A bad read occured of a sector 
 *               CE_BAD_PARTITION   - The boot record is bad
 *
 * Side Effects:    None
 *
 * Overview:        Loads the MBR and extracts the necessary information
 *
 * Note:            None
 *****************************************************************************/

BYTE LoadMBR(DISK *dsk)
{
    PT_MBR  Partition;
    BYTE error = CE_GOOD;
    BYTE type;
   BootSec BSec;

    // Get the partition table from the MBR
    if ( SectorRead( FO_MBR, dsk->buffer) != TRUE) 
        error = CE_BAD_SECTOR_READ;
    else
    {
      // Check if the card has no MBR
      BSec = (BootSec) dsk->buffer;

      if((BSec->Signature0 == FAT_GOOD_SIGN_0) && (BSec->Signature1 == FAT_GOOD_SIGN_1))
        {
         // Technically, the OEM name is not for indication
         // The alternative is to read the CIS from attribute
         // memory.  See the PCMCIA metaformat for more details
#ifdef USE_PIC24
            if (ReadByte( dsk->buffer, BSI_FSTYPE ) == 'F' && \
            ReadByte( dsk->buffer, BSI_FSTYPE + 1 ) == 'A' && \
            ReadByte( dsk->buffer, BSI_FSTYPE + 2 ) == 'T' && \
            ReadByte( dsk->buffer, BSI_FSTYPE + 3 ) == '1' && \
            ReadByte( dsk->buffer, BSI_BOOTSIG) == 0x29)
#else
         if (BSec->FAT.FAT_16.BootSec_FSType[0] == 'F' && \
            BSec->FAT.FAT_16.BootSec_FSType[1] == 'A' && \
            BSec->FAT.FAT_16.BootSec_FSType[2] == 'T' && \
            BSec->FAT.FAT_16.BootSec_FSType[3] == '1' && \
            BSec->FAT.FAT_16.BootSec_BootSig == 0x29)
#endif
         {
            dsk->firsts = 0;
            dsk->type = FAT16;
         }
        }
      // assign it the partition table strucutre
       Partition = (PT_MBR)dsk->buffer;
    
        // Ensure its good
        if((Partition->Signature0 != FAT_GOOD_SIGN_0) || (Partition->Signature1 != FAT_GOOD_SIGN_1))
        {
            error = CE_BAD_PARTITION;
        }
        else
        {    
            /*    Valid Master Boot Record Loaded   */

            // Get the 32 bit offset to the first partition 
            dsk->firsts = Partition->Partition0.PTE_FrstSect; 

            // check if the partition type is acceptable
              type = Partition->Partition0.PTE_FSDesc;

            switch (type)
            {
                case 0x01:
                    dsk->type = FAT12;
                    break;
               
            case 0x04:
                case 0x06:
                case 0x0E:
                    dsk->type = FAT16;
                    break;
                
                case 0x0B:
                case 0x0C:
                    dsk->type = FAT32; // and error out            
                    error = CE_CARDFAT32;
                    break;
                    
                default:
                    error = CE_BAD_PARTITION;
            } // switch
        }
    }

    return(error);
}// -- LoadMBR


/******************************************************************************
 * Function:        BYTE LoadBootSector (DISK *dsk)
 *
 * PreCondition:    Called from DISKmount
 *
 * Input:           dsk      - The disk containing the boot sector
 *                  
 * Output:          CE_GOOD          - Boot sector loaded
 *                  CE_BAD_SECTOR_READ   - A bad read occured of a sector 
 *               CE_NOT_FORMATTED   - The disk is of an unsupported format
 *               CE_CARDFAT12      - FAT12 during intial testing we are not supporting FAT12
 *               CE_CARDFAT32      - FAT 32 - card not supported
 *
 * Side Effects:    None
 *
 * Overview:        Load the boot sector information and extract the necessary information
 *
 * Note:            None
 *****************************************************************************/


BYTE LoadBootSector(DISK *dsk)
{
    WORD     RootDirSectors;
    DWORD     TotSec,DataSec;
    BYTE      error = CE_GOOD;
    BootSec      BSec;        // boot sector, assume its FAT16 til we know better

   WORD   BytesPerSec;
                    
    // Get the Boot sector
    if ( SectorRead( dsk->firsts, dsk->buffer) != TRUE) 

        error = CE_BAD_SECTOR_READ;  
    else
    {
        // Assign the type
        BSec = (BootSec)dsk->buffer;
    
        //Verify the Boot Sector is valid
        if((BSec->Signature0 != FAT_GOOD_SIGN_0) || (BSec->Signature1 != FAT_GOOD_SIGN_1))
        {
            error = CE_NOT_FORMATTED;
        }
        else
        {     
            // determine the number of sectors in one FAT
         #ifdef USE_PIC18
              dsk->fatsize = BSec->FAT.FAT_16.BootSec_SPF;  
         #else
            dsk->fatsize = ReadWord( dsk->buffer, BSI_SPF ); 
         #endif

         // Figure out the total number of sectors
         #ifdef USE_PIC18
              if(BSec->FAT.FAT_16.BootSec_TotSec16 != 0)
              {
                  TotSec = BSec->FAT.FAT_16.BootSec_TotSec16;
              }
               else
               {
                   TotSec = BSec->FAT.FAT_16.BootSec_TotSec32;
               }
         #else
              TotSec = ReadWord( dsk->buffer, BSI_TOTSEC16 );
            if( TotSec == 0 )
               TotSec = ReadDWord( dsk->buffer, BSI_TOTSEC32 );
         #endif
                                         

         #ifdef USE_PIC18
              // get the full partition/drive layout
              // determine the size of a cluster
              dsk->SecPerClus = BSec->FAT.FAT_16.BootSec_SPC;
                         
              // determine fat, root and data lbas
              // FAT = first sector in partition (boot record) + reserved records
              dsk->fat        = dsk->firsts + BSec->FAT.FAT_16.BootSec_ResrvSec;
              
              // fatcopy is the number of FAT tables 
              dsk->fatcopy    = BSec->FAT.FAT_16.BootSec_FATCount;
   
              // maxroot is the maximum number of entries in the root directory
              dsk->maxroot    = BSec->FAT.FAT_16.BootSec_RootDirEnts;    
              
               // root Is the sector location of the root directory
               dsk->root = dsk->fat + (dsk->fatcopy * dsk->fatsize);
   
            BytesPerSec = BSec->FAT.FAT_16.BootSec_BPS;
   
            if( BytesPerSec == 0 || (BytesPerSec & 1) == 1 ) //cannot be 0 or odd
               return( CE_NOT_FORMATTED );
                              
              RootDirSectors = ((BSec->FAT.FAT_16.BootSec_RootDirEnts * 32) + (BSec->FAT.FAT_16.BootSec_BPS - 1)) / BSec->FAT.FAT_16.BootSec_BPS;                    

         #else

            dsk->SecPerClus = ReadByte( dsk->buffer, BSI_SPC );
                         
              // determine fat, root and data lbas
              // FAT = first sector in partition (boot record) + reserved records
              dsk->fat        = dsk->firsts + ReadWord( dsk->buffer, BSI_RESRVSEC );
              
              // fatcopy is the number of FAT tables 
              dsk->fatcopy    = ReadByte( dsk->buffer, BSI_FATCOUNT );
   
              // maxroot is the maximum number of entries in the root directory
              dsk->maxroot    = ReadWord( dsk->buffer, BSI_ROOTDIRENTS );   
              
               // root Is the sector location of the root directory
               dsk->root = dsk->fat + (dsk->fatcopy * dsk->fatsize);
   
            BytesPerSec = ReadWord( dsk->buffer, BSI_BPS );
   
            if( BytesPerSec == 0 || (BytesPerSec & 1) == 1 ) //cannot be 0 or odd
               return( CE_NOT_FORMATTED );
                              
              RootDirSectors = ((dsk->maxroot * 32) + (BytesPerSec - 1)) / BytesPerSec;               
         #endif
   
         // figure out how many data sectors there are
           DataSec = TotSec - (dsk->root + RootDirSectors) + dsk->firsts + 2;
              
          dsk->maxcls = DataSec / dsk->SecPerClus;

           // Calculate FAT type
           if(dsk->maxcls < 4085)
           {
               /* Volume is FAT12 */
               dsk->type = FAT12;
           }
           else 
         {
            if(dsk->maxcls < 65525)
              {
                  /* Volume is FAT16 */
                  dsk->type = FAT16;
              }
              else
                  /* Volume is FAT32 */
                  // We don't support FAT32
                  error = CE_CARDFAT32;     
         }

           // DATA = ROOT + (MAXIMUM ROOT *32 / 512) 
           dsk->data = dsk->root + ( dsk->maxroot >> 4); // assuming maxroot % 16 == 0
           
           // make sure that we can read in a complete sector
         #ifdef USE_PIC18
              if(BSec->FAT.FAT_16.BootSec_BPS != MEDIA_SECTOR_SIZE)
         #else
              if(BytesPerSec != MEDIA_SECTOR_SIZE)
         #endif
               error = CE_NOT_FORMATTED;
      }
    }

   return(error);
}


#ifdef USE_PIC24

/******************************************************************************
 * Function:        void WriteSPIM (void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Disables the SPI module
 *
 * Note:            None
 *****************************************************************************/

void CloseSPIM( void )
{
   SPISTAT &= 0x7FFF;               // disable synchronous serial port
}
   
   
/******************************************************************************
 * Function:        void OpenSPIM( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase)
 *
 * PreCondition:    None
 *
 * Input:           sync_mode   - Sets synchronization
 *               bus_mode   - Sets bus operating mode
 *               smp_phase   - Set sampling phase
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Enables SPI module
 *
 * Note:            None
 *****************************************************************************/   

void OpenSPIM( unsigned int sync_mode, unsigned char bus_mode, unsigned char smp_phase)
{
   SPISTAT = 0x0000;               // power on state 
   SPICON1 = 0x0000;                // power on state
   SPICON1 |= sync_mode;          // select serial mode 
   SPICON1 |= smp_phase;          // select data input sample phase

   switch( bus_mode )
   {
      case 0:                       // SPI1 bus mode 0,0
         SPICON1bits.CKE = 1;       // data transmitted on rising edge
         break;    
      case 2:                       // SPI1 bus mode 1,0
         SPICON1bits.CKP = 1;       // clock idle state high
         break;
      case 3:                       // SPI1 bus mode 1,1
         SPICON1bits.CKP = 1;       // clock idle state high
         SPICON1bits.CKE = 0;
         break;
      default:                      // default SPI1 bus mode 0,1
         break;
}

   switch( sync_mode )
   {
      case 4:                       // slave mode w /SS1 enable
         SD_CS_TRIS = 1;       // define /SS1 pin as input
      case 5:                       // slave mode w/o /SS1 enable
         SPICLOCK = 1;       // define clock pin as input
         SPICON1bits.SMP = 0;       // must be cleared in slave SPI mode
         break;
      default:                      // master mode, define clock pin as output
         SPICLOCK = 0;       // define clock pin as output
         break;
   }

   SPIOUT = 0;                  // define SDO1 as output (master or slave)
   SPIIN = 1;                  // define SDI1 as input (master or slave)
   SPISTATbits.SPIEN = 1;             // enable synchronous serial port 
}
   
/******************************************************************************
 * Function:        unsigned char WriteSPIM ( unsigned char data_out)
 *
 * PreCondition:    None
 *
 * Input:           data_out   - data to transmit
 *
 * Output:          0 if successful, -1 otherwise
 *
 * Side Effects:    None
 *
 * Overview:        Writes a byte on the SPI
 *
 * Note:            None
 *****************************************************************************/   
   
unsigned char WriteSPIM( unsigned char data_out )
{
   BYTE   clear;
   SPIBUF = data_out;          // write byte to SSP1BUF register
   while( !SPISTATbits.SPIRBF ); // wait until bus cycle complete
   clear = SPIBUF; 
   return ( 0 );                // return non-negative#
}
   

/******************************************************************************
 * Function:        BYTE ReadByte(BYTE * pBuffer, WORD index)
 *
 * PreCondition:    None
 *
 * Input:           pBuffer   - pointer to a buffer to read from
 *               index   - index in the buffer to read to
 *
 * Output:          BYTE   - the byte read
 *
 * Side Effects:    None
 *
 * Overview:        Reads a byte from a buffer
 *
 * Note:            None
 *****************************************************************************/

BYTE ReadByte( BYTE* pBuffer, WORD index )
{
   return( pBuffer[index] );
}
   

/******************************************************************************
 * Function:        BYTE ReadWord(BYTE * pBuffer, WORD index)
 *
 * PreCondition:    None
 *
 * Input:           pBuffer   - pointer to a buffer to read from
 *               index   - index in the buffer to read to
 *
 * Output:          WORD   - the word read
 *
 * Side Effects:    None
 *
 * Overview:        Reads a 16-bit word from a buffer
 *
 * Note:            None
 *****************************************************************************/

WORD ReadWord( BYTE* pBuffer, WORD index )
{
   BYTE loByte, hiByte;
   WORD res;
   
   loByte = pBuffer[index];
   hiByte = pBuffer[index+1];
   res = hiByte;
   res *= 0x100;
   res |= loByte;
   return( res );
}


/******************************************************************************
 * Function:        BYTE ReadDWord(BYTE * pBuffer, WORD index)
 *
 * PreCondition:    None
 *
 * Input:           pBuffer   - pointer to a buffer to read from
 *               index   - index in the buffer to read to
 *
 * Output:          DWORD   - the double word read
 *
 * Side Effects:    None
 *
 * Overview:        Reads a 32-bit double word from a buffer
 *
 * Note:            None
 *****************************************************************************/

DWORD ReadDWord( BYTE* pBuffer, WORD index )
{
   WORD loWord, hiWord;
   DWORD result;
   
   loWord = ReadWord( pBuffer, index );
   hiWord = ReadWord( pBuffer, index+2 );
   
   result = hiWord;
   result *= 0x10000;
   result |= loWord;
   return result;
}
#endif

#ifdef USE_PIC18

/******************************************************************************
 * Function:        void OpenSPIM( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase)
 *
 * PreCondition:    None
 *
 * Input:           sync_mode   - Sets synchronization
 *               bus_mode   - Sets bus operating mode
 *               smp_phase   - Set sampling phase
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Enables SPI module
 *
 * Note:            None
 *****************************************************************************/

void OpenSPIM( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase)
{
   SPISTAT &= 0x3F;               // power on state 
   SPICON1 = 0x00;                // power on state
   SPICON1 |= sync_mode;          // select serial mode 
   SPISTAT |= smp_phase;          // select data input sample phase

   switch( bus_mode )
   {
      case 0:                       // SPI1 bus mode 0,0
         SPISTATbits.CKE = 1;       // data transmitted on rising edge
         break;    
      case 2:                       // SPI1 bus mode 1,0
         SPISTATbits.CKE = 1;       // data transmitted on falling edge
         SPICON1bits.CKP = 1;       // clock idle state high
         break;
      case 3:                       // SPI1 bus mode 1,1
         SPICON1bits.CKP = 1;       // clock idle state high
         break;
      default:                      // default SPI1 bus mode 0,1
         break;
   }

   switch( sync_mode )
   {
      case 4:                       // slave mode w /SS1 enable
         SD_CS_TRIS = 1;       // define /SS1 pin as input
      case 5:                       // slave mode w/o /SS1 enable
         SPICLOCK = 1;       // define clock pin as input
         SPISTATbits.SMP = 0;       // must be cleared in slave SPI mode
         break;
      default:                      // master mode, define clock pin as output
         SPICLOCK = 0;       // define clock pin as output
         break;
   }

   SPIOUT = 0;                  // define SDO1 as output (master or slave)
   SPIIN = 1;                  // define SDI1 as input (master or slave)
   SPICON1bits.SSPEN = 1;             // enable synchronous serial port 
}


/******************************************************************************
 * Function:        unsigned char WriteSPIM ( unsigned char data_out)
 *
 * PreCondition:    None
 *
 * Input:           data_out   - data to transmit
 *
 * Output:          0 if successful, -1 otherwise
 *
 * Side Effects:    None
 *
 * Overview:        Writes a byte on the SPI
 *
 * Note:            None
 *****************************************************************************/

unsigned char WriteSPIM( unsigned char data_out )
{
   SPIBUF = data_out;          // write byte to SSP1BUF register
   if ( SPICON1 & 0x80 )       // test if write collision occurred
       return ( -1 );              // if WCOL bit is set return negative #
   else
   {
      while( !SPISTAT_RBF ); // wait until bus cycle complete 
   }
   return ( 0 );                // if WCOL bit is not set return non-negative#
}

/******************************************************************************
 * Function:        void WriteSPIM (void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Disables the SPI module
 *
 * Note:            None
 *****************************************************************************/

void CloseSPIM( void )
{
   SPICON1 &= 0xDF;               // disable synchronous serial port
}



#endif


/******************************************************************************
 * Function:        int FSformat (char mode, long int serialNumber, char * volumeID)
 *
 * PreCondition:    None
 *
 * Input:           mode   - 1: Create a new boot sector
 *                       0: Just erase FAT and root
 *               serialNumber   - Serial number to write to the card
 *               volumeID      - Name of the card
 *
 * Output:         int      - Returns 0 on success, EOF on failure
 *
 * Side Effects:    None
 *
 * Overview:        Reads a byte from a buffer
 *
 * Note:            None
 *****************************************************************************/

#ifdef ALLOW_FORMATS
#ifdef ALLOW_WRITES
int FSformat (char mode, long int serialNumber, char * volumeID)
{
   PT_MBR   masterBootRecord;
   DWORD    secCount, FAT16DataClusters, RootDirSectors;
   BootSec   BSec;
   DISK   d;
   DISK * disk = &d;
   WORD    i, j;
   DWORD   fatsize, test;
#ifdef USE_PIC18
   // This is here because of a C18 compiler feature
   BYTE *  dataBufferPointer = gDataBuffer;
#endif

   disk->buffer = gDataBuffer;

   MMC_OFF;
   SD_CD_TRIS = INPUT;            //Card Detect - input
   SD_CS = 1;                     //Initialize Chip Select line
   SD_CS_TRIS = OUTPUT;            //Card Select - output
   SD_WE_TRIS = INPUT;            //Write Protect - input

   if (MediaInitialize() != TRUE)
      return EOF;

   if (SectorRead (0x00, gDataBuffer) == FALSE)
      return EOF;

   // Check if the card has no MBR
   BSec = (BootSec) disk->buffer;
   if((BSec->Signature0 == FAT_GOOD_SIGN_0) && (BSec->Signature1 == FAT_GOOD_SIGN_1))
   {
      // Technically, the OEM name is not for indication
      // The alternative is to read the CIS from attribute
      // memory.  See the PCMCIA metaformat for more details
#ifdef USE_PIC24
      if (ReadByte( disk->buffer, BSI_FSTYPE ) == 'F' && \
         ReadByte( disk->buffer, BSI_FSTYPE + 1 ) == 'A' && \
         ReadByte( disk->buffer, BSI_FSTYPE + 2 ) == 'T' && \
         ReadByte( disk->buffer, BSI_FSTYPE + 3 ) == '1' && \
         ReadByte( disk->buffer, BSI_BOOTSIG) == 0x29)
#else
      if (BSec->FAT.FAT_16.BootSec_FSType[0] == 'F' && \
         BSec->FAT.FAT_16.BootSec_FSType[1] == 'A' && \
         BSec->FAT.FAT_16.BootSec_FSType[2] == 'T' && \
         BSec->FAT.FAT_16.BootSec_FSType[3] == '1' && \
         BSec->FAT.FAT_16.BootSec_BootSig == 0x29)
#endif
      {
         switch (mode)
         {
            case 1:
               // not enough info to construct our own boot sector
               return EOF;
               break;
            case 0:
            // We have to determine the operating system, and the 
            // locations and sizes of the root dir and FAT, and the 
            // count of FATs
               disk->firsts = 0;
               if (LoadBootSector (disk) != CE_GOOD)
                  return EOF;

            default:
               break;
         }
      }
      else
      {   
         masterBootRecord = (PT_MBR) &gDataBuffer;
         disk->firsts = masterBootRecord->Partition0.PTE_FrstSect;
      }
      
   }


   switch (mode)
   {
      // True: Rewrite the whole boot sector
      case 1:
         secCount = masterBootRecord->Partition0.PTE_NumSect;
         
         if (secCount < 0x1039)
         {
            disk->type = FAT12;
            // Format to FAT12 only if there are too few sectors to format
            // as FAT16
            masterBootRecord->Partition0.PTE_FSDesc = 0x01;
            if (SectorWrite (0x00, gDataBuffer, TRUE) == FALSE)
               return EOF;
            
            if (secCount >= 0x1028)
            {
               // More than 0x18 sectors for FATs, 0x20 for root dir, 
               // 0x8 reserved, and 0xFED for data
               // So double the number of sectors in a cluster to reduce
               // the number of data clusters used
               disk->SecPerClus = 2;
            }
            else
            {
               // One sector per cluster
               disk->SecPerClus = 1;
            }
            
            // Prepare a boot sector
            memset (gDataBuffer, 0x00, MEDIA_SECTOR_SIZE);

            // Last digit of file system name (FAT12   )
            gDataBuffer[58] = '2';

         }
         else if (secCount <= 0x3FFD5F)
         {
            disk->type = FAT16;
            // Format to FAT16
            masterBootRecord->Partition0.PTE_FSDesc = 0x06;
            if (SectorWrite (0x00, gDataBuffer, TRUE) == FALSE)
               return EOF;

            FAT16DataClusters = secCount - 0x218;
            // Figure out how many sectors per cluster we need
            disk->SecPerClus = 1;
            while (FAT16DataClusters > 0xFFED)
            {
               disk->SecPerClus *= 2;
               FAT16DataClusters /= 2;
            }
            // This shouldnt happen
            if (disk->SecPerClus > 128)
               return EOF;

            // Prepare a boot sector
            memset (gDataBuffer, 0x00, MEDIA_SECTOR_SIZE);

            // Last digit of file system name (FAT16   )
            gDataBuffer[58] = '6';

         }
         else
         {
            // Cannot format; too many sectors
            return EOF;
         }

         // Calculate the size of the FAT
         fatsize = (secCount - 0x21  + (2*disk->SecPerClus));
         if (disk->type == FAT12)
            test =   (341 * disk->SecPerClus) + 2;
         else
            test =    (256  * disk->SecPerClus) + 2;
         fatsize = (fatsize + (test-1)) / test;
         // Non-file system specific values   
         gDataBuffer[0] = 0xEB;         //Jump instruction
         gDataBuffer[1] = 0x3C;
         gDataBuffer[2] =  0x90;
         gDataBuffer[3] =  'M';         //OEM Name "MCHP FAT"
         gDataBuffer[4] =  'C';
         gDataBuffer[5] =  'H'; 
         gDataBuffer[6] =  'P';
         gDataBuffer[7] =  ' ';
         gDataBuffer[8] =  'F';
         gDataBuffer[9] =  'A';
         gDataBuffer[10] = 'T';
         gDataBuffer[11] =  0x00;           //Bytes per sector - 512
         gDataBuffer[12] =  0x02;
         gDataBuffer[13] = disk->SecPerClus;   //Sectors per cluster
         gDataBuffer[14] = 0x08;         //Reserved sector count
         gDataBuffer[15] = 0x00;         
         disk->fat = 0x08 + disk->firsts;
         gDataBuffer[16] = 0x02;         //number of FATs
         disk->fatcopy = 0x02;
         gDataBuffer[17] = 0x00;          //Max number of root directory entries - 512 files allowed
         gDataBuffer[18] = 0x02;
         disk->maxroot = 0x200;
         gDataBuffer[19] = 0x00;         //total sectors   
         gDataBuffer[20] = 0x00;
         gDataBuffer[21] = 0xF8;         //Media Descriptor
         gDataBuffer[22] = fatsize & 0xFF;         //Sectors per FAT
         gDataBuffer[23] = (fatsize >> 8) & 0xFF;
         disk->fatsize = fatsize;
         gDataBuffer[24] = 0x3F;           //Sectors per track 
         gDataBuffer[25] = 0x00;
         gDataBuffer[26] = 0xFF;         //Number of heads 
         gDataBuffer[27] = 0x00;
         // Hidden sectors = sectors between the MBR and the boot sector
         gDataBuffer[28] = (BYTE)(disk->firsts & 0xFF);
         gDataBuffer[29] = (BYTE)((disk->firsts / 0x100) & 0xFF);
         gDataBuffer[30] = (BYTE)((disk->firsts / 0x10000) & 0xFF); 
         gDataBuffer[31] = (BYTE)((disk->firsts / 0x1000000) & 0xFF);
         // Total Sectors = same as sectors in the partition from MBR
         gDataBuffer[32] = (BYTE)(secCount & 0xFF);
         gDataBuffer[33] = (BYTE)((secCount / 0x100) & 0xFF);
         gDataBuffer[34] = (BYTE)((secCount / 0x10000) & 0xFF); 
         gDataBuffer[35] = (BYTE)((secCount / 0x1000000) & 0xFF);
         gDataBuffer[36] = 0x00;         // Physical drive number
         gDataBuffer[37] = 0x00;         // Reserved (current head) 
         gDataBuffer[38] = 0x29;         // Signature code
         gDataBuffer[39] = (BYTE)(serialNumber & 0xFF);
         gDataBuffer[40] = (BYTE)((serialNumber / 0x100) & 0xFF);
         gDataBuffer[41] = (BYTE)((serialNumber / 0x10000) & 0xFF);
         gDataBuffer[42] = (BYTE)((serialNumber / 0x1000000) & 0xFF);
         // Volume ID
         if (volumeID != NULL)
         {
            for (i = 0; (*(volumeID + i) != 0) && (i < 11); i++)
            {
               gDataBuffer[i + 43] = *(volumeID + i);
            }
            while (i < 11)
            {
               gDataBuffer[43 + i++] = 0x20;
            }
         }
         else
         {
            for (i = 0; i < 11; i++)
            {
               gDataBuffer[i+43] = 0;
            }
         }
         gDataBuffer[54] = 'F';
         gDataBuffer[55] = 'A';
         gDataBuffer[56] = 'T';
         gDataBuffer[57] = '1';
         gDataBuffer[59] = ' ';
         gDataBuffer[60] = ' ';
         gDataBuffer[61] = ' ';
#ifdef USE_PIC18
         // C18 can't reference a value greater than 256
         // using an array name pointer
         *(dataBufferPointer + 510) = 0x55;
         *(dataBufferPointer + 511) = 0xAA;
#else
         gDataBuffer[510] = 0x55;
         gDataBuffer[511] = 0xAA;
#endif         

           disk->root = disk->fat + (disk->fatcopy * disk->fatsize);

         if (SectorWrite (disk->firsts, gDataBuffer, FALSE) == FALSE)
            return EOF;
         
         break;
      case 0:
         if (LoadBootSector (disk) != CE_GOOD)
            return EOF;
         break;
      default:
         return EOF;
   }

   // Erase the FAT
   memset (gDataBuffer, 0x00, MEDIA_SECTOR_SIZE);
   gDataBuffer[0] = 0xF8;
   gDataBuffer[1] = 0xFF;
   gDataBuffer[2] = 0xFF;
   if (disk->type == FAT16)
      gDataBuffer[3] = 0xFF;

   for (j = disk->fatcopy - 1; j != 0xFFFF; j--)
   {
      if (SectorWrite (disk->fat + (j * disk->fatsize), gDataBuffer, FALSE) == FALSE)
         return EOF;
   }
         
   memset (gDataBuffer, 0x00, 4);
   
   for (i = disk->fat + 1; i < (disk->fat + disk->fatsize); i++)
   {
      for (j = disk->fatcopy - 1; j != 0xFFFF; j--)
      {
         if (SectorWrite (i + (j * disk->fatsize), gDataBuffer, FALSE) == FALSE)
            return EOF;
      }
   }

   // Erase the root directory
   RootDirSectors = ((disk->maxroot * 32) + (0x200 - 1)) / 0x200;               

   for (i = 1; i < RootDirSectors; i++)
   {
      if (SectorWrite (disk->root + i, gDataBuffer, FALSE) == FALSE)
         return EOF;
   }

   if (volumeID != NULL)
   {
      // Create a drive name entry in the root dir
      i = 0;
      while ((*(volumeID + i) != 0) && (i < 11))
      {
         gDataBuffer[i] = *(volumeID + i);
         i++;
      }
      while (i < 11)
      {
         gDataBuffer[i++] = ' ';
      }
      gDataBuffer[11] = 0x08;
      gDataBuffer[17] = 0x11;
      gDataBuffer[19] = 0x11;
      gDataBuffer[23] = 0x11;
      
      if (SectorWrite (disk->root, gDataBuffer, FALSE) == FALSE)
         return EOF;
   }   
   else
   {
      if (SectorWrite (disk->root, gDataBuffer, FALSE) == FALSE)
         return EOF;
   }

   return 0;
}
#endif
#endif
