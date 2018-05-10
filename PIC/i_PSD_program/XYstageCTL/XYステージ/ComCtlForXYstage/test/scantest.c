#include	<stdio.h>
#include	<stdlib.h>
#include <string.h>
#include <Windows.h>


int main(){
char *c;
char *d;
c = (char *)malloc(sizeof(char) * 40);
scanf("%s", c);
printf("%s\n", c);
	
scanf("%s", d);
printf("%s\n", d);

strcat(c, d);
printf("%s", c);

}
