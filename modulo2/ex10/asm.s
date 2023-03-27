.section .data
	.global op1		#32bit variable
	.global op2		#32bit variable
  .global op3		#32bit variable
	
	
.section .text
	.global sum3ints		#long long sum3ints(void)
	

sum3ints:
	
	
	movslq	op1(%rip), %rax	#place op1 in rax
	movslq	op2(%rip), %rdx	#place op2 in rdx
  movslq  op3(%rip), %rcx #place op3 in rcx
	addq %rdx, %rax	        #sum op1 and op2 
	addq %rcx, %rax         #sum op2 and op3

  #Now the value is in 64bit since we moved all the variables first to quad
	
	
	ret
	
