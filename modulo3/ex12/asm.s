.section .data

	.global ptrvec		# int*
	.global num			  # int
	
.section .text

	.global vec_zero	# int
	
vec_zero:
	
	movl $0, %eax					      	# mete o registo %eax igual a 0 pois %eax é o contador que retorna o número de elementos do vetor mudados
	movq ptrvec(%rip), %rdi				# copia o valor de ptrvec no registo %rdi
	movl num(%rip), %r8d				  # copia o valor de num no registo %r8d
	
	check_short:
	
	cmpl $0, %r8d						      # compara %r8d a 0 
	jle end								        
	
	cmpl $100, (%rdi)					    # compara 100 ao valor apontado por %rdi
	jge put_to_zero						    # caso o valor apontado por %rdi seja igual ou maior que 100 salta para put_to_zero
	addq $4, %rdi						      # adiciona 4 a %rdi para incrementar o apontador
	decl %r8d							        # decrementa %r8d  (número de elementos do vetor)
	jmp check_short						    # volta para check_short para verificar o próximo short int inserido no vetor
	
	put_to_zero:
	
	movl $0, (%rdi)						# muda o valor apontado por %rdi para 0
	addq $4, %rdi						# adiciona 4 a %rdi para incrementar o apontador
	decl %r8d							# decrementa %r8d (número de elementos do vetor)
	incl %eax					     	# incrementa o contador pois mais um elemento do vetor foi mudado
	jmp check_short						# volta para check_short para verificar o próximo short int inserido no vetor
	
	end:
	ret
