
#include <stdio.h>
#include "asm.h"

long op1 = 1;
long op2 = 1;
long op3 = 1;

int main(void) {

	long long r = sum3ints();
	
	printf("op1 + op2 + op3 = %lld \n", r);

	return 0;
}
