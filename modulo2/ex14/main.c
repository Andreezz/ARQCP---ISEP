
#include<stdio.h>
#include "asm.h"

extern int length1;
extern int length2;
extern int height;

int main(void) {

	int res = getArea();
	
	printf("Área = %d\n", res);	

	return 0;
}

