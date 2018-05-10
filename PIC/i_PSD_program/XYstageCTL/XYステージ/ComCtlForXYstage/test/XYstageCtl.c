#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <Windows.h>

#include "rs232.h"

#define wait 50	//待ち時間
#define SPD1 "D:WS100F5000R1000S100F5000R1000\r\n"
#define SPD2 "D:WS50F1000R50S50F1000R50\r\n"

void print_usage(char *argv0){
	printf("*** Usage: %s [Output File Name]\n", argv0);
}

int memory2file(FILE *, char *);
void move(char *, FILE *, char *,int);//制御文の通りに動かす（絶対パルス座標）
char *mkstr(int, int);//制御文の生成
void setSPD(char *, FILE *);//


//制御用
int flag = 0;
int counter = 0;
int i, j, n;
int cport_nr=3;        /* COM4 on windows */
int CN;                /*dummy COM number*/

int main(int argc, char *argv[])
{
//com用
  char *str = (char *)malloc(sizeof(char) * 1000);
  int bdrate=9600;       /* 9600 baud */

  unsigned char buf[4096];
  char mode[]={'8','N','1',0};

//書き込み用（ログ）
  FILE *wfp;

//XYstage用
int x = 25000, y = 25000;     //50mm
int m = 1000;    //margen（余白） 
int tx, ty;
int pitch = 500;



//comポートを開く
	while(1){
		printf("\n\nInput COM_PORT NUMBER!\n");
		scanf("%d", &CN);
		int cport_nr = CN - 1; 
		if(RS232_OpenComport(cport_nr, bdrate, mode)){
			printf("Can not open COM%d\n", cport_nr);
		} else{
			printf("COM%d was opened successfully\n", cport_nr);
			break;
		}
  	}

// 書き出しファイルオープン
	if((wfp = fopen(argv[1], "w")) == NULL){
		printf("\n*** Error: Cannot open write_file(ARGV1)!\n");
		print_usage(argv[0]);
		return -1;
	}
printf("open file [%s]\r\n", argv[1]);

//速度調整
setSPD(SPD1, wfp);


//開始
//原点へ移動(0, 0)
strcpy(str, "A:W+P0+P0\r\n");
RS232_cputs(cport_nr, str);
printf("sent: %s\n", str);
memory2file(wfp, str);

strcpy(str, "G:\r\n");
RS232_cputs(cport_nr, str);
printf("sent: %s\n", str);
memory2file(wfp, str);
Sleep(wait);
n = RS232_PollComport(cport_nr, buf, 4095);
printf("received %i bytes: %s\n", n, (char *)buf);
memory2file(wfp, strcat((char *)buf, "\r\n"));

//開始点手前に移動(26000, 26000)
tx = x + m;
ty = y + m;
str = mkstr(tx, ty);//制御文の生成
move(str, wfp, buf, 10000);

//計測開始
for(i = 0; i * pitch <= 2*x; i++ ){
	str = mkstr(x - (pitch * i), y);
	move(str, wfp, buf, 3500);
	setSPD(SPD2, wfp);
	for(j = 1; j * pitch <= 2*y; j++){
		str = mkstr(x - (pitch * i), y - (pitch * j));
		move(str, wfp, buf, 3500);
	}
	setSPD(SPD1, wfp);
	str = mkstr(x - (pitch * i), y + m);
	move(str, wfp, buf, 10000);
}

//原点に返す
strcpy(str, "A:W+P0+P0\r\n");
move(str, wfp, buf, 10000);

// 書き出しファイルクローズ
fclose(wfp);
printf("\r\nclose file [%s]", argv[1]);

  return(0);
}


//文字列のファイル書き出し
int memory2file(FILE *fpp, char *wpp){

	int count = 0;
	//int max = strlen(wpp);

	while(wpp[count] != '\0'){
		if(putc(wpp[count], fpp) == EOF){
			printf("get EOF!");
			putc(13, fpp);
			putc(10, fpp);
			return -1;
		} else{
			count++;
		}
	}
	//putc(10, fpp);//改行
	return count;

}

