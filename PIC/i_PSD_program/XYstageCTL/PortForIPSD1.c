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
int cport_nr=2;        /* COM4 on windows */

//MPUの設定
	double range = 2;
	int amount = 12;//データ量（バイト）

double accel(int a1, int a2);

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
	long counter = 40000000000;
	int lc_counter = 0;
	int ax = 0, ay = 0, az = 0;//加速度取得位置

//comポートを開く
  if(RS232_OpenComport(cport_nr, bdrate, mode)){
    printf("Can not open comport\n");
    return(0);
  }

// 書き出しファイルオープン
	if((wfp = fopen(argv[1], "w")) == NULL){
		printf("\n*** Error: Cannot open write_file(ARGV1)!\n");
		print_usage(argv[0]);
		return -1;
	}
printf("open file [%s]\r\n", argv[1]);
	*temp = (char *)malloc(sizeof(char) * 100);
	*str = (char *)malloc(sizeof(char) * 10000);
	
	
	//
while(counter > 0){
	n = RS232_PollComport(cport_nr, buf, 4095);
	if(n > 4095){
		printf("over");
		return 0;
	}
	if(n > 0){
		lc_counter = 0;
		sprintf(str, "%d,", n);
		ax = 6;
		ay = 8;
		az = 10;
		/*if(n != 12){
			printf("now n = %d\n", n);
			sleep(1);
		}*/
		buf[n] = 0; /* always put a "null" at the end of a string! */
		
		for(i=0; i < n; i++){
			sprintf(temp, "");
			if(i != 0 && i % amount*(lc_counter+1) == 0){
				fprintf(wfp, "%s,%d,%d\n", str, lc_counter, i);
				printf("%s\n", str);
				sprintf(str, "%d,",n);
				lc_counter++;
				ax += amount;
				ay += amount;
				az += amount;
			}
			//printf("i=%d\tax = %d\n", i, ax);
			
			
			if(i == ax || i == ay || i == az){
				sprintf(temp, "%.5f,", (accel(buf[i], buf[i+1])));
				sprintf(str, "%s%s", str, temp);
				i++;
				continue;	
			}else{
				sprintf(temp, "%d,", buf[i]);
				sprintf(str, "%s%s", str, temp);
				//ibuf[i] = (int)buf[i];
				//printf("buf[%d] = %d\r\n", i, buf[i]);
			}
				//printf("%s\n", str);
		}
		fprintf(wfp, "%s\n", str);
		printf("%s\n", str);
		counter--;
		
		//printf("received %i bytes: %s\n", n, (char *)buf);
		
	}
}
	fclose(wfp);
}

double accel(int a1, int a2){
	double a;
	a = a1*256 + a2;
	if(a1 <= 127){
		a = a / (256.0 * 256.0) * 2.0 * range;
	}else{
		a = (-(256.0 * 256.0 - a)) / (256.0 * 256.0) * 2.0 * range;
	}
	return a;
}

