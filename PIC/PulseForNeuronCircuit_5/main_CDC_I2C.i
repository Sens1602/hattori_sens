#line 1 "main_CDC_I2C.c"
#line 1 "main_CDC_I2C.c"

#line 3 "main_CDC_I2C.c"
 
 

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
 


#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

 
#line 52 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 54 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 56 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

#line 58 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 60 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"


#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
#line 62 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
 

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;     
typedef enum _BIT { CLEAR = 0, SET } BIT;

#line 68 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 70 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

 
typedef signed int          INT;
typedef signed char         INT8;
typedef signed short int    INT16;
typedef signed long int     INT32;

 
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

 
typedef unsigned int        UINT;
typedef unsigned char       UINT8;
typedef unsigned short int  UINT16;
 
#line 88 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
typedef unsigned short long UINT24;
#line 90 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
typedef unsigned long int   UINT32;      
 
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

typedef union
{
    UINT8 Val;
    struct
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union 
{
    UINT16 Val;
    UINT8 v[2] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;

 
#line 144 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
typedef union
{
    UINT24 Val;
    UINT8 v[3] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
    } bits;
} UINT24_VAL, UINT24_BITS;
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

typedef union
{
    UINT32 Val;
    UINT16 w[2] ;
    UINT8  v[4] ;
    struct 
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct 
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
         UINT8 b24:1;
         UINT8 b25:1;
         UINT8 b26:1;
         UINT8 b27:1;
         UINT8 b28:1;
         UINT8 b29:1;
         UINT8 b30:1;
         UINT8 b31:1;
    } bits;
} UINT32_VAL;

 
#line 245 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 332 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

 

 
typedef void                    VOID;

typedef char                    CHAR8;
typedef unsigned char           UCHAR8;

typedef unsigned char           BYTE;                            
typedef unsigned short int      WORD;                            
typedef unsigned long           DWORD;                           
 

typedef unsigned long long      QWORD;                           
typedef signed char             CHAR;                            
typedef signed short int        SHORT;                           
typedef signed long             LONG;                            
 

typedef signed long long        LONGLONG;                        
typedef union
{
    BYTE Val;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2] ;
    struct 
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2] ;
    BYTE v[4] ;
    struct 
    {
        WORD LW;
        WORD HW;
    } word;
    struct 
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct 
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
    } bits;
} DWORD_VAL;

 
typedef union
{
    QWORD Val;
    DWORD d[2] ;
    WORD w[4] ;
    BYTE v[8] ;
    struct 
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct 
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
         BYTE b32:1;
         BYTE b33:1;
         BYTE b34:1;
         BYTE b35:1;
         BYTE b36:1;
         BYTE b37:1;
         BYTE b38:1;
         BYTE b39:1;
         BYTE b40:1;
         BYTE b41:1;
         BYTE b42:1;
         BYTE b43:1;
         BYTE b44:1;
         BYTE b45:1;
         BYTE b46:1;
         BYTE b47:1;
         BYTE b48:1;
         BYTE b49:1;
         BYTE b50:1;
         BYTE b51:1;
         BYTE b52:1;
         BYTE b53:1;
         BYTE b54:1;
         BYTE b55:1;
         BYTE b56:1;
         BYTE b57:1;
         BYTE b58:1;
         BYTE b59:1;
         BYTE b60:1;
         BYTE b61:1;
         BYTE b62:1;
         BYTE b63:1;
    } bits;
} QWORD_VAL;

#line 547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"

#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/GenericTypeDefs.h"
#line 6 "main_CDC_I2C.c"


#line 1 "./usb_config.h"

#line 3 "./usb_config.h"
 


#line 7 "./usb_config.h"

 
#line 10 "./usb_config.h"
								
								
								
								
								
									
#line 17 "./usb_config.h"




#line 22 "./usb_config.h"
#line 23 "./usb_config.h"



#line 27 "./usb_config.h"
#line 28 "./usb_config.h"
#line 29 "./usb_config.h"

#line 31 "./usb_config.h"

 
#line 34 "./usb_config.h"

#line 36 "./usb_config.h"


#line 39 "./usb_config.h"




#line 44 "./usb_config.h"
#line 45 "./usb_config.h"
                                                
                                                



#line 51 "./usb_config.h"

#line 53 "./usb_config.h"


#line 56 "./usb_config.h"


 
#line 60 "./usb_config.h"

 
#line 63 "./usb_config.h"

 
#line 66 "./usb_config.h"
#line 67 "./usb_config.h"
#line 68 "./usb_config.h"

#line 70 "./usb_config.h"
#line 71 "./usb_config.h"
#line 72 "./usb_config.h"
#line 73 "./usb_config.h"

#line 75 "./usb_config.h"



#line 79 "./usb_config.h"
 

#line 82 "./usb_config.h"
#line 8 "main_CDC_I2C.c"



#line 1 "./HardwareProfile.h"

#line 3 "./HardwareProfile.h"
 


#line 7 "./HardwareProfile.h"
#line 9 "./HardwareProfile.h"
#line 10 "./HardwareProfile.h"
#line 11 "./HardwareProfile.h"



#line 15 "./HardwareProfile.h"
#line 17 "./HardwareProfile.h"
#line 18 "./HardwareProfile.h"
#line 19 "./HardwareProfile.h"

 

#line 23 "./HardwareProfile.h"
#line 24 "./HardwareProfile.h"
    
 

#line 28 "./HardwareProfile.h"
#line 29 "./HardwareProfile.h"

#line 31 "./HardwareProfile.h"
#line 32 "./HardwareProfile.h"

#line 34 "./HardwareProfile.h"
#line 35 "./HardwareProfile.h"

#line 37 "./HardwareProfile.h"
#line 38 "./HardwareProfile.h"

#line 40 "./HardwareProfile.h"
#line 41 "./HardwareProfile.h"

  
 
#line 45 "./HardwareProfile.h"

 
#line 48 "./HardwareProfile.h"
#line 49 "./HardwareProfile.h"
#line 50 "./HardwareProfile.h"
#line 51 "./HardwareProfile.h"
#line 52 "./HardwareProfile.h"
#line 53 "./HardwareProfile.h"
#line 54 "./HardwareProfile.h"
#line 55 "./HardwareProfile.h"
#line 56 "./HardwareProfile.h"
#line 11 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"

#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
 


#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"

