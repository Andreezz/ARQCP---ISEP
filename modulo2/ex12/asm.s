.section .data
    .global A
    .global B


.section .text
     .global isMultiple           #char isMultiple()


isMultiple:



    movl A(%rip), %eax    #place A in eax
    cdq

    movl B(%rip), %ecx    #place B in ecx
    cmpl $0, %ecx         #check if divisor is zero
   
    je isEqual

    idivl %ecx

    cmpl $0, %eax         #check if quociente is negative
  
    jl isLess

    cmpl $0, %edx         #check if remainder is 0
    je isZero

    movl $0, %eax
    jmp end


isEqual:
    movl $0, %eax
    jmp end

isLess:
    movl $1, %eax    #resultado negativo
    jmp end

isZero:
    movl $1, %eax    #se der resto 0


end:

    ret
  

