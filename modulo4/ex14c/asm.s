.section .data	
		
.section .text
		.global reset_2bits
reset_2bits:
		pushq %rdi
		pushq %rsi
		call reset_bit
		popq %rsi
		popq %rdi
		movl $31,%ecx
		subl %esi,%ecx
		movl %ecx,%esi
		call reset_bit
		ret
			
		.global reset_bit
reset_bit:
		movl $0,%eax
		movslq (%rdi),%r8
		movl %esi,%ecx
		incl %ecx
		shrq %cl,%r8
		jnc else
		movb $0b00000001,%dl		#create one byte with the fist bit 1 and aall the others 0
		movzbq %dl,%rdx
		movl %esi,%ecx
		shlq %cl,%rdx		#shift the bit 1 to the left cl times
		xorl %edx,(%rdi)		#bitwise operator xor
		incl %eax
else:
		ret	
