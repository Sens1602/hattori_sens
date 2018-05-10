/*****************************************************************************
 * FileName:        gfx_resources_fonts.c
 * Processor:       PIC24F, PIC24H, dsPIC
 * Compiler:        MPLAB C30 (see release notes for tested revision)
 * Linker:          MPLAB LINK30
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
 * AUTO-GENERATED CODE:  Graphics Resource Converter version: 3.2.11
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Includes
 *****************************************************************************/
#include <Graphics/Graphics.h>

/*****************************************************************************
 * Converted Resources
 * -------------------
 *
 *
 * Fonts
 * -----
 * GOLSmallFont - Heigth: 17 pixels, range: ' ' to '~'
 * GOLMediumFont - Heigth: 19 pixels, range: ' ' to '~'
 * BigFonts - Heigth: 58 pixels, range: ' ' to ':'
 *****************************************************************************/

/*****************************************************************************
 * SECTION:  Fonts
 *****************************************************************************/

/*********************************
 * TYPE_FONT_FILE Structure
 * Label: GOLSmallFont
 * Description:  Heigth: 17 pixels, range: ' ' to '~'
 ***********************************/

extern const char __GOLSmallFont[] __attribute__((aligned(2)));

const FONT_FLASH GOLSmallFont =
{
    (FLASH | COMP_NONE),
    __GOLSmallFont
};

