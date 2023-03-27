
#include <stdio.h>
#include "asm.h"

int main(void)
{

	int n = 10;
  long resultado = sum_n2(n);

	printf("res = %ld\n", resultado);
	return 0;
}
