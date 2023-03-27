.section .text
    .global inc_and_square

inc_and_square:
    incl (%rdi)
    imul %esi, %esi
    movq %rsi, %rax
    
ret
