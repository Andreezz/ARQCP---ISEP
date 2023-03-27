#include <stdio.h>
#include "asm.h"

char* ptr1;

int main() {

char vec[]="arqcp test";

ptr1=vec;
printf("Vec Before -> %s\n",ptr1);
int x= encrypt();

printf("Número de carateres trocadas:%d\n",x);
printf("Vec After -> %s\n",ptr1);

	return 0;
}
