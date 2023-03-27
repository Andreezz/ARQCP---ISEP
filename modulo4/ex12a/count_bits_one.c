#include <stdio.h>
int count_bits_one(int x)
{
  int count = 0;
  for (int i = 0; i < 32; i++)
  {
    if ((x & 1) == 1) 
      count++;
    x = x >> 1;
  }

  return count;
}