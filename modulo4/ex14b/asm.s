.section .data	
		
.section .text
		.global reset_bit
reset_bit:
		movl $0,%eax
		movl (%rdi),%r8d
		movl %esi,%ecx
		incl %ecx
		shrl %cl,%r8d
		jnc else
		movb $0b00000001,%dl #mask
		movzbl %dl,%edx
		movl %esi,%ecx
		shll %cl,%edx  #shift the bit 1 to the left cl times
		xorl %edx,(%rdi)	#bitwise operator xor
		incl %eax
else:
		ret	
