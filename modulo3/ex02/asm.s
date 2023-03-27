.section .data
	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto

str_copy_porto:

movq ptr1(%rip), %rdi 
movq ptr2(%rip), %rsi

loop:
movb (%rdi), %cl


cmpb $0 , %cl
je end

cmpb $117, %cl #comparo o valor com u 
je is_u
jne not_u

jmp loop

is_u:
movb %cl , (%rsi) #se for u não altero
incq %rsi
incq %rdi
jmp loop

not_u:
cmpb $111, %cl #se não for u pode ser o ou qualquer outra letra 
je is_o
jne not_o

is_o:
movb $117, %cl #se for o traca-se para u
movb %cl ,(%rsi)
incq %rsi
incq %rdi
jmp loop

not_o:
movb %cl, (%rsi) #se for uma letra qualquer continua na mesma
incq %rsi
incq %rdi
jmp loop

end:
movb %cl, (%rsi) #quando o acabar o array mete o 0
ret
