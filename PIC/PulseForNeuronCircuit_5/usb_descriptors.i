#line 1 "usb_descriptors.c"
#line 1 "usb_descriptors.c"

#line 7 "usb_descriptors.c"
 

#line 10 "usb_descriptors.c"
 
 



 
#line 17 "usb_descriptors.c"
#pragma romdata
#line 19 "usb_descriptors.c"

 
ROM USB_DEVICE_DESCRIPTOR device_dsc=
{
    0x12,    
    USB_DESCRIPTOR_DEVICE,                
    0x0200,                 
    CDC_DEVICE,             
    0x02,                   
    0x01,                   
    USB_EP0_BUFF_SIZE,          
    0x04D8,                 
    0x000A,                 
    0x0100,                 
    0x01,                   
    0x02,                   
    0x00,                   
    0x01                    
};

 
ROM BYTE configDescriptor1[]={
     
    0x09,
    USB_DESCRIPTOR_CONFIGURATION,                
    67,0,                   
    2,                      
    1,                      
    0,                      
    _DEFAULT | _SELF,               
    250,                     
							
     
    9,
    USB_DESCRIPTOR_INTERFACE,               
    0,                      
    0,                      
    1,                      
    COMM_INTF,              
    ABSTRACT_CONTROL_MODEL, 
    V25TER,                 
    0,                      

     
    sizeof(USB_CDC_HEADER_FN_DSC),
    CS_INTERFACE,
    DSC_FN_HEADER,
    0x10,0x01,

    sizeof(USB_CDC_ACM_FN_DSC),
    CS_INTERFACE,
    DSC_FN_ACM,
    USB_CDC_ACM_FN_DSC_VAL,

    sizeof(USB_CDC_UNION_FN_DSC),
    CS_INTERFACE,
    DSC_FN_UNION,
    CDC_COMM_INTF_ID,
    CDC_DATA_INTF_ID,

    sizeof(USB_CDC_CALL_MGT_FN_DSC),
    CS_INTERFACE,
    DSC_FN_CALL_MGT,
    0x00,
    CDC_DATA_INTF_ID,

     
    
    0x07, 
    USB_DESCRIPTOR_ENDPOINT,    
    _EP01_IN,            	
    _INTERRUPT,             
    0x08,0x00,              
    0x02,                   

     
    9,
    USB_DESCRIPTOR_INTERFACE,               
    1,                      
    0,                      
    2,                      
    DATA_INTF,              
    0,                      
    NO_PROTOCOL,            
    0,                      
    
     
    
    0x07, 
    USB_DESCRIPTOR_ENDPOINT,    
    _EP02_OUT,              
    _BULK,                  
    0x40,0x00,              
    0x00,                   

     
    
    0x07, 
    USB_DESCRIPTOR_ENDPOINT,    
    _EP02_IN,               
    _BULK,                  
    0x40,0x00,              
    0x00,                   
};



ROM struct{BYTE bLength;BYTE bDscType;WORD string[1];}sd000={
sizeof(sd000),USB_DESCRIPTOR_STRING,{0x0409}};


ROM struct{BYTE bLength;BYTE bDscType;WORD string[25];}sd001={
sizeof(sd001),USB_DESCRIPTOR_STRING,
{'M','i','c','r','o','c','h','i','p',' ',
'T','e','c','h','n','o','l','o','g','y',' ','I','n','c','.'
}};


ROM struct{BYTE bLength;BYTE bDscType;WORD string[9];}sd002={
sizeof(sd002),USB_DESCRIPTOR_STRING,
{'C','D','C',' ','i','-','P','S','D'}
};


ROM BYTE *ROM USB_CD_Ptr[]=
{
    (ROM BYTE *ROM)&configDescriptor1
};

ROM BYTE *ROM USB_SD_Ptr[]=
{
    (ROM BYTE *ROM)&sd000,
    (ROM BYTE *ROM)&sd001,
    (ROM BYTE *ROM)&sd002
};

#pragma code
#line 157 "usb_descriptors.c"
 
