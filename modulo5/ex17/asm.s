.section .data

.section .text
	.global return_unionB_b

return_unionB_b:
	 movl $0,%r9d
	 movq (%rdi,%rsi,8),%rdi

for:
	 cmpl %edx,%r9d
	 je continue
	 addq $32,%rdi
	 incl %r9d
	 jmp for

continue:
	 movb 24(%rdi),%al
	 
ret

