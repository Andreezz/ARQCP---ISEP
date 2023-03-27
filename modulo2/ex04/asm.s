.section .data
.global op1
.global op2

.global op3
op3: 
       .quad 20
       
.global op4
op4:
       .quad 20

.section .text

.global sum_v3 # long sum_v3(void)

sum_v3:

	movq op4(%rip), %rax
	movq op3(%rip), %rcx
	
	addq %rcx, %rax
	
	movl op2(%rip), %r8d
	movslq %r8d, %r8
  subq %r8, %rax
	subq %r8, %rax
	
	
	movl op1(%rip), %r9d
	movslq %r9d, %r9
	addq %r9, %rax
	addq %r9, %rax
	
 


ret

