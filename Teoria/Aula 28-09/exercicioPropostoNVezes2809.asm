# Código para entrar com uma palavra e fazer a impressão de N Vezes seu valor
.data
frase: .asciiz "INATEL \n"
n: .asciiz "Entre com a quantidade de repetições: "

.text
# --- Imprimindo a mensagem da quantidade de repetições --- #
li $v0,4 # Valor para impressão é 4 ( Serviço de impressão de dados )
la $a0,n # Carregando a frase no endereço a0
syscall # Imprimindo a frase na tela

# Armazenando a quantidade de repetições
li $v0,5 # Valor para entrada de dados é 5 ( Serviço de entrada de dados )
syscall # Esperando o usuário entrar com a idade
add $s0,$v0,$0

VOLTA:
	blt $t0,$s0,IF # IF($t0<$s0)
	j FIM
	IF:
	   # Imprimindo os valores
	   li $v0,4 # Valor para impressão é 4 ( Serviço de impressão de dados )
	   la $a0,frase # Carregando a frase no endereço a0
           syscall # Imprimindo a frase na tela
   	   addi $t0,$t0,1 # $t0+=1
   	   j VOLTA
   
FIM: 	li $v0,10 # Código pula para o fim da execução !!
	syscall