#include <stdio.h>
#include "asm.h"

int A = 2;
int B = 2;

int main(void) {

	int opt=0;
	int result=0;
	
	printf("Choose wich operation do you want: \n");
    printf("* 1 - Sum\n");
    printf("* 2 - Sub\n");
    printf("* 3 - Mult\n");
    printf("* 4 - Div\n");
    printf("* 5 - Mod\n");
    printf("* 6 - Power x by 2\n");
    printf("* 7 - Power x by 3\n");
    printf("Number: ");
    scanf( "%d", &opt);

    if(opt == 1){
        result = sum();
        printf("Result : %d \n", result);
    }else if(opt == 2){
        result = sub();
        printf("Result : %d \n", result);
    }else if(opt == 3){
        result = mul();
        printf("Result : %d \n", result);
    }else if(opt == 4){
        result = div();
        printf("Result : %d \n", result);
    }else if(opt == 5){
        result = mod();
        printf("Result : %d \n", result);
    }else if(opt == 6){
        result = power1();
        printf("Result : %d \n", result);
    }else if(opt == 7){
        result = power2();
        printf("Result : %d \n", result);
    }else{
        printf("You need to insert a valid number! \n");
    }

  return 0;
}
