.section .data
    .global code
    .global currentSalary

	
.section .text
    .global  new_salary

new_salary:

    movw code(%rip),%r8w                        #move a variavél de 16bits para r8w
    movw currentSalary(%rip), %r9w              #move a variavél de 16bits para r9w

    cmpw $20, code(%rip)                        #compara 20 com a variavél code
    je code20                                   #se for igual
    jl others                                   #se for menor
    jg code21                                   #se for superior

    code20:
    addw $400, %r9w                             #adiciona 400 a r9w
    movw %r9w, %ax                              #move r9w para a variavél de retorno

    jmp end

code21:

    cmpw $21, code(%rip)                        #compara 21 com a variavél code
    jg code22                                   #se for maior
    addw $300, %r9w                             #adiciona 300 a r9w
    movw %r9w, %ax                              #move r9w para a variavél de retorno

    jmp end

code22:
    cmpw $22, code(%rip)                        #compara 21 com a variavél code
    jg others                                   #se for maior
    addw $200, %r9w                             #adiciona 200 a r9w
    movw %r9w, %ax                              #move r9w para a variavél de retorno

    jmp end

others:
    addw $150, %r9w                             #adiciona 200 a r9w
    movw %r9w, %ax                              #move r9w para a variavél de retorno


    end:
    ret
