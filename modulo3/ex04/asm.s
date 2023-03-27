.section .data
	.global num
	.global ptrvec
	
.section .text
	.global vec_add_two
	
vec_add_two:
	vec_add_one:
	
		movq ptrvec(%rip), %rax
		movl $0, %ecx 
	
	loop:
		cmpl num(%rip), %ecx #comparo o num com contador a 0
		je end
	
		movl (%rax), %edx #passo o valor atual do array
		addl $2 , %edx    #adiciono-lhe 2
		movl %edx, (%rax) #o novo valor é passado de volta para o array
		incl %ecx         #aumento o contador
		
		addq $4, %rax    #como é um apontador de inteiros devemos de somar 4 para passar para o proximo valor
		jmp loop
	
	
	end:
	
		ret