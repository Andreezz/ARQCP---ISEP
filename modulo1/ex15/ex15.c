#include <stdlib.h>
#include <time.h>
#include "ex15.h"
#include <stdio.h>
int nsets=0;
void exc15(){
    int vector[100];
    int *puts = vector;
    populate(puts, 100, 20);
    for (int i = 0; i < 100; ++i) {
        if (check(*(puts+i), *(puts+i+1), *(puts+i+2)) == 1){
            inc_nsets();
        }
    }
    printf("\nnumero de set--> %d\n",nsets);
}

void populate( int *vec , int num, int limit){
    srand(time(NULL));
    for (int i = 0; i < num; ++i) {
        *(vec+i) = rand() % (limit + 1);
        printf("%d|", *(vec+i));
    }
}

int check ( int x, int y, int z){
    if(x<y && y<z){
        return 1;
    }
    else {
        return 0;
    }

}
void inc_nsets(){
    nsets++;
}