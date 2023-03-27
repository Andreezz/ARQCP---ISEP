.section .data

	.global ptr1		
	.global ptr2		
	.global num			
	
.section .text

	.global swap		
	
swap:
	movq ptr1(%rip), %rdi		
	movq ptr2(%rip), %rdx	
	movl num(%rip), %r8d		
	
	copy:
	
	cmpl $0, %r8d		
	je end				
	
	movb (%rdi), %ch
	movb (%rdx), %cl	
	movb %ch, (%rdx)	
	movb %cl, (%rdi)	
	decl %r8d			
	incq %rdi			
	incq %rdx			
	jmp copy			
	
	end:
	     
	ret
