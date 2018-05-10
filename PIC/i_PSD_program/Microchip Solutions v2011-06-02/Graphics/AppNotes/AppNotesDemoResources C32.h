/*****************************************************************************
 * FileName:        AppNotesDemoResources C32.h
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
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.2.12
 *****************************************************************************/

#ifndef APPNOTESDEMORESOURCES_C32_H_FILE
#define APPNOTESDEMORESOURCES_C32_H_FILE
/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>


/*****************************************************************************
 * This is an error check for the color depth
 *****************************************************************************/
#if (COLOR_DEPTH != 16)
#error "Color Depth needs to be 16 to correctly use these resources"
#endif


/*****************************************************************************
 * SECTION:  BITMAPS
 *****************************************************************************/

/*********************************
 * Bitmap Structure
 * Label: MCHPFolderFile_8bpp_72x72
 * Description:  72x72 pixels, 16-bits per pixel
 ***********************************/
extern const IMAGE_FLASH MCHPFolderFile_8bpp_72x72;
#define MCHPFolderFile_8bpp_72x72_WIDTH     (72)
#define MCHPFolderFile_8bpp_72x72_HEIGHT    (72)
#define MCHPFolderFile_8bpp_72x72_SIZE      (10374)
/*********************************
 * Bitmap Structure
 * Label: MCHPFolderEmpty_8bpp_72x72
 * Description:  72x72 pixels, 8-bits per pixel
 ***********************************/
extern const IMAGE_FLASH MCHPFolderEmpty_8bpp_72x72;
#define MCHPFolderEmpty_8bpp_72x72_WIDTH     (72)
#define MCHPFolderEmpty_8bpp_72x72_HEIGHT    (72)
#define MCHPFolderEmpty_8bpp_72x72_SIZE      (5702)
/*********************************
 * Bitmap Structure
 * Label: Back_4bpp_16x16
 * Description:  16x16 pixels, 4-bits per pixel
 ***********************************/
extern const IMAGE_FLASH Back_4bpp_16x16;
#define Back_4bpp_16x16_WIDTH     (16)
#define Back_4bpp_16x16_HEIGHT    (16)
#define Back_4bpp_16x16_SIZE      (166)
/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * Font Structure
 * Label: Gentium_16
 * Description:  Heigth: 19 pixels, range: ' ' to '~'
 ***********************************/
extern const FONT_FLASH Gentium_16;
#define Gentium_16_SIZE    (2668)
#endif

