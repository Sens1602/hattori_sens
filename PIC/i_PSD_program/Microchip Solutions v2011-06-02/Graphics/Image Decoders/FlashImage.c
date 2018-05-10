/*$6*/



#define _FLASHIMAGE_C

/******************************************************************************

* FileName:        FlashImage.c
* Dependencies:    Image decoding library;
* Processor:       PIC24F, PIC24H, dsPIC, PIC32
* Compiler:        C30 v2.01/C32 v0.00.18
* Company:         Microchip Technology, Inc.

 * Software License Agreement
 *
 * Copyright © 2008 Microchip Technology Inc.  All rights reserved.
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

Author                 Date           Comments
--------------------------------------------------------------------------------
Pradeep Budagutta    25-Jun-2008    First release
*******************************************************************************/
#include "FlashImage.h"
#include "FlashImageData.h"

long    FlashImageIndex;
long    FlashImageSize;

/*******************************************************************************
Function:       size_t FlashImage_fread(void *ptr, size_t size, size_t n, void* file)

Precondition:   None

Overview:       This function emulates file system's fread() on constant data
                in Flash 

Input:          Data buffer, size of data chunk, size of data type, file pointer

Output:         Number of bytes copied
*******************************************************************************/
size_t FlashImage_fread(void *ptr, size_t size, size_t n, void *file)
{
    size_t  index;
    for(index = 0; index < size * n && FlashImageIndex < FlashImageSize; index++)
    {
        BYTE    *bptr = (BYTE *)ptr;
        BYTE    *pFile = (BYTE *)file;
        bptr[index] = pFile[FlashImageIndex];
        FlashImageIndex++;
    }

    return (index);
}

/*******************************************************************************
Function:       int FlashImage_fseek(void* stream, long offset, int whence)

Precondition:   None

Overview:       This function emulates file system's fseek() on constant data
                in Flash 

Input:          File pointer, offset and the referance position

Output:         TRUE if success
*******************************************************************************/
int FlashImage_fseek(void *stream, long offset, int whence)
{
    if(whence == 0)
    {
        FlashImageIndex = offset;
    }
    else if(whence == 1)
    {
        FlashImageIndex += offset;
    }
    else if(whence == 2)
    {
        FlashImageIndex = FlashImageSize - offset;
    }

    return (TRUE);
}

/*******************************************************************************
Function:       long FlashImage_ftell(void *fo)

Precondition:   None

Overview:       This function emulates file system's ftell() on constant data
                in Flash 

Input:          File pointer

Output:         Pointer position
*******************************************************************************/
long FlashImage_ftell(void *fo)
{
    return (FlashImageIndex);
}

/*******************************************************************************
Function:       int FlashImage_feof(void *stream)

Precondition:   None

Overview:       This function emulates file system's feof() on constant data
                in Flash 

Input:          File pointer

Output:         True if end of file is reached
*******************************************************************************/
int FlashImage_feof(void *stream)
{
    if(FlashImageIndex < FlashImageSize)
    {
        return (FALSE);
    }

    return (TRUE);
}

/*******************************************************************************
Function:       void* FlashImage_fopen(IMAGE_NAME eImageName)

Precondition:   None

Overview:       This function sets up the variables to emulate a file
                using constant data in flash

Input:          An enum representing the image

Output:         File pointer
*******************************************************************************/
void *FlashImage_fopen(IMAGE_NAME eImageName)
{
    FlashImageIndex = 0;
    FlashImageSize = aImageLength[eImageName];
    return (void *)ImageList[eImageName];
}

#undef _FLASHIMAGE_C
