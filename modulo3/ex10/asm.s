.section .data

	.global ptr1		# char*
	.global ptr2		# char*
	.global ptr3		# char*
	
.section .text

	.global str_cat		# void
	
str_cat:

	
	movq ptr1(%rip), %rdi		# copia o valor contido em ptr1 para o registo %rdi
	movq ptr2(%rip), %rsi		# copia o valor contido em ptr2 para o registo %rsi
	movq ptr3(%rip), %rax		# copia o valor contido em ptr3 para o registo %rax
	
	copy_str1:

  movb (%rdi), %r8b       # copia o valor apontado por rdi para o registo r8b
  movb %r8b, (%rax)       # copia o valor que está em r8b para o apontado por rax que neste caso é o nosso apontador 3

  cmpb $0, %r8b           # verifica se chega ao fim do vetor
  je copy_str2

  incq %rdi               # incrementa o ptr1
  incq %rax               # incrementa o ptr3
  jmp copy_str1

  copy_str2:

  movb (%rsi), %r9b       # copia o valor apontado por rsi para o registo r9b
  movb %r9b, (%rax)       # copia o valor que está em r9b para o apontado por rax que neste caso é o nosso apontador 3

  cmpb $0, %r9b           # verifica se chega ao fim do vetor
  je end

  incq %rsi               # incrementa o ptr2
  incq %rax               # incrementa o ptr3
  jmp copy_str2

  end:
  ret 
