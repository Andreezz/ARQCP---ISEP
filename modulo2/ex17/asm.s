.section .data
	.global A
	.global B
	
.section .text
	 	.global sum
	 	.global sub
	 	.global mul
	 	.global div
	 	.global mod
	 	.global power1
	 	.global power2
	 	
	 	sum:
	 	movl A(%rip), %eax              #mover A(32bits) para eax
	 	addl B(%rip), %eax				#A = A + B
	 	
	 	ret
#-----------------------------------------
	 	sub:
	 	movl A(%rip), %eax				#mover A(32bits) para eax
	 	subl B(%rip), %eax				#A = A - B
	 	
	 	ret
#-----------------------------------------
	 	mul:
	 	movl A(%rip), %eax				#mover A(32bits) para eax
	 	movl B(%rip) ,%ecx				#mover B(32bits) para ecx
	 	
	 	imull %ecx, %eax				#A = A * B
	 	
	 	ret
#-----------------------------------------
	 	div:
	 	movl $0, %edx					#mover 0 para edx
	 	movl $0 , %eax					#mover 0 para eax
	 	
	 	movl A(%rip), %eax				#mover A(32bits) para eax
	 	movl B(%rip), %ecx				#mover B(32bits) para ecx
	 	cmpl $0, %ecx					#ver se ecx está com zero ou não
	 	
	 	je equal						#ver se é igual
	 	idivl %ecx , %eax				#A = A/B
	 	jmp end
	 	
	 	
	 	equal:							#se for igual
	 	movl $0 , %eax					#move 0 para eax
	 	
	 	end:
	 	ret
#-----------------------------------------
        mod:
	 	movl $0, %edx					#mover 0 para edx
	 	movl $0 , %eax					#mover 0 para eax
	 	
	 	movl A(%rip), %eax				#mover A(32bits) para eax
	 	movl B(%rip), %ecx				#mover B(32bits) para ecx
	 
	    idivl %ecx						#divider ecx
	    movl %edx, %eax					#mover edx para eax
	 	
	 	
	 	ret
#-----------------------------------------
		power1:
		movl A(%rip), %eax				#mover A(32bits) para eax
		imull A(%rip), %eax				#multiplicar o A por ele próprio
		
		ret
#-----------------------------------------	
		power2:
		movl A(%rip), %eax				#mover A(32bits) para eax
		imull A(%rip), %eax				#multiplicar o A por ele próprio
		imull A(%rip), %eax				#multiplicar o A por ele próprio
		ret
		
	 	