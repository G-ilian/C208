.data 
nota1:.byte 0x10
nota2:.byte 0x20
nota3:.byte 0x30
nota4:.byte 0x40

nota_nova:.byte

.text
lb $t1,nota1
addi $t2,$t1,0x10
sb $t2,nota_nova

#la $t2,nota1
# Deslocamento 
#lb $t1,0($t2)
#lb $t3,1($t2)

# Para fazer a operação com tipo r, devo manualmente adicionar o valor na posição
#add $t3,$t2,$t1
#and $t4,$t1,$t2 # Operação bit a bit 

# Instruções de operação do tipo I
#addi $t1,$0,0x20  #Move 0x20 para $t1
#addi $t2,$0,0x10  #Move 0x10 para $t2
#addi $t3,$0,-0x10 #Subtração

