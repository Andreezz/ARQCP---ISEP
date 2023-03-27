.section .data
.global i
.global j

.section .text
.global f
.global f2
.global f3
# .global f4

f:
movl i(%rip), %eax
movl j(%rip), %edx

cmpl %eax , %edx
je equalF
addl %edx, %eax
subl $1 , %eax
jmp fim


equalF:
subl %edx , %eax
movl $1, %r10d
addl %eax, %r10d
movl $0, %eax
movl %r10d, %eax
jmp fim

fim:

ret

# --------------------------------------------------

f2:
movl i(%rip), %r10d
movl j(%rip), %edx
cmpl %edx , %r10d
jg maior

incl %edx
movl %edx , %eax
mull %r10d
jmp fim2

maior:
decl %r10d
movl %r10d , %eax
mull %edx
jmp fim2


fim2:

ret

# --------------------------------------------------
f3:

movl i(%rip), %r10d
movl j(%rip), %edx
cmpl %edx , %r10d
jge MaiorOuIgual

movl %r10d, %r11d     			
addl %edx, %r11d    				
movl %r11d, %r12d				
addl $2, %r12d      				
jmp fim3


MaiorOuIgual:
movl %edx , %eax
mull %r10d
movl %eax , %r11d
incl %r10d
movl %r10d , %r12d
jmp fim3


fim3:
movl $0, %eax
movl %r11d, %eax
divl %r12d
ret






