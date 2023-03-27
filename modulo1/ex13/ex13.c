#include <string.h>
#include "ex13.h"

int where_is(char *str, char c, int *p) {
    int contador = 0;
    int size = strlen(str);

    for(int i = 0; i < size; i++)
    {
        if(*(str + i) == c)
        {
            *(p + contador) = i;
            contador++;
        }

    }
    return contador;
}