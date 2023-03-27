#include <stdio.h>
#include "asm.h"


int main(){
	
short array[] = {-1};	
	short *ptr = array;
	int res = vec_count_bits_one(ptr, 1);
	printf("result = %d\n",res);

    return 0;
}