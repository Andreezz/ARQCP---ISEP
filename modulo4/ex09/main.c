#include <stdio.h>
#include "asm.h"

void print_result(char op, int o1, int o2, int res){
	printf("%d %c %d = %d\n", o1, op, o2, res);
}


int main(){
	
	int a = 0;
	int b = 0;
	int result;
	
	result = calculate(a,b);
	
	printf("Result: %d \n",result);
	
	
	return 0;
}