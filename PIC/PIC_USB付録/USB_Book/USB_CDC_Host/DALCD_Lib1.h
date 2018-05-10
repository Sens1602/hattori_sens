/*************************************************
*  グラフィックLCD制御ライブラリ
*   DAファミリ内蔵GFXを使用
*
**************************************************/

/* 関数プロトタイピング  */
void GInit(void);
void SPIInit(void);
void delay_ms(int msec);
void delay_us(int usec);
void Clear(void);
void ClearBox(unsigned int color);
void PutCmd(unsigned int low, unsigned int high);
void WriteSPI(unsigned char data);;
void SendSPI(unsigned char reg, unsigned int cmd);
void PutCha(unsigned int colum, unsigned int line, unsigned char ascii, unsigned char fgcolor, unsigned char bkcolor);
void PutStr(unsigned int colum, unsigned int line, const unsigned char *mesg, unsigned char fgcolor, unsigned char bkcolor);
void PutBox(unsigned int x, unsigned int y, unsigned int width, unsigned int height, unsigned int color);
char GetScreen(void);
void SetupScreen(void);
int GetAD(unsigned int chn);
void Process(void);

#define TRUE	1
#define FALSE	0

#define Fosc		32
#define HSIZE		320
#define VSIZE		240
#define MaxLine		15
#define MaxColum	20

/*** 色指定 ***/
#define BLACK		0x00
#define BLUE		0x03
#define GREEN		0x1C
#define RED		0xE0
#define CYAN		0x1F
#define YELLOW	0xFC
#define MAGENTA	0xE3
#define WHITE		0xFF		
#define GRAY		0x7F


