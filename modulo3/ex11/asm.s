.section .data
	.global ptrvec
	.global num
	
.section .text
	.global vec_greater10			    #short* vec_greater10(void)
	
vec_greater10:
	
	movq ptrvec(%rip), %rdi						#coloca pointer ptrvec em rdi
	movl num(%rip), %ecx						#coloca num(Qtd elementos) em ecx
	cmpl $0, %ecx								#verifica se num=0 (se vetor nao tem elementos)
	je vazio									#se sim, salta para vazio
	movl $0, %eax								#se nao, limpa o registo eax e segue para loop

loop:
	cmpl $0, %ecx								#verifica se ecx(num) é zero. (ecx vai ser decrementao a cada iteracao)
	je end										#se sim, salta para o fim
	
	decl %ecx									#decrementa ecx
	movl (%rdi), %edx							#move o apontado por ecx, para edx
	cmpl $10, %edx								#verifica se edx > 10
	jg maiorQue10								#se sim, salta para maiorQue10
	addq $4, %rdi								#avança para o proximo elemento no array
	jmp loop									#salta para loop
	
maiorQue10:
	incl %eax									#incrementa a quantidade de elementos maiores que 20
	addq $4, %rdi								#avança para o proximo elemento no array long
	jmp loop									#salta para loop
	
vazio:
	movl $0, %eax								#coloca 0 em eax
	jmp end										#salta para o fim

end:      
	ret


