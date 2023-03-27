.section .data


.section .text
	.global calculate
	calculate:
		pushq %rbp 
		movq $0, %rax
		movq %rsp, %rbp
		subq $16, %rsp 
		
		movl %edi, -4(%rbp)
		movl %esi, -8(%rbp)
		
		movl %edi, %eax
		subl %esi, %eax
		movl %eax, -12(%rbp)
	
		movl %edi, %eax
		imull %esi
		movl %eax, -16(%rbp)
	
	
		movl -4(%rbp), %edx
		movl -8(%rbp), %esi
		movb $'-', %dil
		movl -12(%rbp), %ecx
		call print_result
	
		movl -4(%rbp), %edx
		movl -8(%rbp), %esi
		movb $'*', %dil
		movl -16(%rbp), %ecx
		call print_result
	
		movl -12(%rbp), %eax
		subl -16(%rbp), %eax
		
		movq %rbp, %rsp
		popq %rbp
		ret