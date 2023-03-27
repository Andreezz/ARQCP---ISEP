.section .data


.section .text
	.global count_bits_one
	count_bits_one:
		pushq %rbx
		movq $0, %rax
		movq $0, %rcx
		
	loop:
		cmpl $32, %ecx
		je end
		movl %edi, %ebx
		AND $1, %ebx
		cmpl $1, %ebx
		je isOne
		addl $1, %ecx
		SAR %edi
		jmp loop
		
	isOne:
		addl $1, %eax
		addl $1, %ecx
		SAR %edi
		jmp loop
	
	end:
		popq %rbx
		ret

	.global vec_count_bits_one
	vec_count_bits_one:
		pushq %rbx
		movq $0, %rax
		movq $0, %rbx
		
	vecLoop:

		cmpl $0, %esi
		je vecEnd

		movzwl (%rdi), %edx
		
		pushq %rbx
		pushq %rdi

		movl %edx, %edi

		call count_bits_one

		popq %rdi
		popq %rbx

		addw %ax, %bx
		subl $1, %esi
		addq $2, %rdi
		jmp vecLoop
		
	vecEnd:
		movw %bx, %ax
		popq %rbx
		ret