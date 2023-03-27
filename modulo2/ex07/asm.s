.section .data
    .global s1
    .global s2

.section .text
    .global crossSumBytes  #short crossSumBytes(void)

crossSumBytes:

  movw s1(%rip), %ax   #move o valor da primeira variável para o registo de 16-bit 
  movw s2(%rip), %cx   #move o valor da primeira variável para outro registo de 16-bit
  addb %ch, %al        #soma o byte mais significativo de s1 com o byte menos significativo de s2
  addb %cl, %ah        #soma o byte menos significativo de s1 com o byte mais significativo de s2


ret