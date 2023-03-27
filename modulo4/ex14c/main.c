#include <stdio.h>
#include "asm.h"



int main(void){
	int number = 1;
	reset_2bits(&number,4);
	printf("number = %d\n",number);
	

}