.section .data
    .s:
        .short 0
    nNumber:
        .short    
    .global nNumber

.section .text
    .global swapBytes #short swapBytes()

swapBytes:
    mov nNumber(%rip), %ax
    mov s(%rip), %cx
    add %ch, %ch     
    movb %ch, %al
    movb %cl, %ah
    
    ret