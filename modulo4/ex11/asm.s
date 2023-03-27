.section .data
		
.section .text
		.global proc
proc:
		pushq %rbp 
		movq %rsp , % rbp

		
		addl %edx,(%rsi)
		subl %edi,(%rcx)
		addw %dx,(%r9)
		movb 16(%rbp),%cl
		movsbl %cl,%ecx
		movq 24(%rbp),%rax
		imull $3,%ecx
		movb %cl,(%rax)


		movq %rbp , %rsp 
		popq %rbp
		ret
		
		.global call_proc
call_proc:
		pushq %rbp
		movq %rsp,%rbp
		subq $32,%rsp
		movl %edi,-8(%rbp)
		movl %esi,-16(%rbp)
		movw %dx,-24(%rbp)
		movb %cl,-32(%rbp)
		movl -8(%rbp),%edi
		leaq -8(%rbp),%rsi
		movl -16(%rbp),%edx
		leaq -16(%rbp),%rcx
		movw -24(%rbp),%r8w
		leaq -24(%rbp),%r9
		leaq -32(%rbp),%rax
		pushq %rax
		pushq -32(%rbp)
		call proc
		add $16,%rsp
		movl -8(%rbp),%ecx
		addl -16(%rbp),%ecx
		movswl -24(%rbp),%eax
		movsbl -32(%rbp),%r9d
		movq %rbp,%rsp
		popq %rbp
		subl %r9d,%eax
		imull %ecx
		ret
		
		
		
		
		
		
