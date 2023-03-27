.section .data
	
		
.section .text
	.global test_even

	
	
	
test_even:
movl $0, %edx           #resto a 0
movl $2, %ecx			#dividir o %eax por 2 para saber se é par


cltd

cmpl $0, %ecx
je end

idivl %ecx

cmpl $0, %edx          #se o resto for 0 é par 
je is_even

movl $0 , %eax
jmp end


is_even:
movl $1, %eax
jmp end


end:
ret	

