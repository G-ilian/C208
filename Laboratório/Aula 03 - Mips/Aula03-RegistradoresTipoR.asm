# Identifica o endereçamento de memória 
.data

# Diretiva que identifica a posição de memória
.text
  #x=5+4 --> Tipo R
  #A=$t1=5
  #B=$t2=4
  #X=$t3=9
  #X=A+B-> $t3=$t1+$t2
	
  #Load Immediate 
 li $t1,5
 li $t2,4

#Soma
add $t3,$t1,$t2 # X= A + B

# Subtração
sub $t4,$s1,$t1

#Multiplicação
li $t6,7
li $t5,5

mul $s6,$t6,$t7

# Divisão
li $t6,10
div $s7,$t6,2