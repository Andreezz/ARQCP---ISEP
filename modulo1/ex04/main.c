#include <stdio.h>
#include "ex04.h"

int main(){

    char word[] = "aaaaBBBB";
    printf("Before: %s.\n", word);

    upper1(word);
    printf("After: %s.\n", word);

    return 0;

}