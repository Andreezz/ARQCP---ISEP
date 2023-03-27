#include <stdio.h>
#include "asm.h"
char C = '4'; //Variável de 8 bits
char D = '5'; //Variável de 8 bits
short B = 0; //Variável de 16 bits
int A = 0; //Variável de 32 bits

int main(){

	long r = sum_and_subtract();
	
	printf("%ld \n", r);

    return 0;
}