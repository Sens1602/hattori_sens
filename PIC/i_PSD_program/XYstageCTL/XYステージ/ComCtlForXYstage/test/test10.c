#include	<stdio.h>
#include	<stdlib.h>

void print_usage(char *argv0){
	printf("*** Usage: %s [Input File Name] [Output File Name]\n", argv0);
}

long chek_text_file(FILE *fpp);

int file2memory(FILE *fpp, char *wpp, long max);

int text_convert(char *wpp, long max);

long memory2file(FILE *fpp, char *wpp, long max);

int main(int argc, char *argv[]){

	FILE *rfp, *wfp;
	char *wp;
	long wcount;

	// 引数のチェック
	if(argc != 3){
		printf("\n*** Error: ARGV1 and ARGV2 are not correct!\n");
		print_usage(argv[0]);
		return -1;
	}

	// 読み込みファイルオープン
	if((rfp = fopen(argv[1], "r")) == NULL){
		printf("\n*** Error: Cannot open read_file(ARGV1)!\n");
		print_usage(argv[0]);
		return -1;
	}

	// 書き出しファイルオープン
	if((wfp = fopen(argv[2], "w")) == NULL){
		printf("\n*** Error: Cannot open write_file(ARGV2)!\n");
		print_usage(argv[0]);
		return -1;
	}

	// 読み込みファイルチェック
	if((wcount = chek_text_file(rfp)) <= 0){
		printf("\n*** Error: read_file(ARGV1) is not a text file!\n");
		print_usage(argv[0]);
		return -1;
	}

	// メモリの確保
	if((wp = (char *)malloc(sizeof(char) * wcount)) == NULL ){
		printf("\n*** Error: Memory over!\n");
		print_usage(argv[0]);
		return -1;
	}

	// 読み込みファイルリセット	
	if(fseek(rfp, 0, SEEK_SET) != 0){
		return -1;
	} 

	// ファイルの内容を文字列としてメモリに格納
	if(file2memory(rfp, wp, wcount) < 0){
		printf("\n*** Error: Cannot strage data into memory!\n");
		print_usage(argv[0]);
		return -1;
	}		

	// メモリ格納済み文字列の整形
	if(text_convert(wp, wcount) < 0){
		printf("\n*** Error: Cannot convert text_data!\n");
		print_usage(argv[0]);
		return -1;
	}		

	// 整形済み文字列のファイル書き出し
	if(memory2file(wfp, wp, wcount) < 0){
		printf("\n*** Error: Cannot output formatted_text into write_file(ARGV2)!\n");
		print_usage(argv[0]);
		return -1;
	}

	// メモリ開放
	free(wp);

	// 読み込みファイルクローズ
	fclose(rfp);

	// 書き出しファイルクローズ
	fclose(wfp);

	return 0;

}

long chek_text_file(FILE *fpp){

	int flag = 0;
	char cc;
	long count = 0;

	while((cc = getc(fpp)) != EOF){
		if(cc <  32) flag = -1;
		if(cc > 126) flag = -1;
		if(cc ==  9) flag = 0;	// '\t'
		if(cc == 10) flag = 0;	// '\n'
		if(cc == 13) flag = 0;	// '\r'
		if(flag == 0) {
			count++;
		} else{ 
			return -1;
		}

		// long型最大値
		if(count > 2000000000000){
			return -1;
		}
	}

	return count;

}

int file2memory(FILE *fpp, char *wpp, long max){

	long count = 0;

	while((wpp[count] = getc(fpp)) != EOF){
		if(count < max){
			count++; 
		} else{
			return -1;
		}
	}

	if(count == max){
		wpp[count] = '\0';	
		return 0;
	} else{
		return -1;
	}

}

int text_convert(char *wpp, long max){
	
	long count = 0;

	for(count = 0; count < max; count++){
		if(wpp[count] == '\n') wpp[count] = ' ';
	}

	return 0;

}

long memory2file(FILE *fpp, char *wpp, long max){

	long count = 0;
	while(wpp[count] != '\0'){
		if(putc(wpp[count], fpp) == EOF){
			return -1;
		} else{
			count++;
		}
	}

	return count;

}
