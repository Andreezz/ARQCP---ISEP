.section .data
.global id_max_consumo
id_max_consumo:
.byte 0
.global potencia
.global horas
.global id

.section .text
.global consumo

consumo:
movb $0, %ch
movb $0, %ah
movb $0, %dh
movb $0, %cl


movb id_max_consumo(%rip), %ch
movb potencia(%rip), %ah
movb horas(%rip), %dh
movb $1000, $cl

mulb %ah , %dh     #guarda em ax

cmpb $0,%cl
je equal
divb %cl

cmpb %al, id_max_consumo(%rip)
jg great
jle less

less:
movb $0, %al
great:
movb %al, %ch
movb %ch , %al
jmp end

equal:
movb $0 , %al
jmp end







end:
ret
