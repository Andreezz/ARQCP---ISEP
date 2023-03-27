#include <stdio.h>
#include <stdlib.h>
#include "ex11.h"

int main(){
    int u =0;
	int lines = 2;
	int columns = 2;

	int **ptr = new_matrix(lines, columns);

    printf("\n|--------------------------------------------|\n");
	printf("|Resultado_endereço_matrix --> %p|", ptr);
    printf("\n|--------------------------------------------|\n");

	for (u = 0; u < lines ; u ++){
		free (*(ptr+u) );
	}
	free(ptr);
	return 0;

}