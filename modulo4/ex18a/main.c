#include <stdio.h>
#include "asm.h"
	
int main(void)
{
	int num = 46;
	int* ptr = &num;
	
	changes(ptr);
	
	return 0;
}

