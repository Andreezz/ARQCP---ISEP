.section .data
    .equ VARIABLE, 4

.section .text
.global update_grades
update_grades:
    addq $VARIABLE , %rdi                          # rdi=&(s- > grades [0])
    movq $5 , %r11                                 #5 in r11
    movl $0 , %edx                                 #0 in rdx

looper:
    cmpq %rdx , %r11                                # compare rdx with r11 
    je end                                          # if rdx = r11 , jmp end
    movl (%rsi , %rdx , 4) , % eax                 
    movl %eax , (% rdi , %rdx , 4)                  # copy grade in %eax to new_grades
    incq %rdx                                       # rdx ++
    jmp looper

end:
    ret 
