#ifndef HARDWARE_PROFILE_H
#define HARDWARE_PROFILE_H

//#define DEMO_BOARD USER_DEFINED_BOARD

#if !defined(DEMO_BOARD)
    #if defined(__C32__)
        #if defined(__32MX460F512L__)
            #if defined(PIC32MX460F512L_PIM)
                #include "HardwareProfile - PIC32MX460F512L PIM.h"
            #elif defined(PIC32_USB_STARTER_KIT)
                #include "HardwareProfile - PIC32 USB Starter Kit.h"
            #endif
        #elif defined(__32MX795F512L__)
            #if defined(PIC32MX795F512L_PIM)
                #include "HardwareProfile - PIC32MX795F512L PIM.h"
            #elif defined(PIC32_USB_STARTER_KIT)
                //PIC32 USB Starter Kit II
                #include "HardwareProfile - PIC32 USB Starter Kit.h"
            #endif
        #endif
    #endif

    #if defined(__C30__)
        #if defined(__PIC24FJ256GB110__)
            #include "HardwareProfile - PIC24FJ256GB110 PIM.h"
        #elif defined(__PIC24FJ256GB210__)
            #include "HardwareProfile - PIC24FJ256GB210 PIM.h"
        #elif defined(__PIC24FJ256GB106__)
            #include "HardwareProfile - PIC24F Starter Kit.h"
        #elif defined(__PIC24FJ64GB004__)
            #include "HardwareProfile - PIC24FJ64GB004 PIM.h"
        #elif defined(__PIC24FJ256DA210__)
            #include "HardwareProfile - PIC24FJ256DA210 Development Board.h"
        #elif defined(__dsPIC33EP512MU810__)
            #if defined(DSPIC33EP512MU810_PIM)
                #include "HardwareProfile - dsPIC33EP512MU810 PIM.h"
            #elif defined(DSPIC33E_USB_STARTER_KIT)
                #include "HardwareProfile - dsPIC33E USB Starter Kit.h"
            #endif
        #elif defined(__PIC24EP512GU810__)
            #if defined(PIC24EP512GU810_PIM)
                #include "HardwareProfile - PIC24EP512GU810 PIM.h"
            #endif
        #endif
    #endif

    #if defined(__18CXX)
        #if defined(__18F2553)
            #include "HardwareProfile - PICDEM FSUSB.h"
        #elif defined(__18F87J50)
            #include "HardwareProfile - PIC18F87J50 PIM.h"
        #elif defined(__18F14K50)
            #include "HardwareProfile - Low Pin Count USB Development Kit.h"
        #elif defined(__18F46J50)
            #if defined(PIC18F_STARTER_KIT_1)
                #include "HardwareProfile - PIC18F Starter Kit 1.h"
            #else
                #include "HardwareProfile - PIC18F46J50 PIM.h"
            #endif
        #elif defined(__18F47J53)
            #include "HardwareProfile - PIC18F47J53 PIM.h"
        #endif
    #endif
#endif

#endif  //HARDWARE_PROFILE_H
