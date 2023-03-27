#include <stdio.h>
#include "asm.h"

char arr[5] = {1,2,3,4,5};
char* vec = arr;


int main(void) {
	printf("%d\n\n", count_odd(vec, 5));
	return 0;
}