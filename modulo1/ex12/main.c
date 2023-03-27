#include <stdio.h>
#include "ex12.h"

int main(){

    char word[]="hello world";

    printf("Before --> %s\n",word);
    capitalize(word);
    printf("After --> %s\n",word);

    return 0;
}