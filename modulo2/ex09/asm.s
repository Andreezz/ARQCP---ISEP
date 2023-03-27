.section .data
    .global A #32 bits
    .global B #16 bits
    .global C #8 bits
    .global D #8 bits

.section .text
    .global sum_and_subtract  #long sum_and_subtract()

sum_and_subtract:
    movsbq C(%rip), %rax       
    movslq A(%rip), %rcx    	   
    addq %rcx, %rax    	   #Soma C com A
    movsbq D(%rip), %rdx      
    subq %rdx, %rax          #Subtrai C+A com D
    movswq B(%rip), %rcx      
    addq %rcx, %rax          #Soma C+A-D com B

    ret