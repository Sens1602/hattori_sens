/*$6*/





#ifndef _FLASHIMAGEDATA_H
    #define _FLASHIMAGEDATA_H

/* This is a machine generated file - Please look at ImageDecoder.h file for the
   Software License Agreement   */
    #include <stdio.h>

typedef enum _IMAGE_NAME
{
    MCHPLOGO_JPG= 0,
    MCHPICON_BMP= 1,
    TOTAL_IMAGES= 2
} IMAGE_NAME;

    #ifndef _FLASHIMAGEDATA_C
extern const unsigned char  *ImageList[];
extern size_t               aImageLength[];
    #endif
#endif
