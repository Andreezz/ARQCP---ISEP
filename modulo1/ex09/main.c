#include <stdio.h>
#include "ex09.h"
   int main(){
    
    int vec[] = {2,0,7,4,9,1,6,9,10};
    int size= sizeof(vec)/sizeof(vec[0]);
    int vec2[size];
    int total = sort_without_reps(vec, size, vec2);

    printf("First Vec\n");

    for (int i = 0; i < size ; i++ ) {

        printf("%d,", vec[i]);
    }
    printf("\n----------------------");
    printf("\nSecond Vec\n");
    for (int i = 0; i < size ; i++ ) {

        printf("%d,", vec2[i]);
    }
    printf("\n----------------------");   
    printf("\nRepeated numbers --> %d", total);
    printf("\n ");
    return 0;

   }
