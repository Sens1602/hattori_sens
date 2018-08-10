#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <Windows.h>

#include "rs232.h"

#define wait 50	//待ち時間

void print_usage(char *argv0){
	printf("*** Usage: %s [Output File Name]\n", argv0);
}


	//制御用
	int flag = 0;
	int counter = 0;
	int i, j, n;
	int cport_nr = 6;        /* COM7 on windows */
	char filename[255];
	int dummy;

	//MPUの設定
	double psd_range = 5.0;
	int start_position = 0;
	int amount = 9;//データ量（バイト）
	int p1, p2, p3, p4;//PSDデータ取得

	//関数のプロトタイプ
	double psd(int a1, int a2);
	double calc(int a1, int a2);
	int getFlag(int a);
	long calc_d(int a1, int a2);

int main(int argc, char *argv[]){
	//com用
	int bdrate=9600;       /* 9600 baud */

	unsigned char buf[4096];
	char mode[]={'8','N','1',0};
	
	//char outbuf[4096][4096];
	char *str = (char *)malloc(sizeof(char) * 1000);
	char *temp = (char *)malloc(sizeof(char) * 100);

	//書き込み用（ログ）
	FILE *wfp;
	long counter = 0;
	int lc_counter = 0;
	

	//comポートを開く
	while(1){
		printf("\n\nInput COM_PORT NUMBER!\n");
		scanf("%d", &cport_nr);
		if(RS232_OpenComport(cport_nr, bdrate, mode)){
			printf("Can not open COM%d\n", cport_nr);
		} else{
			printf("COM%d was opened successfully\n", cport_nr);
			break;
		}
  	}

	// 書き出しファイルオープン
	while(1){
		printf("\n\nInput LOG_FILE NAME!\n");
		scanf("%s", filename);
		if((wfp = fopen(filename, "w")) == NULL){
			printf("\n*** Error: Cannot open write_file(%s)!\n", filename);
			print_usage(filename);
		}else {
			printf("LOG is to be written in %s", filename);
			break;
		}
	}
	
	*temp = (char *)malloc(sizeof(char) * 100);
	*str = (char *)malloc(sizeof(char) * 10000);
	
	printf("\n\n push ENTER if ready!\n");
	while(1){
		if(_kbhit()) break;
	}
	RS232_SendByte(cport_nr, '1');
	printf("Measurement START!\n\n");
	
	//
	while(1){
		n = RS232_PollComport(cport_nr, buf, 4095);
		int flag;
		if(n > 4095){
			printf("over");
			return 0;
		}
		if(n > 0){
			lc_counter = 0;
			sprintf(str, "%d,", n);
			p1 = start_position;
			p2 = p1 + 2;
			p3 = p2 + 2;
			p4 = p3 + 2;
			
			for(i=0; i < n; i++){
				sprintf(temp, "");
				if(i != 0 && i % amount*(lc_counter+1) == 0){
					fprintf(wfp, "%s,%d,%d\n", str, lc_counter, i);
					printf("%s\n", str);
					sprintf(str, "%d,",n);
					lc_counter++;
					p1 += amount
					p2 = p1 + 2;
					p3 = p2 + 2;
					p4 = p3 + 2;
				}

				sprintf(temp, "%.5f,", (psd(buf[i], buf[i+1])));
				printf(str, "%s%s", str, temp);
				i++;

			}
			fprintf(wfp, "%s\n", str);
			printf("%s\n", str);
			counter++;
			
			if(counter != 0 && counter % 50 == 0){
				fclose(wfp);
				if((wfp = fopen(filename, "a")) == NULL){
					printf("\n*** Error: Cannot open write_file(%s)!\n", filename);
					print_usage(filename);
					return -1;
				}
			}
		}
	}
	fclose(wfp);
		
}

double psd(int a1, int a2){
	return psd_range * (a1*256 + a2) / 4095;
}

double calc(int a1, int a2){
	double a;
	a = a1*256 + a2;
	if(a1 <= 127){
		a = a / (256.0 * 256.0);
	}else{
		a = (-(256.0 * 256.0 - a)) / (256.0 * 256.0);
	}
	return a;
}

long calc_d(int a1, int a2){
	long a;
	a = a1*256 + a2;
	return a;
}
