/*****************************************************************************
 * FileName:        Pictures C32.h
 * Processor:       PIC32MX
 * Compiler:        MPLAB C32 (see release notes for tested revision)
 * Linker:          MPLAB LINK32
 * Company:         Microchip Technology, Inc.
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
 *
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.3.0
 *****************************************************************************/

#ifndef PICTURES_C32_H_FILE
#define PICTURES_C32_H_FILE
/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>


/*****************************************************************************
 * This is an error check for the color depth
 *****************************************************************************/
#if (COLOR_DEPTH > 16)
#error "Color Depth needs to be 16 to correctly use these resources"
#endif


/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: flower16bit
 * Description:  85x113 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH flower16bit;
#define flower16bit_WIDTH     (85)
#define flower16bit_HEIGHT    (113)
#define flower16bit_SIZE      (19216)
/*********************************
 * Bitmap Structure
 * Label: Gaming4bit
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Gaming4bit;
#define Gaming4bit_WIDTH     (72)
#define Gaming4bit_HEIGHT    (72)
#define Gaming4bit_SIZE      (2630)
/*********************************
 * Bitmap Structure
 * Label: Sun8bit
 * Description:  72x72 pixels, 8-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Sun8bit;
#define Sun8bit_WIDTH     (72)
#define Sun8bit_HEIGHT    (72)
#define Sun8bit_SIZE      (5702)
/*********************************
 * Bitmap Structure
 * Label: flower1bit
 * Description:  85x113 pixels, 1-bits per pixel
 ***********************************/
extern const IMAGE_FLASH flower1bit;
#define flower1bit_WIDTH     (85)
#define flower1bit_HEIGHT    (113)
#define flower1bit_SIZE      (1253)
/*********************************
 * Bitmap Structure
 * Label: flower4bit
 * Description:  85x113 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH flower4bit;
#define flower4bit_WIDTH     (85)
#define flower4bit_HEIGHT    (113)
#define flower4bit_SIZE      (4897)
/*********************************
 * Bitmap Structure
 * Label: flower8bit
 * Description:  85x113 pixels, 8-bits per pixel
 ***********************************/
extern const IMAGE_FLASH flower8bit;
#define flower8bit_WIDTH     (85)
#define flower8bit_HEIGHT    (113)
#define flower8bit_SIZE      (10123)
/*********************************
 * Bitmap Structure
 * Label: Sun8bit_RLE
 * Description:  72x72 pixels, 8-bits per pixel
 ***********************************/
extern const GFX_IMAGE_HEADER Sun8bit_RLE;
#define Sun8bit_RLE_WIDTH     (72)
#define Sun8bit_RLE_HEIGHT    (72)
#define Sun8bit_RLE_SIZE      (5702)
/*********************************
 * Bitmap Structure
 * Label: Gaming4bit_RLE
 * Description:  72x72 pixels, 4-bits per pixel
 ***********************************/
extern const GFX_IMAGE_HEADER Gaming4bit_RLE;
#define Gaming4bit_RLE_WIDTH     (72)
#define Gaming4bit_RLE_HEIGHT    (72)
#define Gaming4bit_RLE_SIZE      (2630)
#endif

