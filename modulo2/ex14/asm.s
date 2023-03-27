.section .data
	.global length1
	.global length2
	.global height
	
length1:
	.int 5

length2:
	.int 10
	
height:
	.int 2
	
	
.section .text
	 	.global getArea							#int getArea()	
	
getArea:

	movl	length1(%rip), %eax
	addl length2(%rip), %eax	
	imull	height(%rip), %eax			
	
	movl $0, %edx
	movl	$2, %ecx					#place the number 2 in ecx
	
	idivl	%ecx	
	
	ret
	
