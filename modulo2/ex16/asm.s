.section .data
	.global num
	
	
.section .text
	 	.global steps			#int steps()	
	
steps:
  movq num(%rip), %rax
  imulq $3, %rax
  
  addq $6, %rax

  movq $0, %rdx
  cmpq $-1, num(%rip)
  jl iszero
 
 jump_back:
  movq $3, %rcx
  idivq %rcx
 
  addq $12,  %rax
  subq num(%rip), %rax
  subq $1,%rax
  
  jmp end
  
  
  iszero:
  movq $-1,%rdx
  jmp jump_back

end:
	ret
	
