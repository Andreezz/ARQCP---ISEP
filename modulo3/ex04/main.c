#include <stdio.h>
#include "asm.h"

int* ptrvec;
int num = 4;

int main (){

int vec[]={2,0,0,0};



ptrvec=vec;
vec_add_two();

int i;
	for (i = 0; i < num; i++) {
		printf("%d\n", ptrvec[i]);
	}

  return 0;
}