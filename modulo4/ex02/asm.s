
.section .text

.global sum_n2

sum_n2:
	movl $0, %ecx         # RESULT	



	contas:
  
	movq $0, %rax
	cmpl $0, %edi       	# verifica se o paramtro é <= 0

	jle end

  movq %rdi, %rax       # para puder multiplicar
	mulq %rdi
	addq %rax, %rcx
	decl %edi

	

	jmp contas
	


end:
movq %rcx, %rax
	

	ret
	