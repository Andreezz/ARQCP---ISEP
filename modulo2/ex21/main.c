#include <stdio.h>
#include "asm.h"

short code = 10;                  //variável de 16bits
short currentSalary = 300;        //variável de 16bits

int main(void) {
	
	short r = new_salary();
	
	printf("temperatura variou = %hd\n", r);
	
	return 0;
}
