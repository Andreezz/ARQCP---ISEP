#include <stdio.h>
#include "asm.h"

char* ptr1;
char* ptr2;

int main(void) {
	char s1[32] = "Joao Gomes";
	
	
	ptr1 = s1;
	ptr2 = s1;
	
	str_copy_porto2();
	printf("|----------------------------|\n");
    printf("|String1 --> %s\n", ptr1);
	printf("|String2 --> %s\n", ptr2);
	printf("|----------------------------|\n");

	return 0;
}
