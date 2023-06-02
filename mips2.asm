.data

strmaior: .asciiz "eh maior de idade\n"
strmenor: .asciiz "eh menor de idade\n"
idade:    .word 21

.text
	
	#  $t0 conterá a idade
	lw $t0, idade
	
	li $t1, 18
	bge $t0, $t1, maior

menor:
	li $v0, 4
	la $a0, strmenor
	syscall
	b saida
	
maior:
	li $v0, 4
	la $a0, strmaior
	syscall

saida:

