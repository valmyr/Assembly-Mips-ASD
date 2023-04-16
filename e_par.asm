; Implemente uma sub-rotina em Assembly MIPS que ponha o valor 1 em $s1 se o valor em $s2 for par 
addi $s2 , $zero, 11
addi $s1 , $zero, 0
andi $s3 , $s2  , 1
bne  $s3 , $zero, is_impar
addi $s1 , $zero, 1
is_impar:
