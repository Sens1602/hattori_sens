/* 
 * File:   StringTest.c
 * Author: sens
 *
 * Created on 2015/11/24, 18:51
 */
#include <p18f2553.h>
#include <stdio.h>
#include <stdlib.h>
#include <usart.h>

//#pragma config PLLDIV = 3               //?????12MHz
//#pragma config CPUDIV = OSC1_PLL2       //CPU????48MHz
//#pragma config FOSC = NONE          //???????????
/*#pragma config FCMEN = OFF
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
*/
/*
 * 
 */
int main(void) {
    //USART�̏����ݒ�
   SPBRG = 15;
   RCSTA = 0b10010000;
   TXSTA = 0b00100100;�@�@�@// ���M���ݒ�F�񓯊����[�h�@�W�r�b�g�f�[�^�E�m���p���e�B
�@ RCSTA = 0b10010000;�@�@�@// ��M���ݒ�
   TRISC = 0b00000000;
   
   //printf("OK!\r\n");
   while(1){
       //putcUSART("OK!\r\n");
       printf("OK!\r\n");
   }
    
}

