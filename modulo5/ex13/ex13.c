#include <stdlib.h>
#include <stdio.h>

int **new_matrix(int lines,int columns){
	int **a;
	a=(int **) calloc(lines,sizeof(int *)); //using calloc to reserve a memory block to hold the lines of the matrix
	
	for(int i=0;i<lines;i++){
		*(a+i)=(int *)calloc (columns,sizeof(int));// for each line use calloc to alocate a memory block for the column
		if(a[i] == NULL ){
		printf(" Error reserving memory .\n "); 
		exit (1);
		}
	}

	

	return a;
}
