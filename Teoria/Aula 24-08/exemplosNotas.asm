.data # Segmento de mem�ria, ou seja, trabalha com a mem�ria 
nota1: .byte 0x20
nota2: .byte 0x10
media: .byte 0x00
end_media: .word 0x10010010
# Trazendo os dados da mem�ria para o banco de registradores para realizar opera��es
.text # Segmento de registradores

lb $t1,nota1 # Carregando nota 1 em $t1
lb $t2,nota2 # Carregando nota 2 em $t1

add $t3,$t1,$t2 # Fazendo a soma entre nota 1 e nota 2
div $t4,$t3,2
la $t5,end_media # Guardando no endere�o que eu quero
#sb $t4,media # Guardando a m�dia na primeira posi��o de mem�ria