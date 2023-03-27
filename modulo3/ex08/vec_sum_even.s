.section .data
	.global ptrvec
	.global num
  .global even

.section .text
	.global vec_sum_even
	
vec_sum_even:
movl $0 , %r9d
movl $0 , %eax


movq ptrvec(%rip), %rdi
movl even(%rip), %r8d


loop:
cmpl num(%rip), %r9d
je end

movl (%rdi), %eax

call test_even
cmpl $1, %eax
je if_even



addq $8, %rdi       #array de long logo 4 para andar 1 casa
incl %r9d          #loop irá funcionar até o num for igual ao valor do registo %r9d
jmp loop

if_even:
addl (%rdi), %r8d
addq $8, %rdi       #array de long logo 4 para andar 1 casa
incl %r9d           #loop irá funcionar até o num for igual ao valor do registo %r9d
jmp loop


end:
movl %r8d, %eax

ret	
