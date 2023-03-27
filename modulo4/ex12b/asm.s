.section .text
.global count_bits_one

count_bits_one:
pushq %rbx
movq $0, %rax
movq $0, %rcx

loop:
cmpl $32, %ecx
je end

movl %edi, %ebx
andl $1, %ebx
cmpl $1, %ebx
je isOne
incl %ecx
sarl %edi

jmp loop

isOne:
incl %eax
incl %ecx
sarl %edi
jmp loop

end:
popq %rbx
ret
