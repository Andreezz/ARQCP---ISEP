#include <stdio.h>
#include "asm.h"

int main(void){
	
	int a = -4;
	int b = -3;
	int c = -2;
  int d = -1;
	
	int result = greatest(a, b, c, d);
	
	printf("O maior dos quatro números %d, %d, %d, %d é o %d\n", a, b, c, d, result);
	
	return 0;
}