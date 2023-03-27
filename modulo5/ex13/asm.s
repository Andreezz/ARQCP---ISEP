.section .data

.section .text
	 .global count_odd_matrix

count_odd_matrix:

	 movl $0, %eax
	 movslq %edx, %r10
	 movslq %esi, %rsi

for:

	 decq %rsi  
	 cmpq $0, %rsi
	 jl final
	 movq (%rdi,%rsi,8), %r9 

second_for:

	 decq %r10
	 cmpq $0, %r10
	 jl continue
	 movl $0x0001 , %ecx
	 andl (%r9 , %r10 , 4), %ecx  
	 cmpl $0x0001,%ecx
	 jne second_for
	 incl %eax
	 jmp second_for

continue:

	 movslq %edx,%r10
	 jmp for

final:

ret

		
