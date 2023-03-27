#include "ex17.h"
#include <string.h>
void swap(int* vec1, int* vec2, int size) {
    int tem[size];
    memcpy(tem, vec2, size*4);
    memcpy(vec2, vec1, size*4);
    memcpy(vec1, tem, size*4);
    }