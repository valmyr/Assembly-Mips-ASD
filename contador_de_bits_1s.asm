;Implemente uma sub-rotina eem Assembly Mips que realize a contagem de bits 1s em um número de 32bits.

;entrada em $1 saída em $2

addi $s0, $zero, 0      ; iniciando $s0 com zero
addi $s1, $s0, 1        ; $s1 entrada. O número que vamos contar os 1s
addi $s2, $s0, 0        ; iniciando $s2 com zero. saida: número de 1s 
addi $s3, $s0, 1        ; $s3 será o valor que efetuarei os deslocamentos para a máscara
and  $s4, $s3, $s1      ; $s4 máscara. retorna 1 se o valor do número em $s1[i] for 1 e zero c.c.

beq  $s4, $s0, loop        ;caso o que estiver em $4 for 1 incremento à saída. c.c pula para p
addi $s2, $s2, 1
loop:
slt $s5, $s3, $s1       ;condição de parada. se o número de deslocamento for maior que a entrada 
beq  $s5, $s0, finish   ; pule para finish
sll $s3,$s3,1           ;deslocar 1 bit à esquerda
and $s4,$s3,$s1         ;aplicação da máscara de bits
beq $s4, $s0,loop          ;compara se for iguais pula para loop
addi $s2, $s2, 1		    ;incrementa 
j loop					        ;retorna para loop
finish:
