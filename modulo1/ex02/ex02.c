#include "ex02.h"

void copy_vec(int *vec1, int *vec2, int n) {
    for (int i = 0; i < n; i++) {
        // Desta maneira não é boas praticas vec2[i]=vec1[i];
        //*vec2++ = *vec1++;
        *(vec2 + i) = *(vec1 + i);

    }
}