#include <stdio.h>
#include "asm.h"


int i;
int j;

int main(){
	
	i = 4;
	j = 2;
	
	printf("i = %d\nj = %d\n", i, j);
	
	int h = f();
	printf("resultado de f(): %d\n", h);
	
	h = f2();
	printf("resultado de f2(): %d\n", h);
	
	long h2 = f3();
	printf("resultado de f3(): %ld\n", h2);
	/*
	h = f4();
	printf("resultado de f4(): %d\n", h);*/
	
	return 0;
}