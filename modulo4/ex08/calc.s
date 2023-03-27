.section .data
        z:
          .int 0
.section .text
  .global calc

calc:
#a em %edi, *b em %rsi, c em %edx

movl z(%rip), %r8d
movl $0, %eax
subl $4, %edx
pushq %rdx
call f2
popq %rdx
movl %r8d, %eax
mull %edx
ret





f2:
movl $2, %eax
mull %edi
subl (%rsi),%eax
movl %eax, %r8d


ret


