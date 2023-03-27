#include <stdio.h>
#include "asm.h"

long even;
long* ptrvec;
int num;


int main() {
	

long vec1[]={2,2,2,2,2};
num=5;
ptrvec = vec1;

long res2= vec_sum_even();
printf("Resultado: %ld\n", res2);
	
	
return 0;

}