extern volatile near unsigned            UFRM;
extern volatile near unsigned char       UFRML;
extern volatile near union {
  struct {
    unsigned FRM:8;
  };
  struct {
    unsigned FRM0:1;
    unsigned FRM1:1;
    unsigned FRM2:1;
    unsigned FRM3:1;
    unsigned FRM4:1;
    unsigned FRM5:1;
    unsigned FRM6:1;
    unsigned FRM7:1;
  };
} UFRMLbits;
extern volatile near unsigned char       UFRMH;
extern volatile near union {
  struct {
    unsigned FRM:3;
  };
  struct {
    unsigned FRM8:1;
    unsigned FRM9:1;
    unsigned FRM10:1;
  };
} UFRMHbits;
extern volatile near unsigned char       UIR;
extern volatile near struct {
  unsigned URSTIF:1;
  unsigned UERRIF:1;
  unsigned ACTVIF:1;
  unsigned TRNIF:1;
  unsigned IDLEIF:1;
  unsigned STALLIF:1;
  unsigned SOFIF:1;
} UIRbits;
extern volatile near unsigned char       UIE;
extern volatile near struct {
  unsigned URSTIE:1;
  unsigned UERRIE:1;
  unsigned ACTVIE:1;
  unsigned TRNIE:1;
  unsigned IDLEIE:1;
  unsigned STALLIE:1;
  unsigned SOFIE:1;
} UIEbits;
extern volatile near unsigned char       UEIR;
extern volatile near struct {
  unsigned PIDEF:1;
  unsigned CRC5EF:1;
  unsigned CRC16EF:1;
  unsigned DFN8EF:1;
  unsigned BTOEF:1;
  unsigned :2;
  unsigned BTSEF:1;
} UEIRbits;
extern volatile near unsigned char       UEIE;
extern volatile near struct {
  unsigned PIDEE:1;
  unsigned CRC5EE:1;
  unsigned CRC16EE:1;
  unsigned DFN8EE:1;
  unsigned BTOEE:1;
  unsigned :2;
  unsigned BTSEE:1;
} UEIEbits;
extern volatile near unsigned char       USTAT;
extern volatile near union {
  struct {
    unsigned :1;
    unsigned PPBI:1;
    unsigned DIR:1;
    unsigned ENDP:4;
  };
  struct {
    unsigned :3;
    unsigned ENDP0:1;
    unsigned ENDP1:1;
    unsigned ENDP2:1;
    unsigned ENDP3:1;
  };
} USTATbits;
extern volatile near unsigned char       UCON;
extern volatile near struct {
  unsigned :1;
  unsigned SUSPND:1;
  unsigned RESUME:1;
  unsigned USBEN:1;
  unsigned PKTDIS:1;
  unsigned SE0:1;
  unsigned PPBRST:1;
} UCONbits;
extern volatile near unsigned char       UADDR;
extern volatile near union {
  struct {
    unsigned ADDR:7;
  };
  struct {
    unsigned ADDR0:1;
    unsigned ADDR1:1;
    unsigned ADDR2:1;
    unsigned ADDR3:1;
    unsigned ADDR4:1;
    unsigned ADDR5:1;
    unsigned ADDR6:1;
  };
} UADDRbits;
extern volatile near unsigned char       UCFG;
extern volatile near union {
  struct {
    unsigned PPB:2;
    unsigned FSEN:1;
    unsigned UTRDIS:1;
    unsigned UPUEN:1;
    unsigned :1;
    unsigned UOEMON:1;
    unsigned UTEYE:1;
  };
  struct {
    unsigned PPB0:1;
    unsigned PPB1:1;
  };
} UCFGbits;
extern volatile near unsigned char       UEP0;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP0bits;
extern volatile near unsigned char       UEP1;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP1bits;
extern volatile near unsigned char       UEP2;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP2bits;
extern volatile near unsigned char       UEP3;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP3bits;
extern volatile near unsigned char       UEP4;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP4bits;
extern volatile near unsigned char       UEP5;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP5bits;
extern volatile near unsigned char       UEP6;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP6bits;
extern volatile near unsigned char       UEP7;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP7bits;
extern volatile near unsigned char       UEP8;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP8bits;
extern volatile near unsigned char       UEP9;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP9bits;
extern volatile near unsigned char       UEP10;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP10bits;
extern volatile near unsigned char       UEP11;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP11bits;
extern volatile near unsigned char       UEP12;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP12bits;
extern volatile near unsigned char       UEP13;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP13bits;
extern volatile near unsigned char       UEP14;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP14bits;
extern volatile near unsigned char       UEP15;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP15bits;
extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned T0CKI:1;
    unsigned AN4:1;
    unsigned OSC2:1;
  };
  struct {
    unsigned :2;
    unsigned VREFM:1;
    unsigned VREFP:1;
    unsigned :1;
    unsigned LVDIN:1;
  };
  struct {
    unsigned :5;
    unsigned HLVDIN:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned INT0:1;
    unsigned INT1:1;
    unsigned INT2:1;
    unsigned :2;
    unsigned PGM:1;
    unsigned PGC:1;
    unsigned PGD:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned :1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned CCP1:1;
    unsigned :3;
    unsigned TX:1;
    unsigned RX:1;
  };
  struct {
    unsigned T13CKI:1;
    unsigned :1;
    unsigned P1A:1;
    unsigned :3;
    unsigned CK:1;
    unsigned DT:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTE;
extern volatile near struct {
  unsigned :3;
  unsigned RE3:1;
} PORTEbits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned LATA4:1;
  unsigned LATA5:1;
  unsigned LATA6:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned :3;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       DDRA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} DDRAbits;
