
.section .text
    .global cube

cube:
    movslq %edi , %rax
		movslq %edi, %rdi
    mulq %rdi
    mulq %rdi

		

		

end:
   
	ret