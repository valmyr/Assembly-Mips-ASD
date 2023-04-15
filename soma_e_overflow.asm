;Implemente uma sub-rotina em Assembly mips com dados de 8 bits que faça a soma com sinal de dois números e guarde o resultado em $3. $4 deve conter 1 se ocorrer overflow e zero c.c.
addi $s1, $zero, 10
addi $s2, $zero, 255
; entradas
addi $s4, $zero, 0
add  $s3, $s1, $s2
;sinal do $s1
andi $s5, $s1, 256
;sinal do $s2
andi $s6, $s2, 256
;sinal da soma
andi $s7, $s3, 256
;verificando se o sinal de $s1 e $s2  são diferentes
bne  $s5, $s6, finish
;se forem iguais 
;verifico se o resutado da soma é diferente do sinal das entradas 
beq  $s5, $s7, finish
;se for digo que ocorreu overflow
addi $s4, $s4, 1
finish:
