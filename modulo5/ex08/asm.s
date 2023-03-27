.section .data

.section .text
	.global fill_s2 				

fill_s2:
	movq $0, %r10
	movq $3, %rax					

loop_count:
	cmpq %rax, %r10					
	je reset
	
	movb (%rcx, %r10, 1), %r9b		# move array char vc[3] to %r9b , %rcx is the parameter, %r10 is the counter, 1 is the size
	movb %r9b, (%rdi, %r10, 1)		# move that array to the array of the structure
	incq %r10						
	jmp loop_count
	
reset:	
	movq $0, %r10					

short_loop:
	cmpq %rax, %r10
	je end
	
	movw (%rsi, %r10, 2), %r9w		
	movw %r9w, 4(%rdi, %r10, 2)		
	incq %r10						
	jmp short_loop
	
	
end:
	movl %edx, 12(%rdi)		
	
ret