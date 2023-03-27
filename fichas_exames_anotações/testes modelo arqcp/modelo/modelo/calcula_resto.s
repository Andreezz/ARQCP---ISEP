.section .data
.global numero_atual
numero_atual:
	.short
.section .text
.global calcula_resto

calcula_resto:

movw $0,%ax
movw $0,%bx
movw $0,%cx
movw $0,%dx

movw numero_atual(%rip), %ax
movw $10, %cx

loop:
	movw $0, %dx
	cdq
	divw %cx, %ax
	addw %dx, %bx
	cmpw $0, %ax
		jg loop
	movw %bx, %ax
	cmpw $9, %ax
		jl end
		je equal
	movw $0,%bx
jmp loop		
equal:
	movw $0, %ax
end:
ret
