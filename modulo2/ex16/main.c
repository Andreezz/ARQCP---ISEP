
#include <stdio.h>
#include "asm.h"

long num=3;
int main(void) {

	int res = steps();
	
	printf("steps = %d\n", res);	

	return 0;
}