//制御文の通りに動かす（絶対パルス座標）
void move(char *str, FILE *wfp, char *buf, int time){
	flag = 0;
	counter = 0;
	char *temp = (char *)malloc(sizeof(char) * 100);

	while(!flag){
		RS232_cputs(cport_nr, str);
		n = RS232_PollComport(cport_nr, buf, 4095);
		Sleep(wait);
			if(n > 0 && (int)buf[0] == (int)'O' && (int)buf[1] == (int)'K'){//OK?
				printf("sent: %s\n", str);
				memory2file(wfp, str);
				printf("received %i bytes: %c%c\n", n, buf[0], buf[1]);
				//memory2file(wfp, (char *)buf);
				strncpy(temp, buf, 2);
				strcat(temp, "\r\n");
				memory2file(wfp, temp);
				//memory2file(wfp, (char *)buf[0]);
				//memory2file(wfp, (char *)buf[1]);
				flag = 1;
				counter = 0;
			}else {
				//printf("%c%c\n", buf[0], buf[1]);  //NG
				counter++;
					if(counter > 1000){ 
						printf("error");
						fclose(wfp);
						return;
					}
			}
	}

	flag = 0;
	counter = 0;
	while(!flag){
		strcpy(str, "G:\r\n");
		RS232_cputs(cport_nr, str);
		Sleep(wait);
		n = RS232_PollComport(cport_nr, buf, 4095);
		if(n > 0 && (int)buf[0] == (int)'O' && (int)buf[1] == (int)'K'){
			printf("sent: %s\n", str);
			memory2file(wfp, str);
			printf("received %i bytes: %c%c\n", n, buf[0], buf[1]);
			//memory2file(wfp, (char *)buf);
			strncpy(temp, buf, 2);
			strcat(temp, "\r\n");
			memory2file(wfp, temp);
			//memory2file(wfp, (char *)buf[0]);
			//memory2file(wfp, (char *)buf[1]);
			flag = 1;
			counter = 0;
		}else{
			counter++;
			////printf("%c%c\n", buf[0], buf[1]);  //NG
			if(counter > 1000){
				printf("error");
				fclose(wfp);
				return;
			}
		}
	}
	Sleep(time);
	return;
}

//制御文の生成
char *mkstr(int x, int y){
	char *str = (char *)malloc(sizeof(char) * 1000);
	char *tmp = (char *)malloc(sizeof(char) * 100);
	if(x >= 0){
		sprintf(tmp, "A:W+P%d", x);//数字を文字に変換
	}else{
		sprintf(tmp, "A:W-P%d", -x);
	}
	strcpy(str, tmp);//コピー
	if(y >= 0){
		sprintf(tmp, "+P%d\r\n", y);
	}else{
		sprintf(tmp, "-P%d\r\n", -y);
	}
	strcat(str, tmp);//文字列の連結
	
	return str;
}

//速度調整
void setSPD(char *spd, FILE *wfp){
	char *str = (char *)malloc(sizeof(char) * 100);
	char *buf = (char *)malloc(sizeof(char) * 100);
	strcpy(str, spd);
	counter = 0;
	flag = 0;
	while(!flag){
		RS232_cputs(cport_nr, str);
		Sleep(wait);
		n = RS232_PollComport(cport_nr, buf, 4095);
		if((int)buf[0] == (int)'O' && (int)buf[1] == (int)'K'){
			printf("sent: %s\n", str);
			memory2file(wfp, str);
			printf("received %i bytes: %s\n", n, (char *)buf);
			memory2file(wfp, buf);
			return;
		}else{
			counter++;
			if(counter > 100){
				printf("error");
				memory2file(wfp, "spd set error");
				return;
			}
		}
	}
}