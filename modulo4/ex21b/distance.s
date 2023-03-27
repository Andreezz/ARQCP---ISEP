.section .data

.section .text
    .global distance
distance :

    movl $0, %eax
    loop:
      cmpb $0, (%rdi)
      je endString1

      cmpb $0, (%rsi)
      je differentSize

      movb (%rdi), %r8b
      movb (%rsi), %r9b
      incq %rsi
      incq %rdi

      cmp %r8b, %r9b
      jne addCounter
      jmp loop

    endString1:
      cmpb $0, (%rsi)
      jne differentSize
      jmp end

    differentSize:
      movl $(-1), %eax
      ret

    end:
      ret

    addCounter:
      incl %eax
      jmp loop