const char __GOLSmallFont[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Information
    0x00,           // ID
    0x20, 0x00,     // First Character
    0x7E, 0x00,     // Last Character
    0x11,           // Height
    0x00,           // Reserved
/****************************************
 * Font Glyph Table
 ****************************************/
    0x03, 0x84, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x95, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xA6, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xB7, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xC8, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xD9, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xFB, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x1D, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x2E, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x3F, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x50, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x61, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x72, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x83, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x94, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xA5, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xB6, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xC7, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xD8, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xE9, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xFA, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x0B, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x1C, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x2D, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x3E, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x4F, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x60, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x71, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x82, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x93, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xA4, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xB5, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x0C, 0xC6, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xE8, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xF9, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x0A, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x1B, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x2C, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x3D, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x4E, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x5F, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x81, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x92, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xA3, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xB4, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0xC5, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0xE7, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x09, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x1A, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x2B, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x3C, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x4D, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x5E, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x6F, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x91, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x0C, 0xB3, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0xD5, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xF7, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x08, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x19, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x2A, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x3B, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x4C, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x5D, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x6E, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x7F, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x90, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xA1, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xB2, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xC3, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xD4, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xE5, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xF6, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x07, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x18, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x29, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x3A, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0x4B, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x6D, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x7E, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x8F, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xA0, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0xB1, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xC2, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xD3, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xE4, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xF5, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0x06, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x28, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x39, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x4A, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x5B, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x03, 0x6C, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x7D, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x8E, 0x08, 0x00,           // width, MSB Offset, LSB offset
/***********************************
 * Font Characters
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x28,         //    * *  
    0x28,         //    * *  
    0x28,         //    * *  
    0x7E,         //  ****** 
    0x14,         //   * *   
    0x3E,         //  *****  
    0x0A,         //  * *    
    0x0A,         //  * *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x3C,         //   ****  
    0x2A,         //  * * *  
    0x0A,         //  * *    
    0x1C,         //   ***   
    0x28,         //    * *  
    0x2A,         //  * * *  
    0x2A,         //  * * *  
    0x1C,         //   ***   
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x84, 0x00,         //   *    *        
    0x4A, 0x00,         //  * *  *         
    0x4A, 0x00,         //  * *  *         
    0xE6, 0x00,         //  **  ***        
    0x30, 0x01,         //     **  *       
    0x28, 0x01,         //    * *  *       
    0x24, 0x01,         //   *  *  *       
    0xC6, 0x00,         //  **   **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x00,         //    ***          
    0x24, 0x00,         //   *  *          
    0x24, 0x00,         //   *  *          
    0x14, 0x00,         //   * *           
    0xCC, 0x03,         //   **  ****      
    0x9A, 0x00,         //  * **  *        
    0x92, 0x00,         //  *  *  *        
    0xA2, 0x00,         //  *   * *        
    0xC2, 0x00,         //  *    **        
    0xBC, 0x01,         //   **** **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x08,         //    *    
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x04,         //   *     
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x15,         // * * *   
    0x36,         //  ** **  
    0x1C,         //   ***   
    0x27,         // ***  *  
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x04,         //   *     
    0x1F,         // *****   
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x06,         //  **     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x20,         //      *  
    0x20,         //      *  
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x14,         //   * *   
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x0E,         //  ***    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x24,         //   *  *  
    0x22,         //  *   *  
    0x20,         //      *  
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x24,         //   *  *  
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x12,         //  *  *   
    0x10,         //     *   
    0x08,         //    *    
    0x1E,         //  ****   
    0x20,         //      *  
    0x20,         //      *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x18,         //    **   
    0x14,         //   * *   
    0x14,         //   * *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x3E,         //  *****  
    0x11,         // *   *   
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x04,         //   *     
    0x04,         //   *     
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x20,         //      *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x0C,         //   **    
    0x04,         //   *     
    0x02,         //  *      
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x12,         //  *  *   
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x16,         //  ** *   
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x32,         //  *  **  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x10,         //     *   
    0x10,         //     *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x06,         //  **     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x0E,         //  ***    
    0x07,         // ***     
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3F,         // ******  
    0x00,         //         
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x1C,         //   ***   
    0x38,         //    ***  
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x01,         //     *****       
    0x0C, 0x03,         //   **    **      
    0x02, 0x02,         //  *       *      
    0xF1, 0x04,         // *   ****  *     
    0x89, 0x04,         // *  *   *  *     
    0x89, 0x04,         // *  *   *  *     
    0x89, 0x04,         // *  *   *  *     
    0x89, 0x02,         // *  *   * *      
    0xF1, 0x01,         // *   *****       
    0x02, 0x00,         //  *              
    0x0C, 0x03,         //   **    **      
    0xF8, 0x00,         //    *****        
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x18,         //    **   
    0x18,         //    **   
    0x24,         //   *  *  
    0x24,         //   *  *  
    0x3C,         //   ****  
    0x42,         //  *    * 
    0x42,         //  *    * 
    0xE7,         // ***  ***
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x62,         //  *   ** 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x78,         //    **** 
    0x44,         //   *   * 
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x44,         //   *   * 
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x22,         //  *   *  
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x22,         //  *   *  
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3F,         // ******  
    0x22,         //  *   *  
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x02,         //  *      
    0x02,         //  *      
    0x22,         //  *   *  
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3F,         // ******  
    0x22,         //  *   *  
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x78,         //    **** 
    0x26,         //  **  *  
    0x01,         // *       
    0x01,         // *       
    0x01,         // *       
    0xE1,         // *    ***
    0x41,         // *     * 
    0x42,         //  *    * 
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC7, 0x01,         // ***   ***       
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0xFE, 0x00,         //  *******        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0xC7, 0x01,         // ***   ***       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x03,         // **      
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xE7,         // ***  ***
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x0A,         //  * *    
    0x0E,         //  ***    
    0x1A,         //  * **   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0xC7,         // ***   **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x07,         // ***     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x22,         //  *   *  
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x07, 0x07,         // ***     ***     
    0x06, 0x03,         //  **     **      
    0x8A, 0x02,         //  * *   * *      
    0x8A, 0x02,         //  * *   * *      
    0x5A, 0x02,         //  * ** *  *      
    0x52, 0x02,         //  *  * *  *      
    0x52, 0x02,         //  *  * *  *      
    0x22, 0x02,         //  *   *   *      
    0x27, 0x07,         // ***  *  ***     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC3, 0x01,         // **    ***       
    0x86, 0x00,         //  **    *        
    0x8E, 0x00,         //  ***   *        
    0x8A, 0x00,         //  * *   *        
    0x92, 0x00,         //  *  *  *        
    0xA2, 0x00,         //  *   * *        
    0xE2, 0x00,         //  *   ***        
    0xC2, 0x00,         //  *    **        
    0x87, 0x00,         // ***    *        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x41,         // *     * 
    0x41,         // *     * 
    0x41,         // *     * 
    0x41,         // *     * 
    0x41,         // *     * 
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x41,         // *     * 
    0x41,         // *     * 
    0x41,         // *     * 
    0x41,         // *     * 
    0x41,         // *     * 
    0x22,         //  *   *  
    0x1C,         //   ***   
    0xB0,         //     ** *
    0xC0,         //       **
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3F,         // ******  
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x3E,         //  *****  
    0x1A,         //  * **   
    0x32,         //  *  **  
    0x62,         //  *   ** 
    0xC7,         // ***   **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x32,         //  *  **  
    0x02,         //  *      
    0x04,         //   *     
    0x18,         //    **   
    0x20,         //      *  
    0x20,         //      *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7F,         // ******* 
    0x49,         // *  *  * 
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC7, 0x01,         // ***   ***       
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x46, 0x00,         //  **   *         
    0x3C, 0x00,         //   ****          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC7, 0x01,         // ***   ***       
    0x86, 0x00,         //  **    *        
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x2C, 0x00,         //   ** *          
    0x28, 0x00,         //    * *          
    0x28, 0x00,         //    * *          
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x27, 0x0E,         // ***  *   ***    
    0x62, 0x02,         //  *   **  *      
    0x62, 0x02,         //  *   **  *      
    0x54, 0x02,         //   * * *  *      
    0x94, 0x02,         //   * *  * *      
    0x94, 0x02,         //   * *  * *      
    0x8C, 0x01,         //   **   **       
    0x08, 0x01,         //    *    *       
    0x08, 0x01,         //    *    *       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE7, 0x00,         // ***  ***        
    0x46, 0x00,         //  **   *         
    0x24, 0x00,         //   *  *          
    0x18, 0x00,         //    **           
    0x10, 0x00,         //     *           
    0x38, 0x00,         //    ***          
    0x64, 0x00,         //   *  **         
    0x42, 0x00,         //  *    *         
    0xE7, 0x00,         // ***  ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xC7,         // ***   **
    0x44,         //   *   * 
    0x28,         //    * *  
    0x28,         //    * *  
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x22,         //  *   *  
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x42,         //  *    * 
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x01,         // *       
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x08,         //    *    
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x20,         //      *  
    0x20,         //      *  
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x07,         // ***     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x07,         // ***     
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x14,         //   * *   
    0x14,         //   * *   
    0x12,         //  *  *   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3F,         // ******  
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x12,         //  *  *   
    0x11,         // *   *   
    0x1E,         //  ****   
    0x12,         //  *  *   
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x26,         //  **  *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x02,         //  *      
    0x02,         //  *      
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x20,         //      *  
    0x20,         //      *  
    0x20,         //      *  
    0x20,         //      *  
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x7C,         //   ***** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x02,         //  *      
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x06,         //  **     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0F,         // ****    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x21,         // *    *  
    0x21,         // *    *  
    0x1E,         //  ****   
    0x06,         //  **     
    0x3A,         //  * ***  
    0x41,         // *     * 
    0x41,         // *     * 
    0x3E,         //  *****  
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x7A,         //  * **** 
    0x46,         //  **   * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0xE7,         // ***  ***
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x32,         //  *  **  
    0x0A,         //  * *    
    0x06,         //  **     
    0x0A,         //  * *    
    0x12,         //  *  *   
    0x77,         // *** *** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xBB, 0x03,         // ** *** ***      
    0x66, 0x02,         //  **  **  *      
    0x22, 0x02,         //  *   *   *      
    0x22, 0x02,         //  *   *   *      
    0x22, 0x02,         //  *   *   *      
    0x77, 0x07,         // *** *** ***     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x72,         //  *  *** 
    0x4F,         // ****  * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0xE7,         // ***  ***
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1B,         // ** **   
    0x26,         //  **  *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1E,         //  ****   
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x3C,         //   ****  
    0x20,         //      *  
    0x20,         //      *  
    0x70,         //     *** 
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1B,         // ** **   
    0x16,         //  ** *   
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x07,         // ***     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x0E,         //  ***    
    0x06,         //  **     
    0x08,         //    *    
    0x0A,         //  * *    
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0F,         // ****    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x33,         // **  **  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x7E,         //  ****** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x67,         // ***  ** 
    0x22,         //  *   *  
    0x14,         //   * *   
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x27, 0x03,         // ***  *  **      
    0x32, 0x01,         //  *  **  *       
    0xB2, 0x00,         //  *  ** *        
    0xCC, 0x00,         //   **  **        
    0xCC, 0x00,         //   **  **        
    0xC8, 0x00,         //    *  **        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x77,         // *** *** 
    0x16,         //  ** *   
    0x08,         //    *    
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x77,         // *** *** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x77,         // *** *** 
    0x22,         //  *   *  
    0x14,         //   * *   
    0x14,         //   * *   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x03,         // **      
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x12,         //  *  *   
    0x08,         //    *    
    0x04,         //   *     
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x05,         // * *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x01,         // *       
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0C,         //   **    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x6E,         //  *** ** 
    0x39,         // *  ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

};

/*********************************
 * TYPE_FONT_FILE Structure
 * Label: GOLMediumFont
 * Description:  Heigth: 19 pixels, range: ' ' to '~'
 ***********************************/

extern const char __GOLMediumFont[] __attribute__((aligned(2)));

const FONT_FLASH GOLMediumFont =
{
    (FLASH | COMP_NONE),
    __GOLMediumFont
};

const char __GOLMediumFont[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Information
    0x00,           // ID
    0x20, 0x00,     // First Character
    0x7E, 0x00,     // Last Character
    0x13,           // Height
    0x00,           // Reserved
/****************************************
 * Font Glyph Table
 ****************************************/
    0x04, 0x84, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x97, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xAA, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xBD, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xD0, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0xE3, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0x09, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x2F, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x42, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x55, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x68, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x7B, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x8E, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xA1, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xB4, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xC7, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xDA, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xED, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x00, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x13, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x26, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x39, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x4C, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x5F, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x72, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x85, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x98, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xAB, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xBE, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xD1, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xE4, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xF7, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x0D, 0x0A, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0x30, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x56, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x7C, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0xA2, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xC8, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xDB, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0xEE, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0x14, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x3A, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x4D, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x60, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x86, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x0D, 0x99, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xBF, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xE5, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x0B, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0x1E, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x44, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x6A, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x7D, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xA3, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0xC9, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x0E, 0xEF, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0x15, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x0A, 0x3B, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x61, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x74, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x87, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x9A, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xAD, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xC0, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0xD3, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0xE6, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xF9, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x0C, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x1F, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x32, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x05, 0x45, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x58, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x6B, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x91, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xA4, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xB7, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0xCA, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x0C, 0xDD, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x09, 0x03, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x29, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x3C, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x4F, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x62, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x75, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x06, 0x88, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x9B, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xAE, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0xC1, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xE7, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0xFA, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x07, 0x0D, 0x0A, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x20, 0x0A, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x33, 0x0A, 0x00,           // width, MSB Offset, LSB offset
    0x04, 0x46, 0x0A, 0x00,           // width, MSB Offset, LSB offset
    0x08, 0x59, 0x0A, 0x00,           // width, MSB Offset, LSB offset
/***********************************
 * Font Characters
 ***********************************/
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x06,         //  **     
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x36,         //  ** **  
    0x16,         //  ** *   
    0x16,         //  ** *   
    0x16,         //  ** *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x50,         //     * * 
    0x48,         //    *  * 
    0x28,         //    * *  
    0xFC,         //   ******
    0x24,         //   *  *  
    0x7E,         //  ****** 
    0x14,         //   * *   
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x3C,         //   ****  
    0x2A,         //  * * *  
    0x0A,         //  * *    
    0x0E,         //  ***    
    0x1C,         //   ***   
    0x38,         //    ***  
    0x48,         //    *  * 
    0x4A,         //  * *  * 
    0x4A,         //  * *  * 
    0x3C,         //   ****  
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x0C, 0x03,         //   **    **      
    0x92, 0x01,         //  *  *  **       
    0x92, 0x00,         //  *  *  *        
    0x52, 0x00,         //  *  * *         
    0x2A, 0x00,         //  * * *          
    0xAC, 0x01,         //   ** * **       
    0x50, 0x02,         //     * *  *      
    0x48, 0x02,         //    *  *  *      
    0x4C, 0x02,         //   **  *  *      
    0x84, 0x01,         //   *    **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x38, 0x00,         //    ***          
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x34, 0x00,         //   * **          
    0x9C, 0x07,         //   ***  ****     
    0x12, 0x01,         //  *  *   *       
    0x22, 0x01,         //  *   *  *       
    0x62, 0x01,         //  *   ** *       
    0xC2, 0x00,         //  *    **        
    0x3C, 0x07,         //   ****  ***     
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x06,         //  **     
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x2A,         //  * * *  
    0x5C,         //   *** * 
    0x1C,         //   ***   
    0x2A,         //  * * *  
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x3E,         //  *****  
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1F,         // *****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x40,         //       * 
    0x60,         //      ** 
    0x20,         //      *  
    0x20,         //      *  
    0x30,         //     **  
    0x10,         //     *   
    0x10,         //     *   
    0x18,         //    **   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x02,         //  *      
    0x03,         // **      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x24,         //   *  *  
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x24,         //   *  *  
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x1C,         //   ***   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x7C,         //   ***** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x24,         //   *  *  
    0x22,         //  *   *  
    0x20,         //      *  
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x24,         //   *  *  
    0x22,         //  *   *  
    0x10,         //     *   
    0x18,         //    **   
    0x20,         //      *  
    0x40,         //       * 
    0x40,         //       * 
    0x42,         //  *    * 
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x20,         //      *  
    0x30,         //     **  
    0x28,         //    * *  
    0x28,         //    * *  
    0x24,         //   *  *  
    0x22,         //  *   *  
    0x7E,         //  ****** 
    0x20,         //      *  
    0x20,         //      *  
    0x78,         //    **** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x20,         //      *  
    0x3C,         //   ****  
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x22,         //  *   *  
    0x20,         //      *  
    0x20,         //      *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x30,         //     **  
    0x08,         //    *    
    0x04,         //   *     
    0x02,         //  *      
    0x3E,         //  *****  
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x24,         //   *  *  
    0x38,         //    ***  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x22,         //  *   *  
    0x20,         //      *  
    0x10,         //     *   
    0x10,         //     *   
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x12,         //  *  *   
    0x1C,         //   ***   
    0x32,         //  *  **  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x66,         //  **  ** 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x46,         //  **   * 
    0x7C,         //   ***** 
    0x20,         //      *  
    0x10,         //     *   
    0x0C,         //   **    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x60,         //      ** 
    0x1C,         //   ***   
    0x02,         //  *      
    0x1D,         // * ***   
    0x60,         //      ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x01,         // *       
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x1C,         //   ***   
    0x60,         //      ** 
    0x1C,         //   ***   
    0x03,         // **      
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x1C,         //   ***   
    0x22,         //  *   *  
    0x22,         //  *   *  
    0x20,         //      *  
    0x20,         //      *  
    0x10,         //     *   
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x08,         //    *    
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x01,         //      ****       
    0x18, 0x06,         //    **    **     
    0x04, 0x04,         //   *       *     
    0xC2, 0x09,         //  *    ***  *    
    0x32, 0x09,         //  *  **  *  *    
    0x12, 0x09,         //  *  *   *  *    
    0x12, 0x09,         //  *  *   *  *    
    0x12, 0x09,         //  *  *   *  *    
    0x12, 0x05,         //  *  *   * *     
    0xE4, 0x03,         //   *  *****      
    0x04, 0x00,         //   *             
    0x18, 0x06,         //    **    **     
    0xF0, 0x01,         //     *****       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x10, 0x00,         //     *           
    0x30, 0x00,         //     **          
    0x28, 0x00,         //    * *          
    0x28, 0x00,         //    * *          
    0x68, 0x00,         //    * **         
    0x44, 0x00,         //   *   *         
    0x7C, 0x00,         //   *****         
    0xC4, 0x00,         //   *   **        
    0x82, 0x00,         //  *     *        
    0xC7, 0x01,         // ***   ***       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x3E, 0x00,         //  *****          
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x7C, 0x00,         //   *****         
    0xC4, 0x00,         //   *   **        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x7E, 0x00,         //  ******         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0xC4, 0x00,         //   *   **        
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0x84, 0x00,         //   *    *        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x3E, 0x00,         //  *****          
    0x44, 0x00,         //   *   *         
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x44, 0x00,         //   *   *         
    0x3E, 0x00,         //  *****          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x44,         //   *   * 
    0x04,         //   *     
    0x04,         //   *     
    0x3C,         //   ****  
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x84,         //   *    *
    0x7E,         //  ****** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x44,         //   *   * 
    0x04,         //   *     
    0x04,         //   *     
    0x3C,         //   ****  
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xF0, 0x00,         //     ****        
    0x4C, 0x00,         //   **  *         
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0x02, 0x00,         //  *              
    0xE2, 0x01,         //  *   ****       
    0x82, 0x00,         //  *     *        
    0x82, 0x00,         //  *     *        
    0x84, 0x00,         //   *    *        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xCE, 0x01,         //  ***  ***       
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0xFC, 0x00,         //   ******        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0xCE, 0x01,         //  ***  ***       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0F,         // ****    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xEE, 0x01,         //  *** ****       
    0x44, 0x00,         //   *   *         
    0x24, 0x00,         //   *  *          
    0x14, 0x00,         //   * *           
    0x0C, 0x00,         //   **            
    0x1C, 0x00,         //   ***           
    0x34, 0x00,         //   * **          
    0x24, 0x00,         //   *  *          
    0x44, 0x00,         //   *   *         
    0x8E, 0x01,         //  ***   **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0E,         //  ***    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x84,         //   *    *
    0x7E,         //  ****** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x0E,         //  **      ***    
    0x0C, 0x06,         //   **     **     
    0x0C, 0x06,         //   **     **     
    0x1C, 0x05,         //   ***   * *     
    0x14, 0x05,         //   * *   * *     
    0x94, 0x04,         //   * *  *  *     
    0xA4, 0x04,         //   *  * *  *     
    0x62, 0x04,         //  *   **   *     
    0x62, 0x04,         //  *   **   *     
    0x4F, 0x0E,         // ****  *  ***    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC6, 0x01,         //  **   ***       
    0x8C, 0x00,         //   **   *        
    0x8C, 0x00,         //   **   *        
    0x94, 0x00,         //   * *  *        
    0x94, 0x00,         //   * *  *        
    0xA4, 0x00,         //   *  * *        
    0xA4, 0x00,         //   *  * *        
    0xC4, 0x00,         //   *   **        
    0xC4, 0x00,         //   *   **        
    0x8E, 0x00,         //  ***   *        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0x84, 0x00,         //   *    *        
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x82, 0x00,         //  *     *        
    0x84, 0x00,         //   *    *        
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x44,         //   *   * 
    0x44,         //   *   * 
    0x44,         //   *   * 
    0x44,         //   *   * 
    0x3C,         //   ****  
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x78, 0x00,         //    ****         
    0x84, 0x00,         //   *    *        
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x02, 0x01,         //  *      *       
    0x82, 0x00,         //  *     *        
    0x84, 0x00,         //   *    *        
    0x78, 0x00,         //    ****         
    0xC0, 0x02,         //       ** *      
    0x80, 0x03,         //        ***      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x3E, 0x00,         //  *****          
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x44, 0x00,         //   *   *         
    0x3C, 0x00,         //   ****          
    0x14, 0x00,         //   * *           
    0x24, 0x00,         //   *  *          
    0x24, 0x00,         //   *  *          
    0x44, 0x00,         //   *   *         
    0xCE, 0x01,         //  ***  ***       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x62,         //  *   ** 
    0x02,         //  *      
    0x06,         //  **     
    0x1C,         //   ***   
    0x20,         //      *  
    0x40,         //       * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xFE, 0x01,         //  ********       
    0x91, 0x00,         // *   *  *        
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x38, 0x00,         //    ***          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xCE, 0x01,         //  ***  ***       
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x4C, 0x00,         //   **  *         
    0x78, 0x00,         //    ****         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x8F, 0x03,         // ****   ***      
    0x04, 0x01,         //   *     *       
    0x84, 0x00,         //   *    *        
    0x8C, 0x00,         //   **   *        
    0x88, 0x00,         //    *   *        
    0x48, 0x00,         //    *  *         
    0x58, 0x00,         //    ** *         
    0x50, 0x00,         //     * *         
    0x30, 0x00,         //     **          
    0x20, 0x00,         //      *          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x4F, 0x1C,         // ****  *   ***   
    0x42, 0x08,         //  *    *    *    
    0xC6, 0x08,         //  **   **   *    
    0xA4, 0x08,         //   *  * *   *    
    0xA4, 0x05,         //   *  * ** *     
    0x24, 0x05,         //   *  *  * *     
    0x1C, 0x05,         //   ***   * *     
    0x18, 0x07,         //    **   ***     
    0x18, 0x02,         //    **    *      
    0x08, 0x02,         //    *     *      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xCF, 0x01,         // ****  ***       
    0x86, 0x00,         //  **    *        
    0x4C, 0x00,         //   **  *         
    0x38, 0x00,         //    ***          
    0x30, 0x00,         //     **          
    0x30, 0x00,         //     **          
    0x68, 0x00,         //    * **         
    0xC4, 0x00,         //   *   **        
    0x84, 0x00,         //   *    *        
    0xCF, 0x03,         // ****  ****      
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC3, 0x01,         // **    ***       
    0x44, 0x00,         //   *   *         
    0x4C, 0x00,         //   **  *         
    0x28, 0x00,         //    * *          
    0x38, 0x00,         //    ***          
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x10, 0x00,         //     *           
    0x38, 0x00,         //    ***          
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xFE,         //  *******
    0x42,         //  *    * 
    0x21,         // *    *  
    0x30,         //     **  
    0x10,         //     *   
    0x08,         //    *    
    0x0C,         //   **    
    0x84,         //   *    *
    0x82,         //  *     *
    0xFF,         // ********
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x0E,         //  ***    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x10,         //     *   
    0x10,         //     *   
    0x30,         //     **  
    0x20,         //      *  
    0x20,         //      *  
    0x40,         //       * 
    0x40,         //       * 
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x0E,         //  ***    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x08,         //    *    
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x18,         //    **   
    0x18,         //    **   
    0x34,         //   * **  
    0x24,         //   *  *  
    0x22,         //  *   *  
    0x62,         //  *   ** 
    0x42,         //  *    * 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7F,         // ******* 
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x26,         //  **  *  
    0x20,         //      *  
    0x3C,         //   ****  
    0x22,         //  *   *  
    0x32,         //  *  **  
    0x6E,         //  *** ** 
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x03,         // **      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x3A,         //  * ***  
    0x66,         //  **  ** 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x22,         //  *   *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x26,         //  **  *  
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x66,         //  **  ** 
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x60,         //      ** 
    0x40,         //       * 
    0x40,         //       * 
    0x40,         //       * 
    0x40,         //       * 
    0x78,         //    **** 
    0x46,         //  **   * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x66,         //  **  ** 
    0xDC,         //   *** **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3C,         //   ****  
    0x42,         //  *    * 
    0x7E,         //  ****** 
    0x02,         //  *      
    0x02,         //  *      
    0x46,         //  **   * 
    0x3C,         //   ****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x1E,         //  ****   
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x7E,         //  ****** 
    0x21,         // *    *  
    0x21,         // *    *  
    0x23,         // **   *  
    0x1E,         //  ****   
    0x02,         //  *      
    0x1E,         //  ****   
    0x61,         // *    ** 
    0x41,         // *     * 
    0x61,         // *    ** 
    0x1E,         //  ****   
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x06, 0x00,         //  **             
    0x04, 0x00,         //   *             
    0x04, 0x00,         //   *             
    0x04, 0x00,         //   *             
    0x04, 0x00,         //   *             
    0xE4, 0x00,         //   *  ***        
    0x9C, 0x00,         //   ***  *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0xCE, 0x01,         //  ***  ***       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x04,         //   *     
    0x04,         //   *     
    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0xE4,         //   *  ***
    0x24,         //   *  *  
    0x1C,         //   ***   
    0x14,         //   * *   
    0x34,         //   * **  
    0x64,         //   *  ** 
    0xCE,         //  ***  **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x06,         //  **     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x76, 0x07,         //  ** *** ***     
    0xCC, 0x04,         //   **  **  *     
    0x44, 0x04,         //   *   *   *     
    0x44, 0x04,         //   *   *   *     
    0x44, 0x04,         //   *   *   *     
    0x44, 0x04,         //   *   *   *     
    0xEE, 0x0E,         //  *** *** ***    
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE4, 0x00,         //   *  ***        
    0x9E, 0x00,         //  ****  *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0x84, 0x00,         //   *    *        
    0xCE, 0x01,         //  ***  ***       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x38,         //    ***  
    0x66,         //  **  ** 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x26,         //  **  *  
    0x1C,         //   ***   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x36,         //  ** **  
    0x4C,         //   **  * 
    0x44,         //   *   * 
    0x44,         //   *   * 
    0x44,         //   *   * 
    0x24,         //   *  *  
    0x3C,         //   ****  
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x78,         //    **** 
    0x44,         //   *   * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x66,         //  **  ** 
    0x5C,         //   *** * 
    0x40,         //       * 
    0x40,         //       * 
    0x40,         //       * 
    0xE0,         //      ***
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x36,         //  ** **  
    0x2C,         //   ** *  
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x0C,         //   **    
    0x12,         //  *  *   
    0x02,         //  *      
    0x0C,         //   **    
    0x12,         //  *  *   
    0x12,         //  *  *   
    0x0E,         //  ***    
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x1F,         // *****   
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x1E,         //  ****   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x63,         // **   ** 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x42,         //  *    * 
    0x62,         //  *   ** 
    0xDC,         //   *** **
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xE7,         // ***  ***
    0x46,         //  **   * 
    0x24,         //   *  *  
    0x24,         //   *  *  
    0x18,         //    **   
    0x18,         //    **   
    0x18,         //    **   
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x27, 0x06,         // ***  *   **     
    0x62, 0x02,         //  *   **  *      
    0x64, 0x02,         //   *  **  *      
    0x54, 0x02,         //   * * *  *      
    0x94, 0x01,         //   * *  **       
    0x8C, 0x01,         //   **   **       
    0x88, 0x01,         //    *   **       
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xEF,         // **** ***
    0x24,         //   *  *  
    0x18,         //    **   
    0x18,         //    **   
    0x34,         //   * **  
    0x62,         //  *   ** 
    0xE7,         // ***  ***
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0xE7,         // ***  ***
    0x46,         //  **   * 
    0x24,         //   *  *  
    0x24,         //   *  *  
    0x2C,         //   ** *  
    0x18,         //    **   
    0x18,         //    **   
    0x08,         //    *    
    0x08,         //    *    
    0x04,         //   *     
    0x03,         // **      
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x3E,         //  *****  
    0x22,         //  *   *  
    0x10,         //     *   
    0x08,         //    *    
    0x04,         //   *     
    0x22,         //  *   *  
    0x3E,         //  *****  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x08,         //    *    
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x03,         // **      
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x04,         //   *     
    0x08,         //    *    
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x01,         // *       
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x0C,         //   **    
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x02,         //  *      
    0x01,         // *       
    0x00,         //         
    0x00,         //         
    0x00,         //         

    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x4C,         //   **  * 
    0x33,         // **  **  
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         
    0x00,         //         

};

/*********************************
 * TYPE_FONT_FILE Structure
 * Label: BigFonts
 * Description:  Heigth: 58 pixels, range: ' ' to ':'
 ***********************************/

extern const char __BigFonts[] __attribute__((aligned(2)));

const FONT_FLASH BigFonts =
{
    (FLASH | COMP_NONE),
    __BigFonts
};

const char __BigFonts[] __attribute__((aligned(2))) =
{
/****************************************
 * Font header
 ****************************************/
    0x00,           // Information
    0x00,           // ID
    0x20, 0x00,     // First Character
    0x3A, 0x00,     // Last Character
    0x3A,           // Height
    0x00,           // Reserved
/****************************************
 * Font Glyph Table
 ****************************************/
    0x0B, 0x74, 0x00, 0x00,           // width, MSB Offset, LSB offset
    0x0D, 0xE8, 0x00, 0x00,           // width, MSB Offset, LSB offset
    0x15, 0x5C, 0x01, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0x0A, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0xB8, 0x02, 0x00,           // width, MSB Offset, LSB offset
    0x22, 0x66, 0x03, 0x00,           // width, MSB Offset, LSB offset
    0x21, 0x88, 0x04, 0x00,           // width, MSB Offset, LSB offset
    0x0C, 0xAA, 0x05, 0x00,           // width, MSB Offset, LSB offset
    0x10, 0x1E, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x10, 0x92, 0x06, 0x00,           // width, MSB Offset, LSB offset
    0x16, 0x06, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x14, 0xB4, 0x07, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0x62, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x11, 0xD6, 0x08, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0x84, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0xF8, 0x09, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0xA6, 0x0A, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0x54, 0x0B, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0x02, 0x0C, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0xB0, 0x0C, 0x00,           // width, MSB Offset, LSB offset
    0x18, 0x5E, 0x0D, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0x0C, 0x0E, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0xBA, 0x0E, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0x68, 0x0F, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0x16, 0x10, 0x00,           // width, MSB Offset, LSB offset
    0x17, 0xC4, 0x10, 0x00,           // width, MSB Offset, LSB offset
    0x0B, 0x72, 0x11, 0x00,           // width, MSB Offset, LSB offset
/***********************************
 * Font Characters
 ***********************************/
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x80, 0x01,         //        **       
    0xE0, 0x01,         //      ****       
    0xF0, 0x01,         //     *****       
    0xF0, 0x01,         //     *****       
    0xF0, 0x01,         //     *****       
    0xF0, 0x01,         //     *****       
    0xF0, 0x01,         //     *****       
    0xF0, 0x01,         //     *****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x01,         //       ***       
    0xE0, 0x03,         //      *****      
    0xF0, 0x03,         //     ******      
    0xF0, 0x03,         //     ******      
    0xF0, 0x03,         //     ******      
    0xF0, 0x01,         //     *****       
    0xE0, 0x00,         //      ***        
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xC0, 0xC0, 0x01,         //       **      ***       
    0xF0, 0xF0, 0x01,         //     ****    *****       
    0xF0, 0xF0, 0x01,         //     ****    *****       
    0xF0, 0xE0, 0x01,         //     ****     ****       
    0xF0, 0xE0, 0x01,         //     ****     ****       
    0xF0, 0xE0, 0x01,         //     ****     ****       
    0xF0, 0xE0, 0x01,         //     ****     ****       
    0xF0, 0xE0, 0x01,         //     ****     ****       
    0xF0, 0xE0, 0x00,         //     ****     ***        
    0xE0, 0xE0, 0x00,         //      ***     ***        
    0xE0, 0xE0, 0x00,         //      ***     ***        
    0xE0, 0xE0, 0x00,         //      ***     ***        
    0xE0, 0xE0, 0x00,         //      ***     ***        
    0xE0, 0xE0, 0x00,         //      ***     ***        
    0x60, 0xC0, 0x00,         //      **       **        
    0x60, 0xC0, 0x00,         //      **       **        
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x30, 0x18,         //             **     **   
    0x00, 0x38, 0x1C,         //            ***    ***   
    0x00, 0x38, 0x1C,         //            ***    ***   
    0x00, 0x18, 0x1C,         //            **     ***   
    0x00, 0x1C, 0x0C,         //           ***     **    
    0x00, 0x1C, 0x0E,         //           ***    ***    
    0x00, 0x1C, 0x0E,         //           ***    ***    
    0x00, 0x0C, 0x06,         //           **     **     
    0xE0, 0xFF, 0x7F,         //      ****************** 
    0xE0, 0xFF, 0x7F,         //      ****************** 
    0x00, 0x06, 0x03,         //          **     **      
    0x00, 0x87, 0x03,         //         ***    ***      
    0x00, 0x87, 0x03,         //         ***    ***      
    0x00, 0x83, 0x03,         //         **     ***      
    0x00, 0x83, 0x01,         //         **     **       
    0x80, 0xC3, 0x01,         //        ***    ***       
    0x80, 0xC3, 0x01,         //        ***    ***       
    0xF8, 0xFF, 0x1F,         //    ******************   
    0xFC, 0xFF, 0x0F,         //   ******************    
    0xC0, 0xE1, 0x00,         //       ***    ***        
    0xC0, 0xE0, 0x00,         //       **     ***        
    0xE0, 0x60, 0x00,         //      ***     **         
    0xE0, 0x70, 0x00,         //      ***    ***         
    0xE0, 0x70, 0x00,         //      ***    ***         
    0x60, 0x70, 0x00,         //      **     ***         
    0x70, 0x30, 0x00,         //     ***     **          
    0x70, 0x38, 0x00,         //     ***    ***          
    0x30, 0x18, 0x00,         //     **     **           
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0xFF, 0x00,         //         ********        
    0xE0, 0xFF, 0x03,         //      *************      
    0xF0, 0xFC, 0x07,         //     ****  *********     
    0x78, 0xCC, 0x07,         //    ****   **  *****     
    0x38, 0x8C, 0x03,         //    ***    **   ***      
    0x3C, 0x0C, 0x01,         //   ****    **    *       
    0x3C, 0x0C, 0x00,         //   ****    **            
    0x3C, 0x0C, 0x00,         //   ****    **            
    0x7C, 0x0C, 0x00,         //   *****   **            
    0xFC, 0x0C, 0x00,         //   ******  **            
    0xF8, 0x0F, 0x00,         //    *********            
    0xF8, 0x0F, 0x00,         //    *********            
    0xF0, 0x3F, 0x00,         //     **********          
    0xC0, 0xFF, 0x01,         //       ***********       
    0x00, 0xFF, 0x03,         //         **********      
    0x00, 0xFC, 0x07,         //           *********     
    0x00, 0xFC, 0x0F,         //           **********    
    0x00, 0xCC, 0x1F,         //           **  *******   
    0x00, 0x0C, 0x1F,         //           **    *****   
    0x00, 0x0C, 0x1F,         //           **    *****   
    0x00, 0x0C, 0x1E,         //           **     ****   
    0x00, 0x0C, 0x1E,         //           **     ****   
    0x0C, 0x0C, 0x1E,         //   **      **     ****   
    0x0C, 0x0C, 0x0E,         //   **      **     ***    
    0x1C, 0x0C, 0x0F,         //   ***     **    ****    
    0x3C, 0x8C, 0x07,         //   ****    **   ****     
    0xFC, 0xCC, 0x03,         //   ******  **  ****      
    0xF8, 0xFF, 0x00,         //    *************        
    0xC0, 0x3F, 0x00,         //       ********          
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x80, 0x0F, 0x00, 0x18, 0x00,         //        *****               **           
    0xE0, 0x1F, 0x00, 0x1E, 0x00,         //      ********            ****           
    0xF0, 0x3C, 0x00, 0x0F, 0x00,         //     ****  ****          ****            
    0x78, 0x78, 0x00, 0x07, 0x00,         //    ****    ****         ***             
    0x38, 0x78, 0x80, 0x07, 0x00,         //    ***     ****        ****             
    0x38, 0xF0, 0xC0, 0x03, 0x00,         //    ***      ****      ****              
    0x3C, 0xF0, 0xE0, 0x01, 0x00,         //   ****      ****     ****               
    0x3C, 0xF0, 0xE0, 0x00, 0x00,         //   ****      ****     ***                
    0x3C, 0xF0, 0xF0, 0x00, 0x00,         //   ****      ****    ****                
    0x3C, 0xF0, 0x78, 0x00, 0x00,         //   ****      ****   ****                 
    0x3C, 0xF0, 0x38, 0x00, 0x00,         //   ****      ****   ***                  
    0x3C, 0x70, 0x3C, 0x00, 0x00,         //   ****      ***   ****                  
    0x78, 0x70, 0x1E, 0x00, 0x00,         //    ****     ***  ****                   
    0x78, 0x78, 0x0E, 0x00, 0x00,         //    ****    ****  ***                    
    0xF0, 0x3C, 0x07, 0x00, 0x00,         //     ****  ****  ***                     
    0xE0, 0x9F, 0x87, 0x0F, 0x00,         //      ********  ****    *****            
    0xC0, 0xC7, 0xE3, 0x1F, 0x00,         //       *****   ****   ********           
    0x00, 0xC0, 0xF1, 0x3C, 0x00,         //               ***   ****  ****          
    0x00, 0xE0, 0x79, 0x78, 0x00,         //              ****  ****    ****         
    0x00, 0xF0, 0x38, 0x78, 0x00,         //             ****   ***     ****         
    0x00, 0x70, 0x3C, 0xF0, 0x00,         //             ***   ****      ****        
    0x00, 0x38, 0x3C, 0xF0, 0x00,         //            ***    ****      ****        
    0x00, 0x3C, 0x3C, 0xF0, 0x00,         //           ****    ****      ****        
    0x00, 0x1E, 0x3C, 0xF0, 0x00,         //          ****     ****      ****        
    0x00, 0x0E, 0x3C, 0xF0, 0x00,         //          ***      ****      ****        
    0x00, 0x0F, 0x3C, 0xF0, 0x00,         //         ****      ****      ****        
    0x80, 0x07, 0x78, 0x70, 0x00,         //        ****        ****     ***         
    0x80, 0x03, 0x78, 0x78, 0x00,         //        ***         ****    ****         
    0xC0, 0x01, 0xF0, 0x3C, 0x00,         //       ***           ****  ****          
    0xE0, 0x01, 0xE0, 0x1F, 0x00,         //      ****            ********           
    0x60, 0x00, 0xC0, 0x07, 0x00,         //      **               *****             
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         

    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0xE0, 0x03, 0x00, 0x00,         //              *****                      
    0x00, 0xF8, 0x0F, 0x00, 0x00,         //            *********                    
    0x00, 0x1C, 0x0F, 0x00, 0x00,         //           ***   ****                    
    0x00, 0x0E, 0x1F, 0x00, 0x00,         //          ***    *****                   
    0x00, 0x07, 0x1E, 0x00, 0x00,         //         ***      ****                   
    0x00, 0x07, 0x1E, 0x00, 0x00,         //         ***      ****                   
    0x80, 0x07, 0x1E, 0x00, 0x00,         //        ****      ****                   
    0x80, 0x07, 0x1E, 0x00, 0x00,         //        ****      ****                   
    0x80, 0x07, 0x0E, 0x00, 0x00,         //        ****      ***                    
    0x80, 0x07, 0x0F, 0x00, 0x00,         //        ****     ****                    
    0x80, 0x8F, 0x07, 0x00, 0x00,         //        *****   ****                     
    0x80, 0xCF, 0x03, 0x00, 0x00,         //        *****  ****                      
    0x00, 0xEF, 0x01, 0x00, 0x00,         //         **** ****                       
    0x00, 0xFF, 0x00, 0x00, 0x00,         //         ********                        
    0x00, 0x3F, 0x00, 0x00, 0x00,         //         ******                          
    0x00, 0x3F, 0xE0, 0xFF, 0x00,         //         ******       ***********        
    0x80, 0x3F, 0xF0, 0xFF, 0x01,         //        *******      *************       
    0xC0, 0x7F, 0xC0, 0x63, 0x00,         //       *********       ****   **         
    0xE0, 0xFB, 0x80, 0x07, 0x00,         //      ***** *****       ****             
    0xF0, 0xF9, 0x80, 0x07, 0x00,         //     *****  *****       ****             
    0xF0, 0xF0, 0x01, 0x07, 0x00,         //     ****    *****       ***             
    0x78, 0xF0, 0x03, 0x07, 0x00,         //    ****     ******      ***             
    0x78, 0xE0, 0x07, 0x07, 0x00,         //    ****      ******     ***             
    0x3C, 0xC0, 0x07, 0x07, 0x00,         //   ****        *****     ***             
    0x3C, 0xC0, 0x8F, 0x03, 0x00,         //   ****        ******   ***              
    0x3C, 0x80, 0x9F, 0x03, 0x00,         //   ****         ******  ***              
    0x3C, 0x00, 0xFF, 0x01, 0x00,         //   ****          *********               
    0x3C, 0x00, 0xFE, 0x01, 0x00,         //   ****           ********               
    0x3C, 0x00, 0xFC, 0x00, 0x00,         //   ****            ******                
    0x78, 0x00, 0xF8, 0x01, 0x00,         //    ****            ******               
    0x78, 0x00, 0xF8, 0x03, 0x00,         //    ****            *******              
    0xF0, 0x00, 0xFC, 0x0F, 0x00,         //     ****          **********            
    0xE0, 0x03, 0x8F, 0xFF, 0x00,         //      *****      ****   *********        
    0xC0, 0xFF, 0x03, 0x7F, 0x00,         //       ************      *******         
    0x00, 0xFF, 0x00, 0x0E, 0x00,         //         ********         ***            
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         
    0x00, 0x00, 0x00, 0x00, 0x00,         //                                         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x60, 0x00,         //      **         
    0x60, 0x00,         //      **         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x20,         //              *  
    0x00, 0x70,         //             *** 
    0x00, 0x1C,         //           ***   
    0x00, 0x0C,         //           **    
    0x00, 0x0E,         //          ***    
    0x00, 0x07,         //         ***     
    0x80, 0x07,         //        ****     
    0x80, 0x03,         //        ***      
    0xC0, 0x03,         //       ****      
    0xC0, 0x01,         //       ***       
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x00,         //      ***        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0x70, 0x00,         //     ***         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0x78, 0x00,         //    ****         
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xF0, 0x00,         //     ****        
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xC0, 0x03,         //       ****      
    0xC0, 0x03,         //       ****      
    0x80, 0x07,         //        ****     
    0x00, 0x07,         //         ***     
    0x00, 0x0F,         //         ****    
    0x00, 0x0E,         //          ***    
    0x00, 0x1C,         //           ***   
    0x00, 0x38,         //            ***  
    0x00, 0x60,         //              ** 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x04, 0x00,         //   *             
    0x1E, 0x00,         //  ****           
    0x38, 0x00,         //    ***          
    0x70, 0x00,         //     ***         
    0xF0, 0x00,         //     ****        
    0xE0, 0x00,         //      ***        
    0xC0, 0x01,         //       ***       
    0xC0, 0x03,         //       ****      
    0xC0, 0x03,         //       ****      
    0x80, 0x07,         //        ****     
    0x80, 0x07,         //        ****     
    0x80, 0x07,         //        ****     
    0x00, 0x0F,         //         ****    
    0x00, 0x0F,         //         ****    
    0x00, 0x0F,         //         ****    
    0x00, 0x0F,         //         ****    
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x1E,         //          ****   
    0x00, 0x0E,         //          ***    
    0x00, 0x0F,         //         ****    
    0x00, 0x0F,         //         ****    
    0x00, 0x0F,         //         ****    
    0x00, 0x07,         //         ***     
    0x80, 0x07,         //        ****     
    0x80, 0x07,         //        ****     
    0x80, 0x03,         //        ***      
    0xC0, 0x03,         //       ****      
    0xC0, 0x01,         //       ***       
    0xE0, 0x01,         //      ****       
    0xE0, 0x00,         //      ***        
    0x70, 0x00,         //     ***         
    0x30, 0x00,         //     **          
    0x38, 0x00,         //    ***          
    0x0C, 0x00,         //   **            
    0x06, 0x00,         //  **             
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x18, 0x00,         //            **           
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0C, 0x00,         //           **            
    0x0C, 0x0C, 0x06,         //   **      **     **     
    0x3C, 0x0C, 0x0F,         //   ****    **    ****    
    0x7C, 0x8C, 0x0F,         //   *****   **   *****    
    0xF8, 0xEC, 0x03,         //    *****  ** *****      
    0xC0, 0xFF, 0x00,         //       **********        
    0x00, 0x3F, 0x00,         //         ******          
    0x00, 0x3F, 0x00,         //         ******          
    0xC0, 0xFF, 0x00,         //       **********        
    0xF0, 0xED, 0x03,         //     ***** ** *****      
    0x7C, 0x8C, 0x0F,         //   *****   **   *****    
    0x3C, 0x0C, 0x0F,         //   ****    **    ****    
    0x18, 0x0C, 0x06,         //    **     **     **     
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x06, 0x00,         //          **             
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x0C, 0x00,         //           **            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0xFC, 0xFF, 0x07,         //   *****************     
    0xFC, 0xFF, 0x07,         //   *****************     
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x06, 0x00,         //          **             
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xC0, 0x00,         //       **        
    0xF8, 0x00,         //    *****        
    0xFC, 0x01,         //   *******       
    0xFC, 0x01,         //   *******       
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x01,         //      ****       
    0xE0, 0x00,         //      ***        
    0xE0, 0x00,         //      ***        
    0x70, 0x00,         //     ***         
    0x30, 0x00,         //     **          
    0x18, 0x00,         //    **           
    0x08, 0x00,         //    *            
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xFC, 0x7F, 0x00,         //   *************         
    0xFE, 0x7F, 0x00,         //  **************         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xF0, 0x01,         //     *****       
    0xF8, 0x01,         //    ******       
    0xF8, 0x01,         //    ******       
    0xF8, 0x01,         //    ******       
    0xF8, 0x00,         //    *****        
    0x70, 0x00,         //     ***         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x38,         //                    ***  
    0x00, 0x00, 0x1C,         //                   ***   
    0x00, 0x00, 0x1E,         //                  ****   
    0x00, 0x00, 0x1E,         //                  ****   
    0x00, 0x00, 0x0E,         //                  ***    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xF0, 0x00,         //             ****        
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x38, 0x00,         //            ***          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0F, 0x00,         //         ****            
    0x00, 0x0F, 0x00,         //         ****            
    0x00, 0x07, 0x00,         //         ***             
    0x80, 0x07, 0x00,         //        ****             
    0x80, 0x03, 0x00,         //        ***              
    0xC0, 0x03, 0x00,         //       ****              
    0xC0, 0x03, 0x00,         //       ****              
    0xC0, 0x01, 0x00,         //       ***               
    0xE0, 0x01, 0x00,         //      ****               
    0xE0, 0x01, 0x00,         //      ****               
    0xE0, 0x00, 0x00,         //      ***                
    0xF0, 0x00, 0x00,         //     ****                
    0x70, 0x00, 0x00,         //     ***                 
    0x78, 0x00, 0x00,         //    ****                 
    0x78, 0x00, 0x00,         //    ****                 
    0x38, 0x00, 0x00,         //    ***                  
    0x3C, 0x00, 0x00,         //   ****                  
    0x3C, 0x00, 0x00,         //   ****                  
    0x1C, 0x00, 0x00,         //   ***                   
    0x0E, 0x00, 0x00,         //  ***                    
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x7E, 0x00,         //          ******         
    0x80, 0xFF, 0x00,         //        *********        
    0xC0, 0xE1, 0x01,         //       ***    ****       
    0xE0, 0xC0, 0x03,         //      ***      ****      
    0xE0, 0x80, 0x07,         //      ***       ****     
    0x70, 0x80, 0x07,         //     ***        ****     
    0x70, 0x00, 0x0F,         //     ***         ****    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x38, 0x00, 0x0F,         //    ***          ****    
    0x38, 0x00, 0x0F,         //    ***          ****    
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x78, 0x00, 0x0E,         //    ****          ***    
    0x78, 0x00, 0x0E,         //    ****          ***    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x78, 0x00, 0x07,         //    ****         ***     
    0xF0, 0x00, 0x07,         //     ****        ***     
    0xF0, 0x80, 0x03,         //     ****       ***      
    0xE0, 0x81, 0x03,         //      ****      ***      
    0xC0, 0xC3, 0x01,         //       ****    ***       
    0x80, 0xFF, 0x00,         //        *********        
    0x00, 0x3F, 0x00,         //         ******          
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x30, 0x00,         //             **          
    0x00, 0x3C, 0x00,         //           ****          
    0x80, 0x3F, 0x00,         //        *******          
    0xE0, 0x3F, 0x00,         //      *********          
    0xF8, 0x3F, 0x00,         //    ***********          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x7E, 0x00,         //          ******         
    0xE0, 0xFF, 0x03,         //      *************      
    0xF0, 0xFF, 0x0F,         //     ****************    
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0xFC, 0x00,         //           ******        
    0x80, 0xFF, 0x03,         //        ***********      
    0xC0, 0xC1, 0x07,         //       ***     *****     
    0xE0, 0x80, 0x07,         //      ***       ****     
    0x70, 0x80, 0x0F,         //     ***        *****    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x38, 0x00, 0x0F,         //    ***          ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xF0, 0x00,         //             ****        
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0F, 0x00,         //         ****            
    0x80, 0x07, 0x00,         //        ****             
    0xC0, 0x03, 0x00,         //       ****              
    0xC0, 0x03, 0x08,         //       ****         *    
    0xE0, 0x01, 0x08,         //      ****          *    
    0xF0, 0x00, 0x08,         //     ****           *    
    0x78, 0x00, 0x0C,         //    ****           **    
    0xFC, 0xFF, 0x0F,         //   ******************    
    0xF8, 0xFF, 0x0F,         //    *****************    
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x3F, 0x00,         //         ******          
    0xE0, 0xFF, 0x00,         //      ***********        
    0xF0, 0xF0, 0x01,         //     ****    *****       
    0x38, 0xE0, 0x01,         //    ***       ****       
    0x3C, 0xE0, 0x03,         //   ****       *****      
    0x3C, 0xC0, 0x03,         //   ****        ****      
    0x1C, 0xC0, 0x03,         //   ***         ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x1C, 0x00,         //           ***           
    0x80, 0x7F, 0x00,         //        ********         
    0x00, 0xFF, 0x01,         //         *********       
    0x00, 0xE0, 0x03,         //              *****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x07,         //               *****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0xC0, 0x03,         //               ****      
    0x02, 0xC0, 0x03,         //  *            ****      
    0x06, 0xE0, 0x01,         //  **          ****       
    0x1E, 0xF8, 0x00,         //  ****      *****        
    0xF8, 0x7F, 0x00,         //    ************         
    0xE0, 0x0F, 0x00,         //      *******            
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x03,         //                 **      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xE0, 0x03,         //              *****      
    0x00, 0xF0, 0x03,         //             ******      
    0x00, 0xF8, 0x03,         //            *******      
    0x00, 0xF8, 0x03,         //            *******      
    0x00, 0xDC, 0x03,         //           *** ****      
    0x00, 0xCE, 0x03,         //          ***  ****      
    0x00, 0xCE, 0x03,         //          ***  ****      
    0x00, 0xC7, 0x03,         //         ***   ****      
    0x00, 0xC3, 0x03,         //         **    ****      
    0x80, 0xC3, 0x03,         //        ***    ****      
    0xC0, 0xC1, 0x03,         //       ***     ****      
    0xC0, 0xC1, 0x03,         //       ***     ****      
    0xE0, 0xC0, 0x03,         //      ***      ****      
    0x70, 0xC0, 0x03,         //     ***       ****      
    0x70, 0xC0, 0x03,         //     ***       ****      
    0x38, 0xC0, 0x03,         //    ***        ****      
    0x1C, 0xC0, 0x03,         //   ***         ****      
    0xFC, 0xFF, 0x1F,         //   *******************   
    0xFE, 0xFF, 0x3F,         //  *********************  
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xF8, 0x0F,         //            *********    
    0x00, 0xFE, 0x1F,         //          ************   
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xE0, 0xFF, 0x07,         //      **************     
    0xE0, 0xFF, 0x03,         //      *************      
    0xE0, 0xFF, 0x01,         //      ************       
    0x60, 0x00, 0x00,         //      **                 
    0x60, 0x00, 0x00,         //      **                 
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0x70, 0x00, 0x00,         //     ***                 
    0x30, 0x00, 0x00,         //     **                  
    0x30, 0x00, 0x00,         //     **                  
    0xF0, 0x3F, 0x00,         //     **********          
    0xF8, 0xFF, 0x00,         //    *************        
    0x78, 0xF0, 0x01,         //    ****     *****       
    0x10, 0xC0, 0x03,         //     *         ****      
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x07,         //                 ***     
    0x00, 0x80, 0x07,         //                ****     
    0x04, 0x80, 0x03,         //   *            ***      
    0x1C, 0xC0, 0x03,         //   ***         ****      
    0x7C, 0xF0, 0x01,         //   *****     *****       
    0xF0, 0xFF, 0x00,         //     ************        
    0x80, 0x3F, 0x00,         //        *******          
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x06,         //                  **     
    0x00, 0xC0, 0x0F,         //               ******    
    0x00, 0xF0, 0x00,         //             ****        
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0F, 0x00,         //         ****            
    0x80, 0x07, 0x00,         //        ****             
    0xC0, 0x03, 0x00,         //       ****              
    0xC0, 0x01, 0x00,         //       ***               
    0xE0, 0x01, 0x00,         //      ****               
    0xE0, 0x00, 0x00,         //      ***                
    0xF0, 0x00, 0x00,         //     ****                
    0x70, 0xFC, 0x00,         //     ***   ******        
    0x70, 0xFF, 0x03,         //     *** **********      
    0xF8, 0xC3, 0x07,         //    *******    *****     
    0xF8, 0x80, 0x0F,         //    *****       *****    
    0xF8, 0x00, 0x0F,         //    *****        ****    
    0x78, 0x00, 0x1F,         //    ****         *****   
    0x78, 0x00, 0x1E,         //    ****          ****   
    0x78, 0x00, 0x1E,         //    ****          ****   
    0x78, 0x00, 0x1E,         //    ****          ****   
    0x78, 0x00, 0x1E,         //    ****          ****   
    0x78, 0x00, 0x1E,         //    ****          ****   
    0xF0, 0x00, 0x1E,         //     ****         ****   
    0xF0, 0x00, 0x0E,         //     ****         ***    
    0xF0, 0x00, 0x0E,         //     ****         ***    
    0xE0, 0x01, 0x07,         //      ****       ***     
    0xC0, 0x03, 0x07,         //       ****      ***     
    0xC0, 0x87, 0x03,         //       *****    ***      
    0x00, 0xFF, 0x01,         //         *********       
    0x00, 0x7E, 0x00,         //          ******         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0xF8, 0xFF, 0x1F,         //    ******************   
    0xF8, 0xFF, 0x1F,         //    ******************   
    0xF8, 0xFF, 0x1F,         //    ******************   
    0x18, 0x00, 0x0E,         //    **            ***    
    0x08, 0x00, 0x0E,         //    *             ***    
    0x08, 0x00, 0x07,         //    *            ***     
    0x04, 0x00, 0x07,         //   *             ***     
    0x00, 0x00, 0x03,         //                 **      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0x80, 0x03,         //                ***      
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xC0, 0x01,         //               ***       
    0x00, 0xC0, 0x00,         //               **        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0xE0, 0x00,         //              ***        
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x70, 0x00,         //             ***         
    0x00, 0x38, 0x00,         //            ***          
    0x00, 0x38, 0x00,         //            ***          
    0x00, 0x3C, 0x00,         //           ****          
    0x00, 0x1C, 0x00,         //           ***           
    0x00, 0x1E, 0x00,         //          ****           
    0x00, 0x0E, 0x00,         //          ***            
    0x00, 0x0F, 0x00,         //         ****            
    0x00, 0x0F, 0x00,         //         ****            
    0x80, 0x07, 0x00,         //        ****             
    0x80, 0x07, 0x00,         //        ****             
    0xC0, 0x07, 0x00,         //       *****             
    0xC0, 0x03, 0x00,         //       ****              
    0xE0, 0x00, 0x00,         //      ***                
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0xFE, 0x00,         //          *******        
    0x80, 0xFF, 0x03,         //        ***********      
    0xE0, 0xC1, 0x07,         //      ****     *****     
    0xF0, 0x80, 0x07,         //     ****       ****     
    0x70, 0x00, 0x0F,         //     ***         ****    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0xF8, 0x00, 0x07,         //    *****        ***     
    0xF8, 0x80, 0x07,         //    *****       ****     
    0xF0, 0x83, 0x03,         //     ******     ***      
    0xE0, 0xEF, 0x01,         //      ******* ****       
    0xC0, 0x7F, 0x00,         //       *********         
    0x80, 0xFF, 0x00,         //        *********        
    0x00, 0xFF, 0x01,         //         *********       
    0xC0, 0xFB, 0x07,         //       **** ********     
    0xE0, 0xE1, 0x0F,         //      ****    *******    
    0xF0, 0x80, 0x0F,         //     ****       *****    
    0x78, 0x00, 0x1F,         //    ****         *****   
    0x38, 0x00, 0x1F,         //    ***          *****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x0E,         //   ****           ***    
    0x78, 0x00, 0x0F,         //    ****         ****    
    0xF8, 0x00, 0x07,         //    *****        ***     
    0xF0, 0xC1, 0x03,         //     *****     ****      
    0xE0, 0xFF, 0x00,         //      ***********        
    0x80, 0x3F, 0x00,         //        *******          
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x7E, 0x00,         //          ******         
    0x80, 0xFF, 0x01,         //        **********       
    0xC0, 0xE1, 0x03,         //       ***    *****      
    0xE0, 0xC0, 0x07,         //      ***      *****     
    0x70, 0x80, 0x07,         //     ***        ****     
    0x78, 0x00, 0x0F,         //    ****         ****    
    0x38, 0x00, 0x0F,         //    ***          ****    
    0x3C, 0x00, 0x1F,         //   ****          *****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x3C, 0x00, 0x1E,         //   ****           ****   
    0x7C, 0x00, 0x1E,         //   *****          ****   
    0x78, 0x00, 0x1F,         //    ****         *****   
    0xF8, 0x80, 0x1F,         //    *****       ******   
    0xF0, 0xC1, 0x1E,         //     *****     ** ****   
    0xE0, 0x7F, 0x1E,         //      **********  ****   
    0x80, 0x1F, 0x0E,         //        ******    ***    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x00, 0x0F,         //                 ****    
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0x80, 0x07,         //                ****     
    0x00, 0xC0, 0x03,         //               ****      
    0x00, 0xE0, 0x01,         //              ****       
    0x00, 0xF0, 0x00,         //             ****        
    0x00, 0x78, 0x00,         //            ****         
    0x00, 0x3C, 0x00,         //           ****          
    0x80, 0x0F, 0x00,         //        *****            
    0xF0, 0x03, 0x00,         //     ******              
    0x60, 0x00, 0x00,         //      **                 
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         
    0x00, 0x00, 0x00,         //                         

    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xF0, 0x01,         //     *****       
    0xF8, 0x01,         //    ******       
    0xF8, 0x01,         //    ******       
    0xF8, 0x01,         //    ******       
    0xF8, 0x00,         //    *****        
    0x70, 0x00,         //     ***         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0xE0, 0x00,         //      ***        
    0xF0, 0x01,         //     *****       
    0xF8, 0x01,         //    ******       
    0xF8, 0x01,         //    ******       
    0xF8, 0x01,         //    ******       
    0xF8, 0x00,         //    *****        
    0x70, 0x00,         //     ***         
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 
    0x00, 0x00,         //                 

};

