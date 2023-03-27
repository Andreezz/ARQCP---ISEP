#include <stdio.h>
#include "asm.h"

int main(void)
{

  int num1=0;
	int num2=3;
	int num4;
	int *smaller=&num4;

	int res=sum_smaller(num1,num2, smaller);

	printf("Result %d and the smallest number is %d\n",res, *smaller);

	

  return 0;
}