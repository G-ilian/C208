.data
frase: .asciiz "Entre com a sua idade: "
frase1: .asciiz "Maior de idade"
frase2: .asciiz "Menor de idade"

.text
li $v0,4 # Valor para impressão é 4 ( Serviço de impressão de dados )
la $a0,frase # Carregando a frase no endereço a0
syscall # Imprimindo a frase na tela

li $v0,5 # Valor para entrada de dados é 5 ( Serviço de entrada de dados )
syscall # Esperando o usuário entrar com a idade
add $s0,$v0,$0

bge $s0,18,MAIOR # if(idade>=18)
# menor:
	li $v0,4 # Valor para impressão é 4 ( Serviço de impressão de dados )
	la $a0,frase2
	syscall
	j FIM # Para pular para a próxima instrução não passando por maior

MAIOR: 	li $v0,4 # Valor para impressão é 4 ( Serviço de impressão de dados )
	la $a0,frase1
	syscall

FIM: 	li $v0,10 # Código pula para o fim da execução !!
	syscall