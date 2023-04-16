; Implemente uma sub-rotina em Assembly MIPS que realize a ordenação de 3 valores inteiros. Os valores já estão
;   nos registradores $1,$2 e $3. No final, o menor valor deve estar em $s1, o maior $s3 e o valor intermédiário deve estar em $2

addi $s1, $zero, 3
addi $s2, $zero, 2
addi $s3, $zero, 1
slt  $s4, $s1  , $s2
bne  $s4, $zero, x
add  $s5, $zero, $s1
add  $s1, $zero, $s2
add  $s2, $zero, $s5
x:
slt  $s4, $s1  , $s3
bne  $s4, $zero, y
add  $s5, $zero, $s1
add  $s1, $zero, $s3
add  $s3, $zero, $s5
y:
slt $s4, $s2,   $s3
bne $s4, $zero,   z
add $s5, $zero, $s2
add $s2, $zero, $s3
add $s3, $zero, $s5
z:
