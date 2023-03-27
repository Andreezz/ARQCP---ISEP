#include<stdio.h>
#include <stdlib.h>
#include"asm.h"

structA **matrix(int a,int b)
{
	structA **c;

	c = (structA **) calloc( a,sizeof(structA *)); 

	for(int i = 0; i < a; i++)
	{

		*(c+i)=(structA *)calloc ( b,sizeof(structA));

	}

	return c;
}


int main(){
	
	unionB uniao;
	uniao.b=1;
	
	structA **matrix2 = matrix(4,3);
	matrix2[1][2].ub= uniao;
	
	char result = return_unionB_b(matrix2, 1, 2);
	
	printf("\n|---|\n");
	printf("| %hhd |",result);
	printf("\n|---|\n");

	//erro 

	for(int i=0;i<4;i++){
		free(*(matrix2+i));
	}
	free(matrix2);
	
	return 0;
}
