#include <stdio.h>
#include "asm.h"

int main(void){
	
	int v1 = 9;
	int v2 = 4;
	
	int result = inc_and_square(&v1, v2);
	
	printf("V1 = %d, V2 = %d\n", v1, result);
	
	return 0;
}