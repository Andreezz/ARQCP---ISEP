.section .data

	.global ptrvec		#int array
	.global num			#int num
	
.section .text

	.global count_max
	count_max:
		movl $0, %eax					# initialize %eax (counter for how many times the condition is satified)
		movslq num(%rip), %rcx			# place num in %rcx

		cmpq $2, %rcx					# check if array is empty or has minus than 3 elements
		jle end

		movq ptrvec(%rip), %rdi			# place array address in %rdi
		subq $2, %rcx					# to avoid going out of index bounds

	array_loop:
		movl (%rdi), %edx				# place array[i] in %edx (i)
		movl 4(%rdi), %r8d				# place array[i+1] in %r8d (i1)
		movl 8(%rdi), %r9d				# place array[i+2] in %r9d (i2)

		cmpl %edx, %r8d					# check array[i+1] > array[i]
		jg i1_bigger_than_i
		jmp next_element

	i1_bigger_than_i:
		cmpl %r9d, %r8d					# check array[i+1]>array[i+2]
		jg i1_bigger_than_i2
		jmp next_element

	i1_bigger_than_i2:
		incl %eax						# increment counter

	next_element:
		addq $4, %rdi					# advance to next int element
		loop array_loop

	end:
		ret
