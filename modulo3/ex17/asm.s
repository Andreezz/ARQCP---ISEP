.section .data
	.global ptrvec
	.global num
	
.section .text
	.global array_sort			   
array_sort:					

	movq ptrvec(%rip), %rsi								
	movl num(%rip), %r8d	
loop:
	cmpl $0, %r8d
	je end
	movq %rsi, %r9
	movl %r8d, %edi
	
prog:
	decl %edi
	cmpl $0, %edi
	je change
	
	addq $2, %r9
	movq $0, %rdx
	movq $0, %rax
	movw (%r9), %dx
	movw (%rsi), %ax
	
	cmpw %dx, %ax
	jg prog
	
	movw %dx, (%rsi)
	movw %ax, (%r9)
	
	jmp prog
	
	
change:
	addq $2, %rsi
	decl %r8d
	
	jmp loop
	
end:
	       
	ret
