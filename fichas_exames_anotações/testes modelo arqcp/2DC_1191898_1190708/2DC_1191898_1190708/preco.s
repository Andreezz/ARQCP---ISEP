.section .data

.global produto              #Variável de 32 bits que representa o número correspondente do produto
.global produto_quantidade   #Variável de 32 bits que representa o número de unidades existentes desse produto

.section .text
.global calcule_preco

# int calcule_preco()


calcule_preco:

  #prologue 

	pushl 	%ebp 
	movl 	%esp, %ebp
	pushl 	%ebx


   #body of the function

	movl 	produto, %ebx               #move o valor do produto para um registo
	movl	produto_quantidade, %ecx    #move o valor do numero de quantidades desse produto para outro registo
	
	cmpl 	$1, %ebx                    #Verifica se o valor do produto é 1 e em caso afirmativo salta para tres_por_unidade
	jmp tres_por_unidade
	
	cmpl 	$2, %ebx                    #Verifica se o valor do produto é 2 e em caso afirmativo salta para cinco_por_unidade
	jmp cinco_por_unidade
	
	cmpl 	$3, %ebx                    #Verifica se o valor do produto é 3 e em caso afirmativo salta para dez_por_unidade
	jmp dez_por_unidade
	
	movl $0, %eax                       #Caso não seja nenhum dos anteriores, então não é produto logo o preço total a retornar deverá de ser 0 e salta para o final
	jmp end
	
	
	tres_por_unidade:
	imull 	$3, %ecx, %eax              #Multiplica por três o numero total de produtos pois cada um equivale a 3 euros e salta para o final para retornar o preço total
	jmp end
	
	cinco_por_unidade:
	imull 	$5, %ecx, %eax              #Multiplica por cinco o numero total de produtos pois cada um equivale a 5 euros e salta para o final para retornar o preço total
	jmp end
	
	dez_por_unidade:
	imull 	$10, %ecx, %eax             #Multiplica por dez o numero total de produtos pois cada um equivale a 10 euros e salta para o final para retornar o preço total
	jmp end

	end:	
   #epilogue
	popl 	%ebx
	movl 	%ebp, %esp
	popl 	%ebp
  
	ret
