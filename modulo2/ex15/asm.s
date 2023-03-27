.section .data
	.global A
	.global B
	.global C
	.global D
	
	
.section .text
	 	.global compute			#int compute()	
	
compute:
     movslq A(%rip), %rax
     movslq B(%rip), %rcx
     imul %rcx
  
     movslq C(%rip), %rcx
     subq %rcx, %rax
 
     cmpq $0, %rax
     je iszero
  

     movslq D(%rip), %rcx
 
     idivq %rcx
  
     iszero:
     movq $0, %rcx
  
	 ret