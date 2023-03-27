.section .text
	.global mixed_sum
	.global join_bits

mixed_sum:

	movl $0, %ecx

	pushq %rdi
	pushq %rsi
	pushq %rdx
	pushq %rcx

	call join_bits

	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi

	addl %eax, %ecx

	pushq %rdi
	pushq %rsi
	pushq %rdx
	pushq %rcx

	movl %edi, %r8d
	movl %esi, %edi
	movl %r8d, %esi

	call join_bits

	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi

	addl %eax, %ecx

	movl %ecx, %eax
	ret

join_bits:
	movl $0, %r8d
	movl $0, %r9d
	movl $1, %eax # maskA
	movl $0xffffffff, %ecx # maskB

	maskA:
		cmpl %r8d, %edx
		je maskB

		shll $1, %eax 
		incl %eax

		incl %r8d
		
		jmp maskA

	maskB:
		xorl %eax, %ecx
	
	pushq %rdi
	pushq %rsi

	andl %eax, %edi
	andl %ecx, %esi

	orl %edi, %esi

	movl %esi, %eax

	popq %rsi
	popq %rdi

	ret