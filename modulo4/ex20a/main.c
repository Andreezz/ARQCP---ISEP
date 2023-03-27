#include <stdio.h>
#include "sum_multiples_x.h"


int main(void){
	int x = 983809;
	char vec[]={3,5,11,12,7,4,0};
	int result = sum_multiples_x(vec,x);

	
	printf("result = %d\n",result);
}