.section .text

.global  fill_s1

fill_s1:

    movb %dl, 0(%rdi)
    movl %esi, 4(%rdi)
    movb %r9b, 8(%rdi)
    movl %ecx, 12(%rdi)
    
ret