.section .data
    .global current
    .global desired
    .global time

.section .text
    .global needed_time # int needed time
needed_time:
    movw current(%rip), %cx
    movw desired(%rip), %dx
    movl $0, %r8d
    cmpw %cx, %dx
    jg desired_greater
    jl desired_lower
    je end
desired_greater:
    addw $1, %cx
    addl $180, %r8d
    cmpw %cx, %dx
    jg desired_greater
    je end
desired_lower:
    subw $1, %cx
    addl $240, %r8d
    cmpw %cx, %dx
    jl desired_lower
    je end
    
end:
    movl %r8d, %eax
    ret
