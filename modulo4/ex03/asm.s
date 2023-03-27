.global greatest
	greatest:
		cmpl %edi, %esi
		jge isLargest
		movl %edi, %eax
		jmp next
	isLargest:
		movl %esi, %eax
	next:
		cmpl %eax, %edx
		jl next2
		movl %edx, %eax

    next2:
    cmpl %eax, %ecx
    jl end
    movl %ecx , %eax
    
	end:
		ret
