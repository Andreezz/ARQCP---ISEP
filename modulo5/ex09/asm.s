.section .data
           
.section .text
	.global fun1
    .global fun2
    .global fun3
    .global fun4

#------------------------------------------------------

fun1:
    movw 4(%rdi) , %ax               # return s->a.x;
    ret 

#------------------------------------------------------

fun2:
    movw 20(%rdi) , %ax               # return s->z;
    ret

#------------------------------------------------------

fun3:
    leaq 20(%rdi),%rax                # return &s->z;
    ret

#------------------------------------------------------

fun4:
    movq 8(%rdi) , %rsi              # return s->b->x;
    movw 4(%rsi), %ax
    
ret

