.section .data
.global ptrvec
.global num

.section .text
.global keep_positives


keep_positives:
		
	movq ptrvec(%rip),%rsi			# Endereço em '%RSI'
	movzwq num(%rip),%rcx			# Iterações em '%RCX'
	movw $0,%ax					# index = 0
	
	cmpq $0,%rcx					# Size = 0?
	jz end
	
arr_loop:
	
	cmpw $0,(%rsi)					# Verifica se o número é negativo
	jl negative
	
	jmp continuation


negative:
	
	movw %ax,(%rsi)				# Index para o apontado
	jmp continuation

continuation:
	
	addq $2,%rsi					# Próximo número
	incw %ax						# index++

	loop arr_loop
	
end:
	ret


