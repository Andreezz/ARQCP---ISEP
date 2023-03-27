.section .text
	.global count_odd

count_odd:
	movl $0, %eax
	pushq %rax

loop:
	cmpl $0, %esi
	je end
	
	movsbl (%rdi), %eax
	cdq
	movl $2, %ecx
	idivl %ecx , %eax
	
	addq $1, %rdi
	decl %esi
	
	cmpl $0, %edx
	je loop
	
	popq %rax
	incl %eax
	pushq %rax
	jmp loop

end:
	popq %rax
	ret
