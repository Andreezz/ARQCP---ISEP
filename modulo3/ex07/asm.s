.section .data


	.global ptr1
	
	

.section .text
	.global decrypt
	.global encrypt

#---------------------------------------
encrypt:
	movl $0, %edx
	movq ptr1(%rip), %rcx
	
first_loop:
	cmpb $0, (%rcx)
	je first_end
	cmpb $97, (%rcx)
	je first_case
	cmpb $32, (%rcx)
	je first_case
	addb $3,(%rcx)
	incl %edx
	incq %rcx
	jmp first_loop
		
first_case:
	incq %rcx
	jmp first_loop
		
first_end:
movl %edx, %eax
ret

#---------------------------------------

decrypt:
	movl $0, %edx
	movq ptr1(%rip), %rcx
	
second_loop:
	cmpb $0, (%rcx)
	je second_end
	cmpb $97, (%rcx)
	je second_case
	cmpb $32, (%rcx)
	je second_case
	subb $3,(%rcx)
	incl %edx
	incq %rcx
	jmp second_loop
second_case:
	incq %rcx
	jmp second_loop
		
second_end:
movl %edx, %eax
ret




