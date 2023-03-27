.section .data
	.global x				# int
	.global ptrvec 
	.global num
	
.section .text

	.global exists			# int
	
exists:
	 
	 movl x(%rip), %edx
	 movq ptrvec(%rip), %rdi
	 movl num(%rip), %ecx
	 cmpl $0, %ecx
	 je end
	 movl $0, %r8d
	 movl $0, %r10d

	 loop:
	 cmpl %r8d, %ecx
	 je check 
	 cmpl (%rdi), %edx
	 je count
	 addq $4, %rdi
	 incl %r8d
	 jmp loop
	 
	 count:
	 incl %r10d
	 addq $4, %rdi
	 incl %r8d
	 jmp loop

	 check:
	 cmpl $1 , %r10d
	 jg has_dup
	 movl $0, %eax
	 jmp end

	 has_dup:
	 movl $1, %eax
	 jmp end

	 end:
	 ret

			


	
			
