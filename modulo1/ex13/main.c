#include <stdio.h>
#include "ex13.h"
int main() {
    char str[] = "Puts Loco";  //6 e 8
    char *pstr = str;
    char c = 'o';
    int p[20];
    int *pp = p;
    int count = where_is(pstr, c, pp);
    for (int i = 0; i < count; i++) {
        printf("%d ", *(p+i));
    }
    return 0;
}