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

int main(int argc, char *argv[]){
//com用
  int bdrate=9600;       /* 9600 baud */

  unsigned char buf[4096];
  char mode[]={'8','N','1',0};
	
	//char outbuf[4096][4096];
	char *str = (char *)malloc(sizeof(char) * 1000);
	char *temp = (char *)malloc(sizeof(char) * 100);
	int ibuf[4096];

//書き込み用（ログ）
  FILE *wfp;
	int counter = 40;

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
	*str = (char *)malloc(sizeof(char) * 1000);
	
while(counter > 0){
	n = RS232_PollComport(cport_nr, buf, 4095);
	sprintf(str, "");
	if(n > 0){
		buf[n] = 0; /* always put a "null" at the end of a string! */
		for(i=0; i < n; i++){
			if(i%12==0){
				fprintf(wfp, "%s\r\n", str);
				printf("%s\r\n", str);
				sprintf(str, "");
			}
			sprintf(temp, "");
			sprintf(temp, "%d\t", buf[i]);
			sprintf(str, "%s%s", str, temp);
			//ibuf[i] = (int)buf[i];
			printf("buf[%d] = %d\r\n", i, buf[i]);
		}
		if(str == ""){
			printf("aaaaaaaaaaaaaaaaaaa\r\n");
		}else{
			fprintf(wfp, "%s", str);
		}
		counter--;
		//printf("received %i bytes: %s\n", n, (char *)buf);
		printf("%s", str);
	}
}
	fclose(wfp);
}

