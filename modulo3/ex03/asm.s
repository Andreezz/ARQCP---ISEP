.section .data
	.global ptr1
	.global ptr2

.section .text
	.global str_copy_porto2

str_copy_porto2:

    movl $0 , %eax

    movq ptr1(%rip),%rdi
    movq ptr2(%rip),%rsi

loop:
    movb (%rdi), %cl
    movb %cl, (%rsi)

    cmpb $0 , %cl
    je end

    cmpb $'o', %cl
    je mov_o_min

    cmpb $'O', %cl
    je mov_O_max

    incq %rsi
    incq %rdi

    jmp loop

    mov_o_min:
    movb $'u', (%rsi)
    incq %rsi
    incq %rdi

    jmp loop


    mov_O_max:
    movb $'U', (%rsi)
    incq %rsi
    incq %rdi
    jmp loop

end:

ret

