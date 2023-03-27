.section .data
    .global op1
    .global op2


.section .text
    .global test_flags #char test_flags()

test_flags:

    movl op1(%rip), %eax
    movl op2(%rip), %ecx

    addl %ecx, %eax

    jc jumpCarry
    jo jumpOverflow

    movl $0, %eax
    jmp end

    jumpCarry:

    movl $1, %eax
    jmp end

    jumpOverflow:

    movl $1, %eax

    end:
    ret