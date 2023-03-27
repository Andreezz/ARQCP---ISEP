.section .data
	.global ptr1
	
	
.section .text
	.global encrypt
	
encrypt:


movl $0 , %eax
movq ptr1(%rip), %rdi


loop:
movb (%rdi), %cl
cmpb $0 , %cl
je end

cmpb $97, %cl #se for a passa para o proximo elemento
je nextElement

cmpb $32, %cl #se for espaço passa para o proximo elemento
je nextElement

addb $3, %cl  #adicionar 3 aos caracteres que não são espaço nem 'a' para fazer encriptação
movb %cl, (%rdi)
incl %eax     #o registo eax está a funcionar como contador 




nextElement:

incq %rdi    #neste caso apenas é preciso sumar 1 ao array devido ao facto de ser um array de char
jmp loop



end:
ret	
