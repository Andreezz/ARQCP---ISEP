.section .data
	
.section .text
	.global test_equal			#test_equal(char *a, char *b)
	
test_equal:
	#prologue
	pushq %rbp    
	movq %rdi, %r8                 #move o 1º parâmetro da função para r8
  movq %rsi, %r9                 #move o 2º parâmetro da função para r9
	
#-----------------------------------------------------------------------


	movq $1, %rax			          	#coloca 1 em rax (strings iguais por definição)
	
loop:	
	movb (%r8), %dl		            #coloca o primeiro carater em dl
	movb (%r9), %cl			          #coloca o segundo carater em cl
	
	cmpb $0, %dl				          #verifica se o carater é 0 (se acabou a string r8)
	je checkLength			        	#salta para checkLength para ver se a primeira string já acabou
	
	cmpb %dl, %cl				          #compara ambos os carateres
	jne notEqual			          	#se forem diferentes, salta para notEqual
	addq $1, %r8 			          	#senão, avança para o próximo carater da string em r8
	addq $1, %r9			           	#avança para o próximo carater da string em r9
	jmp loop					            #salta para a próxima iteração do loop
	
notEqual:
	movq $0, %rax			            #coloca 0 em eax (strings diferentes)
	jmp fim					            	#termina o programa

checkLength:
							                	#se a primeira string acabou, verifica se a segunda também acabou
	cmpb $0, %cl			          	#verifica se o carater é 0 (se é fim da string r9)
	jne notEqual				          #se for diferente, salta para notEqual
	jmp fim						            #termina o programa 
	
#-----------------------------------------------------------------------
fim:
	#epilogue 
	movq %r9,  %rsi  
  movq %r8,  %rdi 
	popq %rbp        
	ret