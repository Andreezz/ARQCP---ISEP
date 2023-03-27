#include <stdio.h>
#include "asm.h"

int main(){

    s1 s;
	
	s1* ptr = &s;
	
	fill_s1(ptr, 1, 3, 4, 5);
	
    printf("\n|------|\n");
	printf("|  %hhd   |", ptr->c);
    printf("\n|------|\n");
    printf("|  %d   |", ptr->i);
    printf("\n|------|\n");
    printf("| %hhd  |", ptr->d);
    printf("\n|------|\n");
    printf("|  %d   |", ptr->j);
    printf("\n|------|\n");
    return 0;
}