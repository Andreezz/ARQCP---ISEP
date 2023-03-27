.section .data
	
.section .text  
	.global sum_smaller		  	# int sum_smaller(int num1, int num2, int *smaller)
	
sum_smaller:
	
	

	movl $0, %eax			      				# coloca 0 em rax (soma = 0)
	
	addl %edi, %eax				  				# soma o 1º parâmetro a rax (rax=rax+r8)
	addl %esi, %eax			  					# soma o 2º parâmetro a rax (rax=rax+r9)
	
	# colocar o menor valor no apontado

	cmpl %edi, %esi	  							# compara r8 com r9
	jge Maior			  					      # salta para Maior se o 1ºP > 2ºP
	jmp Menor      									# salta para Menor se o 2ºP > 1ºP

Menor:
	movl %esi, (%rdx)	    					# coloca o 1ºP no apontado por r10
	jmp end					      					# termina o programa
	
Maior:
	movl %edi, (%rdx)		  					# coloca o 2ºP no apontado por r10
	jmp end					      					# termina o programa


end:


        ret