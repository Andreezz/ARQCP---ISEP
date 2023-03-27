int sum_multiples_x(char *vec, int x){
	int total = 0;
	char temp = 0;
	temp = (x>>8) | temp;
	
	for(int i=0;vec[i]!='\0';i++){
		if(vec[i]%temp==0){
			total+=vec[i];
		}
	}
	
	return total;
	
}