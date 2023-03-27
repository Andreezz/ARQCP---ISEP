.section .data
.equ STUDENT_ADDRESS_OFFSET, 84

.section .text
.global update_address
   
update_address:


	
#body of the function	
	
	movq %rdi, %rdx						#Student *s
	movq %rsi, %r10						#char *new_address
	movq $0, %rcx
	
	addq $84, %rdx						#OFFSET para chegar a address
	
while:
	movb (%r10), %cl					#1 char para ch
	movb %cl, (%rdx)
	cmpb $0, %cl
	je fim
	incq %r10
	incq %rdx
	jmp while

fim:
	
	
		 
	ret