.section .data
	.global ptrvec
	.global num
	
.section .text
	.global sum_first_byte
	
sum_first_byte:

	
	movl $0,%edx
	movl $0,%eax
	movq ptrvec(%rip),%rdi
	movl num(%rip), %r8d
	
	cmpl $0, %r8d
	je end

loop:
	
	cmpl num(%rip),%edx
	je end
	
	movl (%rdi),%ecx
	movsxb %cl, %esi
	addl %esi,%eax
	
	addq $8, %rdi
	incl %edx
	
	jmp loop
	
end:

	ret
