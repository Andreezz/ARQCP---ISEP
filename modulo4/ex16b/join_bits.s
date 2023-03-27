.section .data

.section .text
	.global join_bits
	join_bits:
		pushq %rbx
		movq $0, %rbx
		movq $0, %r8
		movb %dl, %cl
		SHR %cl, %esi
		addl $1, %edx
		movb $1, %cl
		
	loopB:
		cmpl %ebx, %edx
		je continue
		ORl $0, %esi
		SHL %cl, %esi
		addl $1, %ebx
		movl %esi, %eax
		jmp loopB
		
	continue:
		movl %edi, %r9d
		ANDl $1, %r9d
		OR %r9d, %r8d
		subl $1, %edx
		
	loopA:
		cmpl $0, %edx
		je end
		SHL %cl, %r8d
		SHR %cl, %edi
		movl %edi, %r9d
		ANDl $1, %r9d
		OR %r9d, %r8d
		subl $1, %edx
		jmp loopA
		
	end:
		OR %r8d, %esi
		movl %esi, %eax
		popq %rbx
		ret