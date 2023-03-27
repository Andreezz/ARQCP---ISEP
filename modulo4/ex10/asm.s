.section .data


.section .text
	.global incr
	incr: 
		pushq %rbx
		
		movswl (%rdi), %eax
		movl %eax, %ebx
		movsbl %sil, %ecx
		addl %ecx, %ebx
		movw %bx, (%rdi)	
		popq %rbx
		ret
		
		
	.global call_incr
	call_incr:
		pushq %rbp
		movq %rsp, %rbp
		subq $6, %rsp
		
		pushq %rdx 
		movq $0, %rdx
		movq $0, %rax 
		
        movw %di, %r10w
        addw $3, %r10w

		movw %r10w, -2(%rbp)
		leaq -2(%rbp), %rdi
		movb $0xC3, %sil
		call incr
		movswl -2(%rbp), %ecx
		addl %ecx, %eax
		
		
		popq %rdx

		movq %rbp, %rsp
		popq %rbp
		ret