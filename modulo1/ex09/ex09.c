int sort_without_reps(int *src, int n, int *dest){
    
    int total = 0;
    int temp;
    for(int i = 0; i < n; i++){
        *(dest + i)= *(src + i);
        
        total++;
    }

    for(int i = 0; i < n ; i++){
        for(int j = i + 1; j < n; j++){

            if(*(dest + j) < *(dest + i)){
                temp = *(dest + i);
                *(dest + i) = *(dest + j);
                *(dest + j) = temp;
            }
        }
    }

    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++)
        {
            if(*(dest + i) == *(dest + j))
            {
            for (int k = j; k < n - 1; k++) 
            {
                *(dest + k) = *(dest + k + 1);
            }
            n--;
           j--;

        }
        }
        
    }
    return n;
}