#x=10 + 125 --> TIPO I
#A=$s0=10
#B=125
#X=$s1

li $s0,100 #s0=10

# SOMA - TIPO I
addi $s1,$s0,125

# Subtração
subi $t0,$s0,5

#Subtração 2ª Maneira
addi $s7,$s1,-10

# Multiplicação tipo I
li $t6,7
li $t5,5

mul $s6,$t6,2