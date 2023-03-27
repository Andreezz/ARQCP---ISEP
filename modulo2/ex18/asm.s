.section .data
	.global A
	.global B
	.global i
	.global sum
	
A: 
	.int 2

B:
	.int 2
	
sum:
	.int 0
	
	
.section .text
.global function

function:
movslq i(%rip), %rdi
movslq A(%rip), %rax
movslq B(%rip) , %rcx
movslq sum(%rip), %r8
movslq n(%rip), %rsi

loop:

cmpq $2 , %rsi      #n não pode ser maior do que 2
jg jump_if_great	#salta se for maior que 2

movq %rdi, %r9 		#Como o i vai ser incrementado temos de o meter noutro registo
imulq  %r9, %r9		##i²	

movq %rax, %r10     #Como o A não irá ser mudado temos de o meter noutro registo
imulq %r10,%rax		#A²

imulq %r9,%rax     #i²*A²

	
cdq
idivq %rcx         #divisão com rax


addq %rax,%r8     #sum = sum + rax


incq %rsi		#incrementa n
incq %rdi		#incrementa i

jmp loop		#volta a loop


jump_if_great:
movq %r8, %rax 	#move o valor da soma para o endereço rax para o retorno
ret



	 	
		
		
	 	
        
	 	
	 	
	 	
	
