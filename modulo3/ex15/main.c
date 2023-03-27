#include <stdio.h>
#include "asm.h"

long *ptrvec;
int num;

int main(){

	long array[] = {127,127,127,127};
	num = 4;
	ptrvec = array;
	
	int result = sum_first_byte();
	printf("Sum is %d\n", result);

	return 0;
}
