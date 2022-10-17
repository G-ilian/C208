# Carregar valores no array
.data

c: .word 2, 6, 5, 8, 10, -6, 50, 100

.text 
# Estrutura de repetição
la $s1,c # c ----> 0x10010000
li $t2,0 # i = 0
li $s0,0 # j = 0

WHILE:
ble $s0,7,LOOP #i < 2

j SAIDA

LOOP:
    sll $t3,$t2,2 # Deslocamento para esquerda de 2 posições, $t3=$t2(0) | $t2*2*2
    add $t1,$t3,$s1 # 0x1001000 + 0
    lw $t5,0($t1)
    addi $s0,$s0,1 # $s0 += 1
    addi $t2,$t2,1 # $t2 += 1
    j WHILE
   
SAIDA:




