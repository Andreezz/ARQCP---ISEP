int sum_even(int *ptr, int num){

int sum = 0;

for (int i = 0; i < num ; i++)
{
   if(*ptr % 2 == 0){
    
    sum += *ptr;

   }

ptr++;

}

return sum;

}