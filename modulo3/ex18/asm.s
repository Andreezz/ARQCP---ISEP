.section .data

	.global ptrsrc		# short arraysrc
	.global ptrdest		# short arraydest
	.global num			  # int num
	
.section .text

	.global sort_without_reps
  .global sort_array 

	sort_without_reps:
		movl num(%rip), %eax			# place num in %eax
		cmpl $0, %eax					    # check if arraysrc is empty
		je end

		cmpl $1, %eax					    # check if arrsrc has only one element
		je one_element

		movl $0, %eax					    # reset %eax 
		call sort_array					  # start by sorting arraysrc by ascending order

		movslq num(%rip), %rcx		# place num in %rcx
		movq ptrsrc(%rip), %rdi		# place arraysrc address in %rdi
		movq ptrdest(%rip), %rsi	# place arraydest address in %rsi
		movw (%rdi), %r8w				  # place first element of arrsrc in %r8w
		movw %r8w, (%rsi)				  # place first element of arrsrc in first element of arrdest
		incl %eax						      # increment counter

	array_loop:
		movw (%rdi), %r8w				  # place current element of arrsrc in %r8w
		cmpw %r8w, (%rsi)				  # check if arrdest already contains element
		jne move_src_to_dest			
		jmp next_element

	move_src_to_dest:
		addq $2, %rsi					    # advance to next element of arrdest
		movw %r8w, (%rsi)				  # place current element of arrsrc in current element of arrdest
		incl %eax						      # increment counter

	next_element:
		addq $2, %rdi
		loop array_loop
		jmp end

	one_element:
		movq ptrsrc(%rip), %rdi			# place arraysrc address in %rdi
		movq ptrdest(%rip), %rsi		# place arraydest address in %rsi
		movw (%rdi), %r8w				    # place first element of arrsrc in %r8w
		movw %r8w, (%rsi)				    # place first element of arrsrc in first element of arrdest

	end:
		ret
#---------------------------------------------------------------------------



	sort_array:
		movl $0, %ecx					      # i = 0
		movl num(%rip), %esi			
		decl %esi						        # %rsi = num - 1

	first_loop:
		movl $0, %edx					      # j = 0
		movq ptrsrc(%rip), %rdi			# place arraysrc address in %rdi

		second_loop:
			movw (%rdi), %r8w			    # %r8w = arrsrc[j]
			movw 2(%rdi), %r9w			  # %r9w = arrsrc[j+1]
			cmpw %r8w, %r9w				    # check if arrsrc[j] > arrsrc[j+1]
			jl jplusone_is_minor_than_j
			jmp advance_next_element

		jplusone_is_minor_than_j:   # swap arrsrc[j] and arrsrc[j+1]
			                          
			movw %r9w, (%rdi)			    # arrsrc[j] = arrsrc[j+1]
			addq $2, %rdi				      # advance to next element
			movw %r8w, (%rdi)		    	# arrsrc[j+1] = arrsrc[j]
			subq $2, %rdi				      # go back to previous element

		advance_next_element:
			incl %edx					        # j++
			addq $2, %rdi			      	# advance to next element
			subl %ecx, %esi			    	# %rsi = n - i
			cmpl %esi, %edx			    	# check  j < n -1 - i
			jl second_loop
      
		incl %ecx						        # i++
		cmpl %esi, %ecx					    # check  i < n
		jl first_loop

		ret
		
		 
