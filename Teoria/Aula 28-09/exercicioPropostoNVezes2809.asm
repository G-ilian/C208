# C�digo para entrar com uma palavra e fazer a impress�o de N Vezes seu valor
.data
frase: .asciiz "INATEL \n"
n: .asciiz "Entre com a quantidade de repeti��es: "

.text
# --- Imprimindo a mensagem da quantidade de repeti��es --- #
li $v0,4 # Valor para impress�o � 4 ( Servi�o de impress�o de dados )
la $a0,n # Carregando a frase no endere�o a0
syscall # Imprimindo a frase na tela

# Armazenando a quantidade de repeti��es
li $v0,5 # Valor para entrada de dados � 5 ( Servi�o de entrada de dados )
syscall # Esperando o usu�rio entrar com a idade
add $s0,$v0,$0

VOLTA:
	blt $t0,$s0,IF # IF($t0<$s0)
	j FIM
	IF:
	   # Imprimindo os valores
	   li $v0,4 # Valor para impress�o � 4 ( Servi�o de impress�o de dados )
	   la $a0,frase # Carregando a frase no endere�o a0
           syscall # Imprimindo a frase na tela
   	   addi $t0,$t0,1 # $t0+=1
   	   j VOLTA
   
FIM: 	li $v0,10 # C�digo pula para o fim da execu��o !!
	syscall