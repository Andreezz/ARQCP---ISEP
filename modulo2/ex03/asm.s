.section .data
    .global op1
    .global op2 
    .equ CONST, 20

.section .text
    .global sum_v2  #int sum_v2()

sum_v2:
    movl op1(%rip), %ecx   #place op1 in ecx
    movl op2(%rip), %eax   #place op2 in eax
    movl $CONST, %edx      #place CONST in ebx
    addl %ecx, %ecx        #adds exc to itself  
    subl %ecx, %edx        #edx = edx - ecx
    addl %edx, %eax        #eax = eax + edx
    ret
