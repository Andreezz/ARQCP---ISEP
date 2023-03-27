#include <stdio.h>
#include "asm.h"

long arr[] = {-2,4,-40};
short num;
long *ptrvec;

int main(){
	
	num = sizeof(arr)/8;
	ptrvec= arr;
	
    printf("|----------------------------|\n");
	printf("|Sum -> %ld\n", vec_sum());
	printf("|Avg -> %ld\n", vec_avg());
    printf("|----------------------------|\n");


	return 0;
	
}