.section .data

	.global ptrvec			# int *
	.global num				# int
  .global x
	
.section .text

	.global vec_diff		# int


vec_diff:

movq ptrvec(%rip), %rsi
movl num(%rip), %ecx
movl $0, %eax
cmpl $0, %ecx
je end
movl $0, %edx
movl $0, %r9d

loop:
cmpl %edx, %ecx
je move

movl (%rsi), %r11d
pushq %rdx
pushq %r9
pushq %rcx
movl %r11d, x(%rip)
call exists
popq %rcx
popq %r9
popq %rdx

cmpl $0, %eax
je no_duplicate
incl %edx
addq $4, %rsi
jmp loop

no_duplicate:
incl %r9d
incl %edx
addq $4 , %rsi
jmp loop

move:
movl %r9d, %eax

end:

ret
