.section .data
	.global num
	
.section .text
	.global check_num # int check_num(void)
	check_num:


		movl $4, %ecx # return value in ecx
		movl num(%rip), %eax #move num to eax
		cdq
		
		cmp $0, %eax
		jl is_negative 
		jmp is_positive
	
	is_negative:
		jmp check_even

	is_positive:
		addl $2, %ecx # add 2 to return value
		jmp check_even
	
	check_even:
		movl $2, %r10d
		idivl %r10d # divide num by 2, remainder in edx
		
		cmp $0, %edx
		
		je is_even # if remainder of division by 2 is zero
		jmp is_odd # if remainder of division by 2 is not zero
		
	is_even:
		movl %ecx, %eax
		jmp end
	
	is_odd:
		incl %ecx # add 1 to return value
		movl %ecx, %eax
		jmp end
  end:
  ret