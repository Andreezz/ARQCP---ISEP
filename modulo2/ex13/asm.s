.section data
    .global length1
    .global length2
    .global height
    .equ const, 2

.section .text
.global getArea # int getArea()
getArea:
    movl length1(%rip), %eax # place length1 in eax
    movl length2(%rip), %ecx # place length2 in ecx
    movl height(%rip), %edx # place height in edx
    movl $const, %r8d # place const in r8d
    addl %ecx, %eax # add ecx to eax
    mull %edx # mult edx to eax
    divl %r8d # div the result of the previous opp with r8d, and stores the quotient in eax
    ret