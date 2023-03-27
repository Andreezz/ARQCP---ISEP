.section .data

.section .text
		.global approved_semester

approved_semester:
		movl $0, %eax
		movw (%rdi), %r10w
		movq 8(%rdi),% rsi

		# A função começa movendo o valor 0 para o 
		# registrador EAX, que será usado para armazenar
		# o número de estudantes aprovados. Em seguida, 
		# ela move o número de estudantes para o registrador R10W
		# e o ponteiro para o array de notas individuais 
		# para o registrador RSI.

for:
		cmpw $0, %r10w
		je end
		movw (%rsi), %dx
		movb $16, %r9b
		movb $0, %r8b

		# Em seguida, a função entra em um loop que
		# percorre cada nota indivdual do array. 
		# Se o número de estudantes for igual a zero, o 
		# loop é encerrado com o comando je end. 
		# Caso contrário, a função move a primeira nota 
		# do array para o registrador DX e inicializa os 
		# registradores R9B e R8B com os valores 16 e 0, respectivamente

second_for:
		cmpb $0, %r9b
		je continue
		shrw %dx  # desloca os bits da nota para a direita 
		jnc jump_the_bite # verifica se o bit mais significativo é zero
		incb %r8b

jump_the_bite:	
		decb %r9b
		jmp second_for

continue:	
		decw %r10W
		addq $2,%rsi
		cmpb $10,%r8b
		jl for
		incl %eax
		jmp for

end:
		
ret

