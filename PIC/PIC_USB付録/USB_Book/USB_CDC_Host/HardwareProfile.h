// HardwareProfile.h

#define _HARDWARE_PROFILE_H_


    // Various clock values
    #define GetSystemClock()            32000000UL
    #define GetPeripheralClock()        (GetSystemClock())
    #define GetInstructionClock()       (GetSystemClock() / 2)

    // Clock values
    #define MILLISECONDS_PER_TICK       10
    #define TIMER_PRESCALER             TIMER_PRESCALER_8   // 8MHz: TIMER_PRESCALER_1
    #define TIMER_PERIOD                20                  // 10ms=20000, 1ms=2000 , 10us=20





