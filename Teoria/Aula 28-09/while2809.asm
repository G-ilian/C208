# While em assembly
.data

.text
li $s0,-3
li $s1,10
li $s2,20

volta:
bnez $s0,diferente

j FIM

diferente: 
	add $s1,$s1,$s2 # b=b+c
	addi $s0,$s0,1 # a=a+1
	j volta
	
	
FIM: 	li $v0,10 # Código pula para o fim da execução !!
	syscall