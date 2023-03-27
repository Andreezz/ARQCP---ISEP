#include <stdio.h>
#include "join_bits.h"



int main(void){
	
	
	int res=mixed_sum(1,-1,15);
	int test1=join_bits(1,-1,15);
	int test2=join_bits(-1,1,15);
	printf("%d + %d = %d\n",test1,test2, test1+test2);
	printf("%d\n",res);
	
}