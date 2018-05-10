#ifndef _SSD1926_SDCARD_DEMO_H
    #define _SSD1926_SDCARD_DEMO_H
    
    
#if defined(__dsPIC33F__)
    #include <p33Fxxxx.h>
#elif defined(__PIC24H__)
    #include <p24Hxxxx.h>
#elif defined(__PIC32MX__)
    #include <plib.h>
#else
    #include <p24Fxxxx.h>
#endif

#include "GenericTypeDefs.h"
#include "Graphics/Graphics.h"
#include "MDD File System/FSDefs.h"
#include "MDD File System/FSIO.h"
#include "SSD1926_SDCard.h"
#include "SSD1926_JPEG.h"
#if defined (MEB_BOARD)
#include "cpld.h"
#endif
#endif

