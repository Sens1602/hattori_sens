// HardwareProfile.h
#define _HARDWARE_PROFILE_H_

// Various clock values
#define GetSystemClock()            32000000UL
#define GetPeripheralClock()        (GetSystemClock())
#define GetInstructionClock()       (GetSystemClock() / 2)

/** TRIS *********************************************/
#define INPUT_PIN           1
#define OUTPUT_PIN          0

/** LED **********************************************/
#define mLED_1              LATDbits.LATD2
#define mLED_2              LATDbits.LATD6
#define mLED_1_On()         mLED_1  = 1;
#define mLED_2_On()         mLED_2  = 1;   

#define mLED_1_Off()        mLED_1  = 0;
#define mLED_2_Off()        mLED_2  = 0;

#define mLED_1_Toggle()     mLED_1  = !mLED_1;
#define mLED_2_Toggle()     mLED_2  = !mLED_2;