extern volatile near unsigned char       TRISA;
extern volatile near union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned TRISA5:1;
    unsigned TRISA6:1;
  };
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
} TRISAbits;
extern volatile near unsigned char       DDRB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
} DDRBbits;
extern volatile near unsigned char       TRISB;
extern volatile near union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned TRISB6:1;
    unsigned TRISB7:1;
  };
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
} TRISBbits;
extern volatile near unsigned char       DDRC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned :3;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned :3;
    unsigned RC6:1;
    unsigned RC7:1;
  };
} DDRCbits;
extern volatile near unsigned char       TRISC;
extern volatile near union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned :3;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
  };
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned :3;
    unsigned RC6:1;
    unsigned RC7:1;
  };
} TRISCbits;
extern volatile near unsigned char       OSCTUNE;
extern volatile near union {
  struct {
    unsigned TUN:5;
    unsigned :2;
    unsigned INTSRC:1;
  };
  struct {
    unsigned TUN0:1;
    unsigned TUN1:1;
    unsigned TUN2:1;
    unsigned TUN3:1;
    unsigned TUN4:1;
  };
} OSCTUNEbits;
extern volatile near unsigned char       PIE1;
extern volatile near struct {
  unsigned TMR1IE:1;
  unsigned TMR2IE:1;
  unsigned CCP1IE:1;
  unsigned SSPIE:1;
  unsigned TXIE:1;
  unsigned RCIE:1;
  unsigned ADIE:1;
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near struct {
  unsigned TMR1IF:1;
  unsigned TMR2IF:1;
  unsigned CCP1IF:1;
  unsigned SSPIF:1;
  unsigned TXIF:1;
  unsigned RCIF:1;
  unsigned ADIF:1;
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near struct {
  unsigned TMR1IP:1;
  unsigned TMR2IP:1;
  unsigned CCP1IP:1;
  unsigned SSPIP:1;
  unsigned TXIP:1;
  unsigned RCIP:1;
  unsigned ADIP:1;
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near union {
  struct {
    unsigned CCP2IE:1;
    unsigned TMR3IE:1;
    unsigned HLVDIE:1;
    unsigned BCLIE:1;
    unsigned EEIE:1;
    unsigned USBIE:1;
    unsigned CMIE:1;
    unsigned OSCFIE:1;
  };
  struct {
    unsigned :2;
    unsigned LVDIE:1;
  };
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near union {
  struct {
    unsigned CCP2IF:1;
    unsigned TMR3IF:1;
    unsigned HLVDIF:1;
    unsigned BCLIF:1;
    unsigned EEIF:1;
    unsigned USBIF:1;
    unsigned CMIF:1;
    unsigned OSCFIF:1;
  };
  struct {
    unsigned :2;
    unsigned LVDIF:1;
  };
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near union {
  struct {
    unsigned CCP2IP:1;
    unsigned TMR3IP:1;
    unsigned HLVDIP:1;
    unsigned BCLIP:1;
    unsigned EEIP:1;
    unsigned USBIP:1;
    unsigned CMIP:1;
    unsigned OSCFIP:1;
  };
  struct {
    unsigned :2;
    unsigned LVDIP:1;
  };
} IPR2bits;
extern volatile near unsigned char       EECON1;
extern volatile near struct {
  unsigned RD:1;
  unsigned WR:1;
  unsigned WREN:1;
  unsigned WRERR:1;
  unsigned FREE:1;
  unsigned :1;
  unsigned CFGS:1;
  unsigned EEPGD:1;
} EECON1bits;
extern volatile near unsigned char       EECON2;
extern volatile near unsigned char       EEDATA;
extern volatile near unsigned char       EEADR;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned :3;
    unsigned ADEN:1;
  };
} RCSTAbits;
extern volatile near unsigned char       TXSTA;
extern volatile near struct {
  unsigned TX9D:1;
  unsigned TRMT:1;
  unsigned BRGH:1;
  unsigned SENDB:1;
  unsigned SYNC:1;
  unsigned TXEN:1;
  unsigned TX9:1;
  unsigned CSRC:1;
} TXSTAbits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       SPBRGH;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned TMR3CS:1;
    unsigned NOT_T3SYNC:1;
    unsigned T3CCP1:1;
    unsigned T3CKPS:2;
    unsigned T3CCP2:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T3SYNC:1;
    unsigned :1;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
  };
  struct {
    unsigned :2;
    unsigned T3NSYNC:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       CMCON;
extern volatile near union {
  struct {
    unsigned CM:3;
    unsigned CIS:1;
    unsigned C1INV:1;
    unsigned C2INV:1;
    unsigned C1OUT:1;
    unsigned C2OUT:1;
  };
  struct {
    unsigned CM0:1;
    unsigned CM1:1;
    unsigned CM2:1;
  };
} CMCONbits;
extern volatile near unsigned char       CVRCON;
extern volatile near union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned CVREN:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
    unsigned CVREF:1;
  };
} CVRCONbits;
extern volatile near unsigned char       CCP1AS;
extern volatile near union {
  struct {
    unsigned :2;
    unsigned PSSAC:2;
    unsigned ECCPAS:3;
    unsigned ECCPASE:1;
  };
  struct {
    unsigned :2;
    unsigned PSSAC0:1;
    unsigned PSSAC1:1;
    unsigned ECCPAS0:1;
    unsigned ECCPAS1:1;
    unsigned ECCPAS2:1;
  };
} CCP1ASbits;
extern volatile near unsigned char       ECCP1AS;
extern volatile near union {
  struct {
    unsigned :2;
    unsigned PSSAC:2;
    unsigned ECCPAS:3;
    unsigned ECCPASE:1;
  };
  struct {
    unsigned :2;
    unsigned PSSAC0:1;
    unsigned PSSAC1:1;
    unsigned ECCPAS0:1;
    unsigned ECCPAS1:1;
    unsigned ECCPAS2:1;
  };
} ECCP1ASbits;
extern volatile near unsigned char       CCP1DEL;
extern volatile near struct {
  unsigned :7;
  unsigned PRSEN:1;
} CCP1DELbits;
extern volatile near unsigned char       ECCP1DEL;
extern volatile near struct {
  unsigned :7;
  unsigned PRSEN:1;
} ECCP1DELbits;
extern volatile near unsigned char       BAUDCON;
extern volatile near union {
  struct {
    unsigned ABDEN:1;
    unsigned WUE:1;
    unsigned :1;
    unsigned BRG16:1;
    unsigned TXCKP:1;
    unsigned RXDTP:1;
    unsigned RCIDL:1;
    unsigned ABDOVF:1;
  };
  struct {
    unsigned :4;
    unsigned SCKP:1;
    unsigned :1;
    unsigned RCMT:1;
  };
} BAUDCONbits;
extern volatile near unsigned char       BAUDCTL;
extern volatile near union {
  struct {
    unsigned ABDEN:1;
    unsigned WUE:1;
    unsigned :1;
    unsigned BRG16:1;
    unsigned TXCKP:1;
    unsigned RXDTP:1;
    unsigned RCIDL:1;
    unsigned ABDOVF:1;
  };
  struct {
    unsigned :4;
    unsigned SCKP:1;
    unsigned :1;
    unsigned RCMT:1;
  };
} BAUDCTLbits;
extern volatile near unsigned char       CCP2CON;
extern volatile near union {
  struct {
    unsigned CCP2M:4;
    unsigned DC2B:2;
  };
  struct {
    unsigned CCP2M0:1;
    unsigned CCP2M1:1;
    unsigned CCP2M2:1;
    unsigned CCP2M3:1;
    unsigned DC2B0:1;
    unsigned DC2B1:1;
  };
} CCP2CONbits;
extern volatile near unsigned            CCPR2;
extern volatile near unsigned char       CCPR2L;
extern volatile near unsigned char       CCPR2H;
extern volatile near unsigned char       CCP1CON;
extern volatile near union {
  struct {
    unsigned CCP1M:4;
    unsigned DC1B:2;
  };
  struct {
    unsigned CCP1M0:1;
    unsigned CCP1M1:1;
    unsigned CCP1M2:1;
    unsigned CCP1M3:1;
    unsigned DC1B0:1;
    unsigned DC1B1:1;
  };
} CCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ADCON2;
extern volatile near union {
  struct {
    unsigned ADCS:3;
    unsigned ACQT:3;
    unsigned :1;
    unsigned ADFM:1;
  };
  struct {
    unsigned ADCS0:1;
    unsigned ADCS1:1;
    unsigned ADCS2:1;
    unsigned ACQT0:1;
    unsigned ACQT1:1;
    unsigned ACQT2:1;
  };
} ADCON2bits;
extern volatile near unsigned char       ADCON1;
extern volatile near union {
  struct {
    unsigned PCFG:4;
    unsigned VCFG:2;
  };
  struct {
    unsigned PCFG0:1;
    unsigned PCFG1:1;
    unsigned PCFG2:1;
    unsigned PCFG3:1;
    unsigned VCFG0:1;
    unsigned VCFG1:1;
  };
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned GO_NOT_DONE:1;
    unsigned CHS:4;
  };
  struct {
    unsigned :1;
    unsigned GO_DONE:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned CHS3:1;
  };
  struct {
    unsigned :1;
    unsigned DONE:1;
  };
  struct {
    unsigned :1;
    unsigned GO:1;
  };
  struct {
    unsigned :1;
    unsigned NOT_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSPCON2;
extern volatile near struct {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned ACKSTAT:1;
  unsigned GCEN:1;
} SSPCON2bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near union {
  struct {
    unsigned SSPM:4;
    unsigned CKP:1;
    unsigned SSPEN:1;
    unsigned SSPOV:1;
    unsigned WCOL:1;
  };
  struct {
    unsigned SSPM0:1;
    unsigned SSPM1:1;
    unsigned SSPM2:1;
    unsigned SSPM3:1;
  };
} SSPCON1bits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_NOT_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_NOT_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned R_W:1;
    unsigned :2;
    unsigned D_A:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DAT:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSPADD;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near union {
  struct {
    unsigned T2CKPS:2;
    unsigned TMR2ON:1;
    unsigned TOUTPS:4;
  };
  struct {
    unsigned T2CKPS0:1;
    unsigned T2CKPS1:1;
    unsigned :1;
    unsigned T2OUTPS0:1;
    unsigned T2OUTPS1:1;
    unsigned T2OUTPS2:1;
    unsigned T2OUTPS3:1;
  };
  struct {
    unsigned :3;
    unsigned TOUTPS0:1;
    unsigned TOUTPS1:1;
    unsigned TOUTPS2:1;
    unsigned TOUTPS3:1;
  };
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned TMR1CS:1;
    unsigned NOT_T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS:2;
    unsigned T1RUN:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T1SYNC:1;
    unsigned :1;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned :1;
    unsigned SBOREN:1;
    unsigned IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
    unsigned :2;
    unsigned NOT_IPEN:1;
  };
} RCONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       HLVDCON;
extern volatile near union {
  struct {
    unsigned HLVDL:4;
    unsigned HLVDEN:1;
    unsigned IRVST:1;
    unsigned :1;
    unsigned VDIRMAG:1;
  };
  struct {
    unsigned HLVDL0:1;
    unsigned HLVDL1:1;
    unsigned HLVDL2:1;
    unsigned HLVDL3:1;
  };
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
    unsigned LVDEN:1;
    unsigned IVRST:1;
  };
  struct {
    unsigned LVV0:1;
    unsigned LVV1:1;
    unsigned LVV2:1;
    unsigned LVV3:1;
    unsigned :1;
    unsigned BGST:1;
  };
} HLVDCONbits;
extern volatile near unsigned char       LVDCON;
extern volatile near union {
  struct {
    unsigned HLVDL:4;
    unsigned HLVDEN:1;
    unsigned IRVST:1;
    unsigned :1;
    unsigned VDIRMAG:1;
  };
  struct {
    unsigned HLVDL0:1;
    unsigned HLVDL1:1;
    unsigned HLVDL2:1;
    unsigned HLVDL3:1;
  };
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
    unsigned LVDEN:1;
    unsigned IVRST:1;
  };
  struct {
    unsigned LVV0:1;
    unsigned LVV1:1;
    unsigned LVV2:1;
    unsigned LVV3:1;
    unsigned :1;
    unsigned BGST:1;
  };
} LVDCONbits;
extern volatile near unsigned char       OSCCON;
extern volatile near union {
  struct {
    unsigned SCS:2;
    unsigned IOFS:1;
    unsigned OSTS:1;
    unsigned IRCF:3;
    unsigned IDLEN:1;
  };
  struct {
    unsigned SCS0:1;
    unsigned SCS1:1;
    unsigned FLTS:1;
    unsigned :1;
    unsigned IRCF0:1;
    unsigned IRCF1:1;
    unsigned IRCF2:1;
  };
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near union {
  struct {
    unsigned T0PS:3;
    unsigned PSA:1;
    unsigned T0SE:1;
    unsigned T0CS:1;
    unsigned T08BIT:1;
    unsigned TMR0ON:1;
  };
  struct {
    unsigned T0PS0:1;
    unsigned T0PS1:1;
    unsigned T0PS2:1;
  };
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned :1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned :1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned :1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned :1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned :1;
    unsigned TMR0IP:1;
    unsigned :1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :2;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE_GIEL:1;
    unsigned GIE_GIEH:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :6;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near union {
  struct {
    unsigned STKPTR:5;
    unsigned :1;
    unsigned STKUNF:1;
    unsigned STKFUL:1;
  };
  struct {
    unsigned STKPTR0:1;
    unsigned STKPTR1:1;
    unsigned STKPTR2:1;
    unsigned STKPTR3:1;
    unsigned STKPTR4:1;
  };
  struct {
    unsigned :7;
    unsigned STKOVF:1;
  };
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;



#line 1318 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
 
#line 1320 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"


#line 1324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
 
#line 1326 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1327 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1328 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1329 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"

#line 1331 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1332 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1333 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1334 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1335 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"


#line 1339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
 
#line 1341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"


#line 1344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 12 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 30 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"



#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
 



#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 15 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 17 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 21 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 23 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 29 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 35 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 51 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 53 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 57 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 61 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 63 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 65 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 77 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 85 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 87 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 91 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 99 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 101 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"

#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
 


#line 1318 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"

#line 1324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"

#line 1339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 1344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18f2550.h"
#line 101 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 103 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 105 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 109 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 111 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 115 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 117 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 119 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 121 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 123 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 127 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 131 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 133 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 135 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 137 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 139 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 143 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 145 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 153 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 157 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 159 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 163 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 165 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 169 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 171 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 173 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 175 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 177 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 179 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 181 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 185 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 187 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 189 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 191 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 193 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 195 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 197 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 205 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 211 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 213 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 215 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 217 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 219 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 221 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 223 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 225 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 227 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 229 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 231 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 233 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 235 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 237 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 239 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 241 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 243 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 245 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 247 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 251 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 253 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 255 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 257 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 261 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 265 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 267 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 271 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 273 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 275 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 277 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 279 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 281 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 283 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 285 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 287 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 289 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 291 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 293 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 295 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 297 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 299 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 301 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 303 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 307 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 309 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 311 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 313 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 315 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 317 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 319 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 323 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 325 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 327 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 329 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 331 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 333 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 335 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 337 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 343 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 345 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 347 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 351 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 353 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 355 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 357 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 359 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 361 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 363 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 365 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 369 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 371 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 373 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 375 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 377 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 381 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 383 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 385 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 387 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 391 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 393 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 395 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 397 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 399 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 401 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 403 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 405 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 409 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 411 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 413 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 415 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 419 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 421 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 423 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 425 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 429 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 431 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 433 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 435 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 437 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 439 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 441 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 445 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 447 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 449 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 453 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 455 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 457 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 459 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 461 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 463 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 469 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 471 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 473 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 475 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 477 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 481 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 483 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 485 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 489 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 491 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 493 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 495 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 497 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 499 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 501 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 505 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 507 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 509 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 515 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 517 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 519 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 527 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 529 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 531 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 537 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 543 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 545 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 557 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 559 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 561 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 565 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 567 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 569 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 571 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 573 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 575 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 579 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 581 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 583 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 587 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 593 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 595 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 597 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"

#line 599 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 15 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"



#line 84 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 150 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 216 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 282 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 348 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 414 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 480 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 546 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 612 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 678 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 744 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 810 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 942 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1008 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1074 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1206 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1272 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1338 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1404 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1470 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1536 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1602 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1668 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1734 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1800 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1932 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2064 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2130 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2196 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2328 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2394 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2460 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2592 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2658 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2856 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2922 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2988 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
 
 

 
#line 2995 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
 

 
#line 3001 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
 

 
#line 3007 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
 

 
#line 3013 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3016 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3019 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3022 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3025 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3028 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3031 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
#line 3034 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

 
 

 
 

 
 

 
 

 
 

 
#line 3052 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 3054 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3120 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3186 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3252 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3318 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3384 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3450 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3516 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3582 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3648 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3780 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3846 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3912 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3978 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4044 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4110 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4176 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4242 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4308 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4374 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4440 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4506 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4638 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4770 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4836 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4902 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4968 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5034 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5100 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5166 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5232 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5298 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5364 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5430 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5496 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5694 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5760 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5892 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5958 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6024 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6090 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6156 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6288 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6354 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6420 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6486 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6552 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6618 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6882 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6948 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7014 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7080 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7146 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7212 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7278 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7410 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7476 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7542 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7608 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7674 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7740 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7806 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7872 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7938 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8004 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8070 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8202 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8268 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8334 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8400 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8466 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8532 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8598 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8664 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8730 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8796 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8862 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8928 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8994 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9060 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9126 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9192 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9258 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9390 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9456 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9522 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9588 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9654 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9786 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9852 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10050 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10116 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10182 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10248 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10314 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10380 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10446 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10512 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10578 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10644 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10710 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10776 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10842 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10908 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10974 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11040 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11106 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11172 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11304 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11370 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11436 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11502 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11634 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11700 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11766 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11832 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11898 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11964 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12030 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12096 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12162 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12228 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12294 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12360 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12492 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12558 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12624 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12690 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12756 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12822 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12888 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12954 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13020 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13086 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13152 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13218 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13284 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13350 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13416 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13482 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13548 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13680 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13746 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13878 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13944 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14076 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14142 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14208 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14274 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14340 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14406 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14472 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14538 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14604 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14670 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14736 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14802 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14868 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15000 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15066 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15132 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15198 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15264 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15330 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15396 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15462 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15594 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15660 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15726 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15858 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15924 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16056 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16122 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16188 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16254 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16320 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16386 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16452 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16518 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16584 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16650 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16782 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16848 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16914 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16980 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17046 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17112 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17178 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17244 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17310 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17376 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17442 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17508 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17574 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17640 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17706 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17772 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17838 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17904 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17970 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18036 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18102 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18168 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18234 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18300 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18366 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18432 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18498 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18564 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18696 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18828 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18894 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18960 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19026 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19092 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19158 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19224 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19290 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19356 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19422 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19424 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"




 
 
 

#line 19458 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
 
 


#line 19463 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19466 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19480 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19481 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19482 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19504 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19505 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19510 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19514 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19516 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19548 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19556 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19560 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19564 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19565 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19566 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19567 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19569 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19570 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19584 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19588 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19592 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19600 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19601 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19608 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19609 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19611 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19612 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19615 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19617 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19620 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19621 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19623 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19625 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19626 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19629 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19632 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19636 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19637 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19639 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19641 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19643 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19645 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19646 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19648 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19653 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19654 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19660 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19662 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19671 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19673 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19682 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19691 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19693 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19701 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19703 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19722 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19733 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19734 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19744 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19746 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19747 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19748 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19751 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19753 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19764 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19766 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19767 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19770 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19778 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19779 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19784 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19786 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19787 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19793 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19801 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19802 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19804 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19805 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19815 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19820 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19821 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19827 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19837 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19839 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19845 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19847 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19854 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19856 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19864 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19881 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19882 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19884 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19887 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19888 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19896 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19897 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19899 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19900 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19903 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19904 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19911 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19917 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19923 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19924 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19926 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19927 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19928 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19930 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19931 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19935 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19940 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19944 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19945 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19948 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19951 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19952 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19956 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19960 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19961 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19971 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19972 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19975 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19976 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19979 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19980 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"


#line 19983 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19991 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19994 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19996 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19997 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 20000 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20007 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20009 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20012 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20013 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 32 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 38 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 40 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 42 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

 
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 46 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 62 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 102 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 115 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 145 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 178 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 195 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 216 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 218 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 220 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 224 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 239 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 275 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 290 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 330 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"



#line 334 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 336 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 346 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 359 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 373 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 386 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 399 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 403 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 414 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 441 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 454 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 471 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 483 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 497 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 545 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 561 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 564 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 580 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 583 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 597 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 627 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 640 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 670 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"



#line 674 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"




#line 687 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 689 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 691 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 702 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 706 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 718 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 722 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 733 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 735 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 737 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 748 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 752 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 761 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 763 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 772 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 774 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

void IdleI2C( void );

void OpenI2C(  unsigned char sync_mode,  unsigned char slew );

signed char WriteI2C( unsigned char data_out );

signed char putsI2C(  unsigned char *wrptr );

unsigned char ReadI2C( void );

void CloseI2C( void );

#line 788 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 793 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 



#line 798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 



#line 812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 828 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 840 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 842 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 855 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 857 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 870 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 872 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 885 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 887 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 896 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
 
#line 898 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

signed char WriteI2C(  unsigned char data_out );

signed char getsI2C(  unsigned char *rdptr,  unsigned char length );






signed char EEAckPolling(  unsigned char control );

signed char EEByteWrite(  unsigned char control,
                            unsigned char address,
                            unsigned char data );

signed int  EECurrentAddRead(  unsigned char control );

signed char EEPageWrite(  unsigned char control,
                            unsigned char address,
                            unsigned char *wrptr );

signed int  EERandomRead(  unsigned char control,  unsigned char address );

signed char EESequentialRead(  unsigned char control,
                                 unsigned char address,
                                 unsigned char *rdptr,
                                 unsigned char length );
#line 927 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"


#line 930 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 933 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 935 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 938 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 940 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 941 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 942 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 943 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 945 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 949 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 951 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 954 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 956 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 959 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 961 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"
#line 964 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 966 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/i2c.h"

#line 13 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
 


#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"

typedef void* va_list;
#line 8 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 12 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdarg.h"
#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
 

#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"

#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stddef.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"



#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"
 
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"


typedef unsigned char FILE;

 
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"

extern FILE *stderr;
extern FILE *stdout;


int putc (auto char c, auto FILE *f);
int vsprintf (auto char *buf, auto const far  rom char *fmt, auto va_list ap);
int vprintf (auto const far  rom char *fmt, auto va_list ap);
int sprintf (auto char *buf, auto const far  rom char *fmt, ...);
int printf (auto const far  rom char *fmt, ...);
int fprintf (auto FILE *f, auto const far  rom char *fmt, ...);
int vfprintf (auto FILE *f, auto const far  rom char *fmt, auto va_list ap);
int puts (auto const far  rom char *s);
int fputs (auto const far  rom char *s, auto FILE *f);

#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdio.h"
#line 14 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"

#line 6 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"

#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
 

#line 16 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
double atof (const auto char *s);

#line 28 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
signed char atob (const auto char *s);


#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
int atoi (const auto char *s);

#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
long atol (const auto char *s);

#line 58 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
unsigned long atoul (const auto char *s);


#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *btoa (auto signed char value, auto char *s);

#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *itoa (auto int value, auto char *s);

#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *ltoa (auto long value, auto char *s);

#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
char *ultoa (auto unsigned long value, auto char *s);
 


#line 112 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
 

#line 116 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
#line 118 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"


#line 124 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
int rand (void);

#line 136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
 
void srand (auto unsigned int seed);
 
#line 140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"

#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/stdlib.h"
#line 15 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
#line 22 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"


#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

 

#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memcpy (auto void *s1, auto const void *s2, auto size_t n);


#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memmove (auto void *s1, auto const void *s2, auto size_t n);


#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcpy (auto char *s1, auto const char *s2);


#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncpy (auto char *s1, auto const char *s2, auto size_t n);


#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcat (auto char *s1, auto const char *s2);


#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncat (auto char *s1, auto const char *s2, auto size_t n);


#line 128 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmp (auto const void *s1, auto const void *s2, auto size_t n);


#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmp (auto const char *s1, auto const char *s2);


#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 


#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmp (auto const char *s1, auto const char *s2, auto size_t n);


#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 


#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memchr (auto const void *s, auto unsigned char c, auto size_t n);


#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strchr (auto const char *s, auto unsigned char c);


#line 210 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
size_t strcspn (auto const char *s1, auto const char *s2);


#line 222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strpbrk (auto const char *s1, auto const char *s2);


#line 238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strrchr (auto const char *s, auto unsigned char c);


#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
size_t strspn (auto const char *s1, auto const char *s2);


#line 262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strstr (auto const char *s1, auto const char *s2);


#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strtok (auto char *s1, auto const char *s2);


#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memset (auto void *s, auto unsigned char c, auto size_t n);


#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"


#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
size_t strlen (auto const char *s);


#line 358 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strupr (auto char *s);


#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strlwr (auto char *s);



 

#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memcpypgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memcpypgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 398 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memcpyram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memmovepgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
void *memmovepgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memmoveram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 434 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcpypgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcpypgm2ram (auto char *s1, auto const far  rom char *s2);


#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcpyram2pgm (auto far  rom char *s1, auto const char *s2);


#line 460 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncpypgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 470 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncpypgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncpyram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcatpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 496 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strcatpgm2ram (auto char *s1, auto const far  rom char *s2);


#line 504 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strcatram2pgm (auto far  rom char *s1, auto const char *s2);


#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncatpgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strncatpgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 532 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strncatram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmppgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmppgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 560 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char memcmpram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmppgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmppgm2ram (auto const char *s1, auto const far  rom char *s2);


#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strcmpram2pgm (auto const far  rom char *s1, auto const char *s2);


#line 594 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmppgm (auto const far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 604 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmppgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 613 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
signed char strncmpram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 622 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *memchrpgm (auto const far  rom char *s, auto const unsigned char c, auto sizerom_t n);


#line 631 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strchrpgm (auto const far  rom char *s, auto unsigned char c);


#line 639 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strcspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 647 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strcspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 655 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizeram_t strcspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strpbrkpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 671 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strpbrkpgmram (auto const far  rom char *s1, auto const char *s2);


#line 679 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strpbrkrampgm (auto const char *s1, auto const far  rom char *s2);


#line 688 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
 


#line 696 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 712 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizeram_t strspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strstrpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strstrpgmram (auto const far  rom char *s1, auto const char *s2);


#line 737 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strstrrampgm (auto const char *s1, auto const far  rom char *s2);


#line 745 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strtokpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 754 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
char *strtokpgmram (auto char *s1, auto const far  rom char *s2);


#line 762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strtokrampgm (auto far  rom char *s1, auto const char *s2);


#line 771 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom void *memsetpgm (auto far  rom void *s, auto unsigned char c, auto sizerom_t n);


#line 778 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *struprpgm (auto far  rom char *s);


#line 785 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
far  rom char *strlwrpgm (auto far  rom char *s);


#line 792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
 
sizerom_t strlenpgm (auto const far  rom char *s);

#line 796 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 805 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
#line 814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"

#line 816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/string.h"
#line 16 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 30 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"



#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 84 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 150 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 216 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 282 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 348 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 414 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 480 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 546 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 612 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 678 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 744 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 810 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 942 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1008 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1074 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1206 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1272 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1338 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1404 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1470 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1536 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1602 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1668 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1734 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1800 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1932 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2064 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2130 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2196 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2328 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2394 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2460 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2592 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2658 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2856 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2922 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2988 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3054 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3120 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3186 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3252 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3318 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3384 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3450 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3516 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3582 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3648 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3780 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3846 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3912 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3978 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4044 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4110 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4176 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4242 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4308 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4374 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4440 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4506 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4638 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4770 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4836 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4902 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4968 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5034 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5100 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5166 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5232 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5298 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5364 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5430 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5496 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5694 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5760 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5892 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5958 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6024 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6090 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6156 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6288 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6354 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6420 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6486 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6552 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6618 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6882 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6948 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7014 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7080 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7146 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7212 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7278 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7410 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7476 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7542 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7608 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7674 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7740 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7806 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7872 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7938 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8004 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8070 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8202 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8268 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8334 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8400 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8466 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8532 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8598 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8664 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8730 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8796 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8862 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8928 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8994 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9060 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9126 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9192 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9258 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9390 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9456 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9522 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9588 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9654 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9786 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9852 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10050 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10116 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10182 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10248 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10314 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10380 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10446 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10512 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10578 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10644 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10710 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10776 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10842 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10908 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10974 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11040 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11106 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11172 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11304 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11370 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11436 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11502 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11634 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11700 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11766 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11832 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11898 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11964 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12030 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12096 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12162 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12228 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12294 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12360 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12492 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12558 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12624 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12690 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12756 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12822 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12888 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12954 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13020 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13086 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13152 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13218 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13284 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13350 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13416 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13482 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13548 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13680 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13746 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13878 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13944 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14076 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14142 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14208 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14274 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14340 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14406 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14472 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14538 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14604 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14670 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14736 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14802 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14868 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15000 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15066 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15132 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15198 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15264 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15330 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15396 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15462 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15594 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15660 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15726 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15858 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15924 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16056 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16122 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16188 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16254 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16320 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16386 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16452 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16518 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16584 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16650 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16782 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16848 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16914 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16980 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17046 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17112 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17178 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17244 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17310 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17376 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17442 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17508 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17574 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17640 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17706 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17772 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17838 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17904 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17970 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18036 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18102 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18168 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18234 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18300 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18366 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18432 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18498 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18564 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18696 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18828 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18894 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18960 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19026 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19092 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19158 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19224 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19290 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19356 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19422 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19424 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"




 
 
 

#line 19458 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
 
 

#line 19465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19480 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19482 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19504 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19510 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19514 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19516 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19548 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19556 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19560 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19570 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19584 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19588 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19592 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19600 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19601 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19608 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19609 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19611 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19612 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19615 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19617 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19620 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19621 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19623 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19625 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19626 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19629 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19632 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19636 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19637 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19639 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19641 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19643 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19645 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19646 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19648 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19653 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19654 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19660 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19662 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19671 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19673 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19682 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19691 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19693 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19701 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19703 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19722 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19733 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19734 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19744 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19746 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19747 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19748 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19751 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19753 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19764 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19766 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19767 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19770 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19778 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19779 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19784 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19786 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19787 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19793 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19801 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19802 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19804 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19805 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19815 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19820 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19821 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19827 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19837 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19839 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19845 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19847 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19854 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19856 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19864 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19881 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19882 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19884 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19887 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19888 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19896 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19897 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19899 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19900 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19903 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19904 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19911 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19917 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19923 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19924 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19926 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19927 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19928 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19930 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19931 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19935 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19940 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19944 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19945 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19948 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19951 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19952 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19956 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19960 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19961 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19971 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19972 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19975 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19976 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19979 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19980 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19983 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19991 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19994 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19996 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19997 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20000 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20007 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20009 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20012 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20013 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 32 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

 

 
union Timers
{
  unsigned int lt;
  char bt[2];
};



#line 44 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 


#line 48 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

 

#line 52 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 
 
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 56 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 58 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 61 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 62 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 63 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 65 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 66 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 68 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 70 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 72 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 74 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 76 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 78 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 85 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 117 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

void OpenTimer0 ( unsigned char config);
void CloseTimer0 (void);
unsigned int ReadTimer0 (void);
void WriteTimer0 ( unsigned int timer0);

 


#line 126 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 
 

#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 130 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 134 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 157 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 159 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 191 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"




#line 196 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 197 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 198 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 200 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 202 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 204 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 205 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 206 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 235 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

void OpenTimer1 ( unsigned char config);
void CloseTimer1 (void);
unsigned int ReadTimer1 (void);
void WriteTimer1 ( unsigned int timer1);
#line 241 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


 

#line 246 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 247 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 248 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 



#line 253 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 254 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 255 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 256 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 257 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 258 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 260 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 261 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 264 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 265 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 266 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 267 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 268 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 270 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 271 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 273 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 298 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 309 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 
#line 311 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 322 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 
#line 324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

void OpenTimer2 ( unsigned char config);
void CloseTimer2 (void);

#line 329 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 

#line 332 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 334 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
 
 


#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 340 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 342 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 343 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 345 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 346 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 347 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 348 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 350 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 371 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"



#line 378 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
  
#line 380 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 386 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
  
#line 388 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"



void OpenTimer3 ( unsigned char config);
void CloseTimer3 (void);
unsigned int ReadTimer3 (void);
void WriteTimer3 ( unsigned int timer3);


#line 397 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 398 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 402 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 404 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 423 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 425 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 457 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

 


#line 461 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 462 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 464 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 489 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 514 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 538 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 546 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 596 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 603 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 607 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 609 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 632 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 656 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"



#line 667 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 669 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 694 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 719 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 730 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 743 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 751 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 754 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 776 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 801 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 808 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"




#line 813 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 815 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 840 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 865 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 889 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 897 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 900 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 902 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 927 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 952 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 963 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 976 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"



#line 988 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1015 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1040 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 1051 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 1064 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1072 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 1075 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1088 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1092 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1095 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1099 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1118 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1122 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1132 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1133 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 1135 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1142 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"


#line 1154 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1156 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1157 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1162 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 1164 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1170 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1176 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
#line 1177 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 1179 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"
void SetTmrCCPSrc(  unsigned char );
#line 1181 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 1183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/timers.h"

#line 17 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 30 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
 

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"



#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 84 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 150 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 216 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 282 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 348 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 414 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 480 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 546 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 612 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 678 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 744 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 810 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 942 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1008 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1074 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1206 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1272 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1338 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1404 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1470 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1536 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1602 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1668 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1734 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1800 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1932 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 1998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2064 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2130 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2196 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2328 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2394 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2460 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2592 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2658 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2856 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2922 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 2988 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3054 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3120 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3186 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3252 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3318 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3384 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3450 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3516 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3582 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3648 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3780 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3846 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3912 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 3978 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4044 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4110 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4176 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4242 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4308 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4374 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4440 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4506 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4638 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4770 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4836 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4902 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 4968 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5034 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5100 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5166 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5232 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5298 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5364 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5430 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5496 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5694 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5760 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5892 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 5958 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6024 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6090 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6156 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6288 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6354 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6420 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6486 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6552 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6618 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6882 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 6948 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7014 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7080 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7146 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7212 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7278 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7344 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7410 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7476 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7542 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7608 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7674 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7740 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7806 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7872 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 7938 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8004 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8070 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8202 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8268 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8334 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8400 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8466 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8532 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8598 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8664 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8730 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8796 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8862 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8928 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 8994 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9060 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9126 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9192 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9258 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9390 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9456 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9522 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9588 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9654 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9720 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9786 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9852 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 9984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10050 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10116 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10182 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10248 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10314 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10380 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10446 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10512 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10578 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10644 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10710 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10776 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10842 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10908 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 10974 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11040 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11106 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11172 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11304 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11370 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11436 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11502 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11568 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11634 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11700 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11766 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11832 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11898 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 11964 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12030 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12096 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12162 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12228 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12294 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12360 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12492 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12558 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12624 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12690 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12756 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12822 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12888 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 12954 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13020 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13086 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13152 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13218 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13284 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13350 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13416 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13482 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13548 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13680 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13746 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13878 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 13944 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14076 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14142 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14208 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14274 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14340 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14406 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14472 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14538 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14604 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14670 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14736 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14802 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14868 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 14934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15000 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15066 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15132 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15198 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15264 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15330 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15396 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15462 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15594 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15660 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15726 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15858 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15924 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 15990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16056 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16122 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16188 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16254 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16320 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16386 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16452 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16518 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16584 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16650 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16782 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16848 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16914 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 16980 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17046 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17112 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17178 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17244 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17310 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17376 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17442 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17508 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17574 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17640 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17706 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17772 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17838 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17904 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 17970 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18036 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18102 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18168 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18234 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18300 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18366 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18432 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18498 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18564 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18696 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18828 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18894 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 18960 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19026 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19092 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19158 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19224 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19290 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19356 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19422 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19424 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"




 
 
 

#line 19458 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
 
 

#line 19465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19480 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19482 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19504 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19510 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19514 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19516 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19548 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19556 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19560 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19570 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19584 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19588 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19592 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19600 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19601 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19608 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19609 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19611 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19612 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19614 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19615 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19617 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19620 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19621 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19623 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19625 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19626 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19628 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19629 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19630 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19632 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19636 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19637 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19639 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19641 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19643 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19645 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19646 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19648 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19653 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19654 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19660 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19662 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19671 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19673 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19682 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19691 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19693 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19701 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19703 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19714 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19716 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19722 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19729 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19733 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19734 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19744 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19746 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19747 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19748 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19750 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19751 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19753 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19764 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19766 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19767 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19770 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19778 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19779 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19784 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19786 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19787 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19790 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19792 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19793 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19801 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19802 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19804 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19805 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19812 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19814 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19815 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19816 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19820 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19821 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19826 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19827 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19837 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19839 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19845 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19847 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19854 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19856 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19864 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19881 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19882 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19884 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19887 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19888 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19896 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19897 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19899 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19900 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19903 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19904 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19911 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19917 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19923 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19924 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19926 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19927 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19928 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19930 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19931 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19935 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19940 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19944 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19945 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19948 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19951 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19952 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19956 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19960 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19961 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19971 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19972 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19975 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19976 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19979 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19980 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19983 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19984 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"

#line 19990 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19991 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19994 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19996 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19997 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 19998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20000 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20007 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20009 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20012 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 20013 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/pconfig.h"
#line 32 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 40 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
 
#line 42 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 48 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
 
#line 50 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 52 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 72 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 77 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 78 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 80 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 82 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 86 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 87 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 88 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 90 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 91 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 92 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 96 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 99 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 127 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 131 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 132 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 136 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 137 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 138 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 139 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 140 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"




#line 154 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 156 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 164 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 208 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 210 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 211 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 212 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 213 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 214 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 215 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 216 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 217 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 218 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 220 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 221 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 222 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 223 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 224 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 225 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 244 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 246 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 248 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 260 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 277 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 280 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 290 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 292 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 294 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 297 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 306 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 342 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 346 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 348 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 351 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 426 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 509 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 514 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 515 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 518 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 519 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 520 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 522 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 524 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 526 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 527 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 528 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 529 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 530 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 531 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 536 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 537 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 538 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 557 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 562 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 564 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 569 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 571 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 572 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 574 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 600 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 623 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 625 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 627 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 633 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 638 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 640 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 643 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 644 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 651 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 658 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 659 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 662 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 663 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 672 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 678 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 680 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 682 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 683 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 684 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 689 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 694 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 701 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 704 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 705 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 713 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 719 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 721 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 723 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 724 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 725 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 730 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 735 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 742 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 745 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 748 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 760 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 762 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 763 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 772 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 774 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 776 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 787 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 798 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 811 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 820 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 823 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 828 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 829 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 833 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 842 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 854 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 863 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 866 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 868 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 870 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 876 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 881 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 891 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 901 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 906 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 908 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 909 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 911 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 912 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 915 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 917 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 918 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 920 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 922 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 930 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 934 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 942 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 946 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 947 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 950 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 951 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 953 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 954 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 962 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 963 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 965 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 969 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 975 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 979 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 987 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 991 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 992 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 995 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 996 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 998 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 999 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1007 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1008 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1010 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1015 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1017 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 1019 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 1032 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1268 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1298 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1307 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1471 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 1485 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1738 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1747 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1779 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1788 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 1946 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2006 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

 
union ADCResult
{
	int lr;			
 	char br[2];		
};

char BusyADC (void);

void ConvertADC (void);

void CloseADC(void);

#line 2021 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2025 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

int ReadADC(void);

#line 2029 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2031 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2038 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2039 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

void OpenADC ( unsigned char ,
               unsigned char ,
               unsigned char );

#line 2045 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2051 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2058 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2064 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2075 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

 

#line 2082 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2083 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

void SetChanADC(unsigned char );

#line 2087 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2092 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2094 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2099 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

void SelChanConvADC( unsigned char );

#line 2103 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"



#line 2107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2121 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 2128 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2134 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2142 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2153 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2165 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2171 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2179 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 2186 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2202 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2210 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2218 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2226 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2234 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2238 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2240 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2254 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2262 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2270 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2278 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2286 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2290 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


  
#line 2294 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2313 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"


#line 2317 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2318 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2319 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2320 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2322 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2324 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 2330 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"

#line 2332 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/adc.h"
#line 18 "main_CDC_I2C.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"


#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"
 

 
#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 7 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 15 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 17 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 21 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 23 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 27 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 29 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 33 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 35 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 37 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 39 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 47 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 49 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 51 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 53 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 55 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 57 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 59 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 61 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 63 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 65 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 67 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 69 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 71 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 73 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 75 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 77 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 79 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 81 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 83 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 85 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 87 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 89 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 91 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 93 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 95 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 97 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 99 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 101 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 103 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 105 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 107 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 109 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 111 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 113 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 115 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 117 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 119 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 121 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 123 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 125 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 127 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 129 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 131 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 133 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 135 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 137 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 139 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 141 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 143 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 145 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 147 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 149 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 151 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 153 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 155 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 157 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 159 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 161 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 163 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 165 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 167 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 169 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 171 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 173 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 175 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 177 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 179 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 181 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 183 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 185 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 187 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 189 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 191 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 193 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 195 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 197 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 199 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 201 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 203 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 205 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 207 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 209 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 211 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 213 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 215 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 217 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 219 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 221 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 223 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 225 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 227 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 229 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 231 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 233 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 235 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 237 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 239 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 241 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 243 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 245 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 247 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 249 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 251 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 253 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 255 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 257 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 259 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 261 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 263 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 265 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 267 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 269 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 271 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 273 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 275 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 277 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 279 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 281 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 283 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 285 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 287 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 289 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 291 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 293 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 295 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 297 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 299 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 301 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 303 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 305 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 307 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 309 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 311 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 313 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 315 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 317 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 319 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 321 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 323 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 325 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 327 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 329 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 331 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 333 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 335 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 337 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 339 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 341 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 343 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 345 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 347 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 349 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 351 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 353 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 355 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 357 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 359 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 361 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 363 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 365 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 367 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 369 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 371 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 373 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 375 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 377 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 379 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 381 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 383 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 385 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 387 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 389 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 391 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 393 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 395 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 397 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 399 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 401 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 403 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 405 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 407 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 409 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 411 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 413 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 415 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 417 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 419 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 421 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 423 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 425 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 427 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 429 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 431 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 433 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 435 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 437 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 439 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 441 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 443 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 445 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 447 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 449 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 451 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 453 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 455 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 457 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 459 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 461 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 463 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 465 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 467 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 469 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 471 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 473 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 475 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 477 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 479 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 481 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 483 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 485 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 487 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 489 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 491 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 493 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 495 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 497 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 499 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 501 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 503 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 505 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 507 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 509 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 511 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 513 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 515 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 517 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 519 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 521 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 523 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 525 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 527 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 529 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 531 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 533 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 535 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 537 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 539 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 541 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 543 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 545 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 547 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 549 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 551 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 553 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 555 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 557 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 559 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 561 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 563 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 565 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 567 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 569 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 571 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 573 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 575 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 577 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 579 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 581 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 583 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 585 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 587 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 589 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 591 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 593 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 595 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 597 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 599 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/p18cxxx.h"
#line 16 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"


 
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"

#line 22 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"

 
#line 25 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"


#line 31 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"
 
void Delay10TCYx(auto  unsigned char);


#line 38 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"
 
void Delay100TCYx(auto  unsigned char);


#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"
 
void Delay1KTCYx(auto  unsigned char);


#line 52 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"
 
void Delay10KTCYx(auto  unsigned char);

#line 56 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/h/delays.h"
#line 19 "main_CDC_I2C.c"


#line 22 "main_CDC_I2C.c"

 

#line 30 "main_CDC_I2C.c"
 



#pragma config FOSC = HSPLL_HS    
#pragma config PLLDIV = 3               
#pragma config CPUDIV = OSC1_PLL2       
#pragma config VREGEN = ON              
#pragma config USBDIV =2                
#pragma config FCMEN = OFF
#pragma config IESO = OFF
#pragma config PWRT = ON
#pragma config BOR = ON
#pragma config BORV =1
#pragma config MCLRE = ON
#pragma config WDT = OFF
#pragma config WDTPS = 32
#pragma config LVP = OFF
#pragma config XINST = OFF
#pragma config DEBUG = OFF
#pragma config PBADEN = ON       


 
#pragma udata
unsigned char USB_Out_Buf[64 ];
unsigned char USB_In_Buf[64 ];
char cbco = 0, cflg = 0;
int h1, h10, h100,l1, l10, l100;
int cyc1, cyc10;
int ht,lt;
int cycle;
USB_HANDLE    lastTransmission;
int i, j, k;

int b;
char temp;
unsigned char USBRxNum;
int flag = 0, start = 0;
int counter2;
int state = 0;



unsigned int thigh;
unsigned int tlow;
int cycready;
unsigned int cycleh, cyclel;
unsigned int counter3,period,tcount;
int dummy;



 
void YourHighPriorityISRCode();
void YourLowPriorityISRCode();
void USB_CDC_Process();
void Delay_s(int tm);
void Delay_ms(int tm);
void Delay_us(int tm);


 
#pragma code REMAPPED_HIGH_INTERRUPT_VECTOR = 0x08
void Remapped_High_ISR (void){
     _asm goto YourHighPriorityISRCode _endasm
}
#pragma code REMAPPED_LOW_INTERRUPT_VECTOR = 0x18
void Remapped_Low_ISR (void){
     _asm goto YourLowPriorityISRCode _endasm
}
	
#pragma code
 
#pragma interrupt YourHighPriorityISRCode
void YourHighPriorityISRCode(){    
#line 107 "main_CDC_I2C.c"
            USBDeviceTasks();
#line 109 "main_CDC_I2C.c"
}
#pragma interruptlow YourLowPriorityISRCode
void YourLowPriorityISRCode()
{
}	
#pragma code

 
void main(void){  

    counter2 = 0;
    counter3 = 0;
    
    while(counter2 < 1000){
        
        counter2++;
    }
    counter2 = 0;

    
 	TRISA = 0b11111111;				
	TRISB = 0b00110000;				
	TRISC = 0b00000000;				

    
	for (i=0; i<sizeof(USB_Out_Buf); i++){
		USB_In_Buf[i] = 0;
        USB_Out_Buf[i] = 0;
    }
	lastTransmission = 0;		
    USBDeviceInit();			
    USBDeviceAttach();			
      
    while(1){  
        if(1  && (USBGetDeviceState() == DETACHED_STATE))
            USBDeviceAttach();
        if((USBDeviceState >= CONFIGURED_STATE)&&(USBSuspendControl!=1)) {
            USB_CDC_Process();
        } 
    }
}
void USB_CDC_Process(){
    if(state == 0){
        if(USBUSARTIsTxTrfReady()){
                putrsUSBUSART("\r\nSTART: ");
                USB_In_Buf[0] = '\0';
                cbco = 0;
                cflg = 0;
                dummy = 0;
                state++;
        }
        
    }else if(state == 1){
        if(USBUSARTIsTxTrfReady()){
           dummy = getsUSBUSART(&USB_In_Buf[cbco], 1);
        }
        if(dummy != 0){
            if(USB_In_Buf[cbco] != '\r'){
                if(USB_In_Buf[cbco] == 'G'){
                    USB_In_Buf[cbco + 1] = '\r';
                    USB_In_Buf[cbco + 2] = '\n';
                    USB_In_Buf[cbco + 3] = '\0';
                    cbco += 3;
                    cflg = 0;
                    state++;
                }else if(USB_In_Buf[cbco] == '?'){
                    USB_In_Buf[0] = '?';
                    USB_In_Buf[1] = '\r';
                    USB_In_Buf[2] = '\n';
                    USB_In_Buf[3] = '\0';
                    cbco = 4;
                    cflg = 1;
                    state++;
                }else if(cbco >= 12){
                    USB_In_Buf[cbco + 1] = '\r';
                    USB_In_Buf[cbco + 2] = '\n';
                    USB_In_Buf[cbco + 3] = '\0';
                    cbco += 3;
                    cflg = 2;
                    state++;
                }else cbco++;
            }
        }

    }else if(state == 2){
        if(USBUSARTIsTxTrfReady()){
            putUSBUSART(USB_In_Buf, cbco);
            state++;
        }
        
    }else if(state == 3){
        if(USBUSARTIsTxTrfReady()){
            if(cflg == 0){
                
                if(USB_In_Buf[0] < '0' ) cflg = 2;
                if(USB_In_Buf[0] > '9' ) cflg = 2;
                if(USB_In_Buf[1] < '0' ) cflg = 2;
                if(USB_In_Buf[1] > '9' ) cflg = 2;
                if(USB_In_Buf[2] < '0' ) cflg = 2;
                if(USB_In_Buf[2] > '9' ) cflg = 2;          
                if(USB_In_Buf[4] != 's') cflg = 2;
                if(USB_In_Buf[5] < '0' ) cflg = 2;
                if(USB_In_Buf[5] > '9' ) cflg = 2;
                if(USB_In_Buf[6] < '0' ) cflg = 2;
                if(USB_In_Buf[6] > '9' ) cflg = 2;
                if(USB_In_Buf[7] < '0' ) cflg = 2;
                if(USB_In_Buf[7] > '9' ) cflg = 2;
                if(USB_In_Buf[9] != 's') cflg = 2;   
                if(USB_In_Buf[10] < '0' ) cflg = 2;
                if(USB_In_Buf[10] > '9' ) cflg = 2;
                if(USB_In_Buf[11] < '0' ) cflg = 2;
                if(USB_In_Buf[11] > '9' ) cflg = 2;             
            }
            if(cflg == 0){
                state++;
            }
            if(cflg == 1) state = 0;
            if(cflg == 2) {                
                putrsUSBUSART("ERROR");
                state = 0;
            }        
        }
    }else if(state == 4){
        if(USBUSARTIsTxTrfReady()){
            if(USB_In_Buf[3] == ' ') cflg = 10;
            if(USB_In_Buf[3] == 'm') cflg = 20;
            if(USB_In_Buf[3] == 'u') cflg = 30;
            if(USB_In_Buf[8] == ' ') cflg += 1;
            if(USB_In_Buf[8] == 'm') cflg += 2;
            if(USB_In_Buf[8] == 'u') cflg += 3;
            if(cflg == 0) {                
                putrsUSBUSART("ERROR");
                state = 0;
            }
            state++;
        }
    }else if(state == 5){
        h1 = (int)USB_In_Buf[2] - 48;
        h10 = (int)USB_In_Buf[1] - 48;
        h100 = (int)USB_In_Buf[0] - 48;
        l1 = (int)USB_In_Buf[7] - 48;
        l10 = (int)USB_In_Buf[6] - 48;
        l100 = (int)USB_In_Buf[5] - 48;
        cyc1 = (int)USB_In_Buf[11] - 48;
        cyc10 = (int)USB_In_Buf[10] - 48;               
                
        if(cflg == 11){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 12){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 13){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 21){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 22){    
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 23){ 
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 31){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 32){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;
            cycle = cyc1 + cyc10*10;
            state++;
        }else if(cflg == 33){
            ht =h1 + h10*10 + h100*100;
            lt = l1 + l10*10 + l100*100;     
            cycle = cyc1 + cyc10*10;
            state++;
        }else{
            if(USBUSARTIsTxTrfReady()){
                if(cflg == 0){                
                    putrsUSBUSART("ERROR");
                    state = 0;
                }
            }
        }
    }else if(state == 6){
        if(USBUSARTIsTxTrfReady()){
            putrsUSBUSART("ACCEPT");
            state = 0;
        }
    }
    CDCTxService();
    
    if(cflg == 11){
        PORTCbits.RC6 = 1;
        Delay_s(ht);
        PORTCbits.RC6 = 0;
        Delay_s(lt);
    }else if(cflg == 12){
        PORTCbits.RC6 = 1;
        Delay_s(ht);
        PORTCbits.RC6 = 0;
        Delay_ms(lt);        
    }else if(cflg == 13){
        PORTCbits.RC6 = 1;
        Delay_s(ht);
        PORTCbits.RC6 = 0;
        Delay_us(lt);        
    }else if(cflg == 21){
        PORTCbits.RC6 = 1;
        Delay_ms(ht);
        PORTCbits.RC6 = 0;
        Delay_s(lt);        
    }else if(cflg == 22){
        PORTCbits.RC6 = 1;
        Delay_ms(ht);
        PORTCbits.RC6 = 0;
        Delay_ms(lt);
    }else if(cflg == 23){
        PORTCbits.RC6 = 1;
        Delay_ms(ht);
        PORTCbits.RC6 = 0;
        Delay_us(lt);        
    }else if(cflg == 31){
        PORTCbits.RC6 = 1;
        Delay_us(ht);
        PORTCbits.RC6 = 0;
        Delay_s(lt);
    }else if(cflg == 32){
        PORTCbits.RC6 = 1;
        Delay_us(ht);
        PORTCbits.RC6 = 0;
        Delay_ms(lt);        
    }else if(cflg == 33){
        PORTCbits.RC6 = 1;
        Delay_us(ht);
        PORTCbits.RC6 = 0;
        Delay_us(lt);        
    }else{
    }
 
}

void Delay_s(int tm){
    for(i=0; i<tm; i++){
        
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        Delay10KTCYx(100);
        
    }
}

void Delay_ms(int tm){
    for(i=0; i<tm; i++){
        
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);
        Delay10TCYx(100);      
        
    }    
}

void Delay_us(int tm){
    for(i=0; i<tm; i++){
        
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
        {_asm nop _endasm}  ;
    }    
}


#line 421 "main_CDC_I2C.c"
 
#line 423 "main_CDC_I2C.c"
void mySetLineCodingHandler(void)
{
	
	if(cdc_notice.GetLineCoding.dwDTERate.Val > 115200)
	{	
	}
	else{
		DWORD_VAL dwBaud;
		
		
		CDCSetBaudRate(cdc_notice.GetLineCoding.dwDTERate.Val);
		
		dwBaud.Val = (DWORD)(48000000  /4)/line_coding.dwDTERate.Val-1;
		SPBRG = dwBaud.v[0];
		SPBRGH = dwBaud.v[1];
	}
}
#line 441 "main_CDC_I2C.c"






#line 448 "main_CDC_I2C.c"
 
void USBCBSuspend(void)
{
}

#line 454 "main_CDC_I2C.c"
 
void USBCBWakeFromSuspend(void)
{
}

#line 460 "main_CDC_I2C.c"
 
void USBCB_SOF_Handler(void)
{
}

#line 466 "main_CDC_I2C.c"
 
void USBCBErrorHandler(void)
{
}

#line 472 "main_CDC_I2C.c"
 
void USBCBCheckOtherReq(void)
{
    USBCheckCDCRequest();
}

#line 479 "main_CDC_I2C.c"
 
void USBCBStdSetDscHandler(void)
{
}

#line 485 "main_CDC_I2C.c"
 
void USBCBInitEP(void)
{
    CDCInitEP();
}

#line 492 "main_CDC_I2C.c"
 
void USBCBSendResume(void)
{
    static WORD delay_count;
    
    if(USBGetRemoteWakeupStatus() == TRUE) 
    {
        
        
        if(USBIsBusSuspended() == TRUE)
        {
            USBMaskInterrupts();
            
            
            USBCBWakeFromSuspend();
            USBSuspendControl = 0; 
            USBBusIsSuspended = FALSE;  
                                        

            delay_count = 3600U;        
            do
            {
                delay_count--;
            }while(delay_count);
            
            
            USBResumeControl = 1;       
            delay_count = 1800U;        
            do
            {
                delay_count--;
            }while(delay_count);
            USBResumeControl = 0;       

            USBUnmaskInterrupts();
        }
    }
}



#line 534 "main_CDC_I2C.c"
 
#line 536 "main_CDC_I2C.c"
#line 540 "main_CDC_I2C.c"


#line 543 "main_CDC_I2C.c"
 
BOOL USER_USB_CALLBACK_EVENT_HANDLER(USB_EVENT event, void *pdata, WORD size)
{
    switch(event)
    {
        case EVENT_TRANSFER:
            break;
        case EVENT_SOF:
            USBCB_SOF_Handler();
            break;
        case EVENT_SUSPEND:
            USBCBSuspend();
            break;
        case EVENT_RESUME:
            USBCBWakeFromSuspend();
            break;
        case EVENT_CONFIGURED: 
            USBCBInitEP();
            break;
        case EVENT_SET_DESCRIPTOR:
            USBCBStdSetDscHandler();
            break;
        case EVENT_EP0_REQUEST:
            USBCBCheckOtherReq();
            break;
        case EVENT_BUS_ERROR:
            USBCBErrorHandler();
            break;
        case EVENT_TRANSFER_TERMINATED:

            break;
        default:
            break;
    }      
    return TRUE; 
}