
.section .data

.section .text

.global locate_greater  # int locate_greater(Student* s, int minimum, int* greater_grades);

locate_greater:
  pushq %rbp         # save the old base pointer
  movq %rsp, %rbp    # set the new base pointer

  pushq %rdi         # save the first argument on the stack
  pushq %rsi         # save the second argument on the stack
  pushq %rdx         # save the third argument on the stack

  movl $0, %eax      # initialize the counter for valid grades to 0
  movl $0, %r10d     # initialize the loop counter to 0
	movq $0 ,%r11
	addq $4, %rdi      # points the structure to the grades

  loop_count:
    cmpl $5, %r10d   # check if we have processed all grades
    je end

    movl (%rdi, %r10,4), %r9d  # load the current grade

    cmpl %esi, %r9d   # compare the current grade with minimum
    jg add_count     # if the grade is greater than or equal to minimum, go to add_count

    incl %r10d        # increment the loop counter
    jmp loop_count    # go to the next iteration of the loop

  add_count:
	
    incl %eax         # increment the counter for valid grades
    movl %r9d, (%rdx, %r11,4)  # store the current grade in greater_grades
    incq %r11
	  incl %r10d        # increment the loop counter
    jmp loop_count    # go to the next iteration of the loop

  end:
    movl %eax, %eax   # return the counter for valid grades

popq %rdx
popq %rsi
popq %rdi

movq %rbp, %rsp
popq %rbp

ret