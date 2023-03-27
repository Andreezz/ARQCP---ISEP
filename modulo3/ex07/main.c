#include <stdio.h>
#include "asm.h"
char* ptr1;

int main() {

char vec[100]="abba";

ptr1=vec;

int x= encrypt();
int y= decrypt();

printf("Número de carateres cryptados --> %d\n",x);
printf("Número de carateres decryptados --> %d\n",y);

	return 0;
}
