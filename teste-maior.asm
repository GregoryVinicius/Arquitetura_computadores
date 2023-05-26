.data

idade: .word 16
eh_maior: .word 0
strmaior: .asciiz "eh maior de idade"
strmenor: .asciiz "eh menor de idade"

.text

	lw $a0, idade
	blt $a0, 18, menor
	
maior:
	li $t0, 1
	sw $t0, eh_maior
	li $v0, 4
	la $a0, strmaior
	syscall
	b fim

menor:
	li $t0, 2
	sw $t0, eh_maior
	li $v0, 4
	la $a0, strmenor
	syscall	
fim:
		
syscall