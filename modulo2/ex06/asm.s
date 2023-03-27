.section .data
.global byte1
.global byte2

.section .text
.global concatBytes  #short concatBytes(void)

concatBytes:
	movb	byte1(%rip), %al	#place byte1 in al because we want to convert the char to short
	movb 	byte2(%rip), %ah	#place byte2 in ah because we want to convert the char to short
ret
	

