.section .data
	.global ptr1

.section .text
	.global seven_count

seven_count:

    movl $0 , %eax
    movq ptr1(%rip), %rdi

    loop:
    cmpb $0 , (%rdi)
    je end

    cmpb $'7', (%rdi)
    jne Seven
    incl %eax

    Seven:
    incq %rdi
    jmp loop


    end:
ret

