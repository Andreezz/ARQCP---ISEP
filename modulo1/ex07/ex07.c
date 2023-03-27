#include <stdio.h>

void array_sort1(int *vec, int n)
{

    for (int i = 0; i < n; i++)
    {
        for (int j = i + 1 ; j < n; ++j)
        {
            if(*(vec + i) > *(vec + j)){
                int asc = *(vec + i);
                *(vec + i) = *(vec + j);
                *(vec + j) = asc;
            }
        }
        
    
        }

     printf("The numbers arranged in ascending order are given below \n");
        for (int i = 0; i < n; i++)
        {
            printf("\n %d \n", *(vec+i));    
        
    }

}