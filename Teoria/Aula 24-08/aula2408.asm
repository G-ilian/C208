# Aula sobre load word e stores
.data # Segmento de mem�ria, ou seja, trabalha com a mem�ria 
#num1: .word 0x1001
#num2: .word 0x1002
#num3: .word 0x1003
num1: .word 0x1001
num2: .byte 0x12
num3: .half 0x113

# Trazendo os dados da mem�ria para o banco de registradores para realizar opera��es
.text # Segmento de registradores

lw $t1,num1 # Load word
lb $t2,num2 # Load Byte
lh $t3,num3 # Load half word
#la $t0,num1 # Carregando o endere�o base
#lw $t1,0($t0) # Carregando o conte�do do end. base
#lw $t2,4($t0) # Carregando o conte�do do end. base em $t2 com 4 pos. de deslocamento
#lw $t3,8($t0) # Carregando o conte�do do end. base em $t3 com 8 pos. de deslocamento



