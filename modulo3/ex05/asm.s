.section .data

	.global ptrvec
	.global num

	
.section .text

	.global vec_sum
	.global vec_avg
	
vec_sum:

	movq ptrvec(%rip), %rdx
	movw num(%rip), %cx
	movq $0, %rax

sum_loop:
	cmpw $0, %cx
	jle endsum
	addq (%rdx), %rax
	addq $8, %rdx
	decw %cx
	jmp sum_loop
	
endsum: 
ret


vec_avg:
	movw num(%rip), %cx
	movswl %cx, %r8d
	cmpl $0, %r8d
	jz case0
	call vec_sum
	idivl %r8d
	jmp end
case0:
movq $0, %rax

end:
ret
