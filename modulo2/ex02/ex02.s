.section .data
.global op1
.global op2
.global soma

.section .text

.global sum #int sum(void)

sum:

movl op1(%rip), %eax #place op1 in eax
movl op2(%rip), %ecx #place op2 in ecx
addl %ecx, %eax     #add ecx to eax.Result in eax


ret