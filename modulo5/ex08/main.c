
#include <stdio.h>
#include <string.h>
#include "asm.h"

int main(void)
{

        s2 s;

    short vw[3] = {1, 2, 3};
    int vj = 4;
    char vc[3] = {'a', 'b', 'c'};

    fill_s2(&s, vw, vj, vc);

    printf("c[0] = %c, c[1] = %c, c[2] = %c\n", s.c[0], s.c[1], s.c[2]);
    printf("w[0] = %d, w[1] = %d, w[2] = %d\n", s.w[0], s.w[1], s.w[2]);
    printf("j = %d\n", s.j);
 
     
    
    
	return 0;
}
