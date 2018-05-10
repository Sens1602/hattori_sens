/********************************************************
*  �J���[�O���t�B�b�NLCD(240��320�h�b�g�j�p���C�u����
*   ���\���Őݒ�
*	lcd_Init();		// ������
*	lcd_Clear();		// �S��ʏ���
*	lcd_Pixel();		// 1�h�b�g�\��
*	lcd_Char();		// ANK�����\��
*	lcd_Str();		// ANK������\��
*	lcd_Line();		// �����`��
*	lcd_Circle();		// �~�`��
*********************************************************/
#include "p24FJ64GB004.h"
#include "colorlcd_libYHY16.h"
#include "ASCII16dot.h"		//ASCII 12x12dot

/************************************
* ���W�X�^�ݒ�ƃf�[�^�o�͊֐� 
*************************************/
void lcd_out(unsigned int index, unsigned int data){
	// Index��ʃo�C�g�o��
	LCD_CS = 0;				// CS Low
	LCD_RS = 0;				// Command 
	LCD_DB = ((index>>8) & 0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;
	// Index���ʃo�C�g�o��
	LCD_DB = (index&0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;
	// Data��ʃo�C�g�o��
	LCD_RS = 1;				// Data 
	LCD_DB = ((data>>8) & 0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;
	// Index���ʃo�C�g�o��
	LCD_DB = (data&0x00FF) | (LCD_DB & 0xFF00);
	LCD_WR = 0;				// WR out
	Nop();
	LCD_WR = 1;	
	LCD_CS = 1;				// CS High

}

/****************************
* LCD�������֐�  
*****************************/
void lcd_Init(void){
	delay_ms(20);
	LCD_RD = 1;
	LCD_CS = 1;				// CS High
	LCD_WR = 1;				// WR High
	LCD_RESET = 0;			// Reset LCD
	delay_ms(0x1);			// 1msec wait
	LCD_RESET = 1;			// Clear RESET
	delay_ms(25);				// 25msec wait

	lcd_out(0x00E3, 0x3008); 	// Set internal timing
	lcd_out(0x00E7, 0x0012); 	// Set internal timing
	lcd_out(0x00EF, 0x1231); 	// Set internal timing
	lcd_out(0x0001, 0x0000); 	// set SS and SM bit
	lcd_out(0x0002, 0x0700);	// set line inversion
	lcd_out(0x0003, 0x1018);	// set GRAM write direction and BGR=1, 16bit color
	lcd_out(0x0004, 0x0000);	// Resize register
	lcd_out(0x0008, 0x0207);	// set the back porch and front porch
	lcd_out(0x0009, 0x0000);	// set non-display area refresh cycle ISC[3:0]
	lcd_out(0x000A, 0x0000);	// FMARK function
	lcd_out(0x000C, 0x0000); 	// RGB interface setting
	lcd_out(0x000D, 0x0000);	// Frame marker Position
	lcd_out(0x000F, 0x0000);	// RGB interface polarity
	/********* �d���I���V�[�P���X  **************/
	lcd_out(0x0010, 0x0000); 	// SAP, BT[3:0], AP[2:0], DSTB, SLP, STB
	lcd_out(0x0011, 0x0007);	// DC1[2:0], DC0[2:0], VC[2:0]
	lcd_out(0x0012, 0x0000);	// VREG1OUT voltage
	lcd_out(0x0013, 0x0000); 	// VDV[4:0] for VCOM amplitude
	delay_ms(200); 			// �R���f���T���d�҂�
	lcd_out(0x0010, 0x1490); 	// SAP, BT[3:0], AP[2:0], DSTB, SLP, STB
	lcd_out(0x0011, 0x0227); 	// R11h=0x0221 at VCI=3.3V ,DC1[2:0], DC0[2:0], VC[2:0]
	delay_ms(50); 			// �x�� 50ms
	lcd_out(0x0012, 0x001c); 	// External reference voltage= Vci;
	delay_ms(50); 			// �x�� 50ms
	lcd_out(0x0013, 0x0A00); 	// R13=0F00 when R12=009E;VDV[4:0] for VCOM amplitude
	lcd_out(0x0029, 0x000F); 	// R29=0019 when R12=009E;VCM[5:0] for VCOMH//0012//
	lcd_out(0x002B, 0x000D); 	// Frame Rate = 91Hz
	delay_ms(50); 			// �x�� 50ms
	lcd_out(0x0020, 0x0000); 	// GRAM horizontal Address
	lcd_out(0x0021, 0x0000); 	// GRAM Vertical Address
	/**********  �K���}�␳  **********/
	lcd_out(0x0030, 0x0000);
	lcd_out(0x0031, 0x0203);
	lcd_out(0x0032, 0x0001);
	lcd_out(0x0035, 0x0205);
	lcd_out(0x0036, 0x030C);
	lcd_out(0x0037, 0x0607);
	lcd_out(0x0038, 0x0405);
	lcd_out(0x0039, 0x0707);
	lcd_out(0x003C, 0x0502);
	lcd_out(0x003D, 0x1008);
	/*********** GRAM�̈�ݒ� *********/
	lcd_out(0x0050, 0x0000); 	// Horizontal GRAM Start Address
	lcd_out(0x0051, 0x00EF); 	// Horizontal GRAM End Address
	lcd_out(0x0052, 0x0000); 	// Vertical GRAM Start Address
	lcd_out(0x0053, 0x013F); 	// Vertical GRAM Start Address
	lcd_out(0x0060, 0xA700); 	// Gate Scan Line ���\���p
	lcd_out(0x0061, 0x0001); 	// NDL,VLE, REV
	lcd_out(0x006A, 0x0000); 	// set scrolling line
	/************* �����\������ ************/
	lcd_out(0x0080, 0x0000);	// �����\��1�ʒu
	lcd_out(0x0081, 0x0000);	// �����\��1RAM�J�n�A�h���X
	lcd_out(0x0082, 0x0000);	// �����\��1RAM�I���A�h���X
	lcd_out(0x0083, 0x0000);	// �����\��2�ʒu	
	lcd_out(0x0084, 0x0000);	// �����\��2RAN�J�n�A�h���X
	lcd_out(0x0085, 0x0000);	// �����\��2RAM�I���A�h���X
	/************** �p�l������ ************/
	lcd_out(0x0090, 0x0010);	// 1���C���N���b�N��
	lcd_out(0x0092, 0x0600);	// �Q�[�g�I�[�o�[���b�v�N���b�N��
	lcd_out(0x0093, 0x0003);	// �o�̓^�C�~���O
	lcd_out(0x0095, 0x0110);	// RGB��1���C���N���b�N��
	lcd_out(0x0097, 0x0000);	// �o�̓^�C�~���O
	lcd_out(0x0098, 0x0000);	// �o�̓^�C�~���O
	/***** �\������ *****/ 
	lcd_out(0x0007, 0x0133); 	// 262K color and display ON
}

/***************************
* ��ʏ����֐�
* �����p�F�w�肠��
****************************/
void lcd_Clear(unsigned short Color){
	int i, j;
	
	lcd_out(0x0020, 0);					// ���_�ɃZ�b�g
	lcd_out(0x0021, 0);
	for(	j=0; j<ENDROW; j++){		// Y���S��
		for(i=0; i<ENDCOL; i++){		// X���S��
			lcd_out(0x0022, Color);		// ���F�Ŗ��߂�
		}
	}
}
/***********************************
*  �P�s�N�Z���\���֐�
*  ���W��(0,0)-(319,239)  
***********************************/
void lcd_Pixel(short Xpos, short Ypos, unsigned short Color){

	if((Xpos<ENDCOL) && (Ypos<ENDROW)){
		lcd_out(0x0020, Ypos);			// ���W�w��
		lcd_out(0x0021, Xpos);
		lcd_out(0x0022, Color);			// �h�b�g�\��
	}
}
/***************************
*  �����`��֐�
***************************/
#define	abs(a)	(((a)>0) ? (a) : -(a))
void lcd_Line(short x0, short y0, short x1, short y1, unsigned short Color)
{
	short steep, t;
	short deltax, deltay, error;
	short x, y;
	short ystep;
	
	y0=ENDROW-y0 -1;						// Y���W���]
	y1=ENDROW-y1 -1;
	/// �����̑傫���ق������߂�
	steep = (abs(y1 - y0) > abs(x1 - x0));
	/// ���A���̓���ւ�
	if(steep){
		t = x0; x0 = y0; y0 = t;
		t = x1; x1 = y1; y1 = t;
	}
	if(x0 > x1) {
		t = x0; x0 = x1; x1 = t;
		t = y0; y0 = y1; y1 = t;
	}
	deltax = x1 - x0;						// �X���v�Z	
	deltay = abs(y1 - y0);
	error = 0;
	y = y0;
	/// �X���ŃX�e�b�v�̐�����؂�ւ�
	if(y0 < y1) ystep = 1; else ystep = -1;
	/// ������_�ŕ`��
	for(x=x0; x<=x1; x++) {
		if(steep) lcd_Pixel(y,x,Color); else lcd_Pixel(x,y,Color);
		error += deltay;
		if((error << 1) >= deltax) {
			y += ystep;
			error -= deltax;
		}
	}
}
/*************************************
*  �~��`���֐�
*  ���S�_�Ɣ��a���w��
*  (Fussy����̃A���S���Y�����g�p)
**************************************/
void lcd_Circle(int x0, int y0, int r, unsigned short color)
{
	int x = r;
	int y = 0;
	int F = -2 * r + 3;
	
	while(x >= y){
		lcd_Pixel(x0+x, y0+y, color);
		lcd_Pixel(x0-x, y0+y, color);		
		lcd_Pixel(x0+x, y0-y, color);
		lcd_Pixel(x0-x, y0-y, color);		
		lcd_Pixel(x0+y, y0+x, color);
		lcd_Pixel(x0-y, y0+x, color);		
		lcd_Pixel(x0+y, y0-x, color);
		lcd_Pixel(x0-y, y0-x, color);
		if(F >= 0){
			x--;
			F -= 4 * x;
		}
		y++;
		F += 4 * y + 2;
	}
}
/*****************************************
*  ANK�����\���֐� 16x16�h�b�g
*  320/16=20����/�s�@240/17=14�s
*  (0, 0) - (20, 14)�͈̔�
******************************************/
void lcd_Char(char colum, char line, unsigned char letter, unsigned short Color1, unsigned short Color2){
	unsigned char Mask;
	int i, j;

	if((colum < XChar) && (line < YLine)){		// �͈̓`�F�b�N
		// 16dot 1line�\���o��
		for(j=0; j<16; j++){
			Mask = 0x80; 								// 16���C��
			for(i=0; i<8; i++){				// 8�h�b�g���Q
				// 1�o�C�g��
				if((ASCII16dot[letter][j*2] & Mask) != 0)
					lcd_Pixel(colum*16+i, line*17+j, Color1);
				else
					lcd_Pixel(colum*16+i, line*17+j, Color2);
				// 2�o�C�g��
				if((ASCII16dot[letter][j*2+1] & Mask) != 0)
					lcd_Pixel(colum*16+i+8, line*17+j, Color1);
				else
					lcd_Pixel(colum*16+i+8, line*17+j, Color2);
				// �r�b�g�V�t�g
				Mask = Mask >> 1;
			}
		}
	}
}				

/******************************
*   ������`��֐�
*   20������14�s�Ŏw��
******************************/
void lcd_Str(char colum, char line, char *s, unsigned short Color1, unsigned short Color2)
{
    	while (*s){
		lcd_Char(colum++, line, *s++, Color1, Color2);
		if(colum >= XChar){
			line++;
			colum = 0;
			if(line >= YLine)
				line = 0;
		}
	}
}
