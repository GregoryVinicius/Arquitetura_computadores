.data

v_de_bytes: .byte 6 10 33 2

vetor: .word 30 1 2 3 4 5 6 7 8 9 153

newline:    .asciiz    "\n"

# &vetor[0] = vetor
# &vetor[1] = vetor + 4
# &vetor[2] = vetor + 8

# &v_de_bytes[0] = v_de_bytes
# &v_de_bytes[1] = v_de_bytes + 1
# &v_de_bytes[2] = v_de_bytes + 2

# &vetor[9] = &vetor[0] + 9*4
# &vetor[9] = vetor + 9*4

.text
	# imprime o conteudo da primeira posicao do vetor
	la $t1, vetor
	lw $t1, ($t1)
	move $a0, $t1
	li $v0, 1
	syscall
	
	#     print \n
	add $v0, $zero, 4
	la $a0, newline
	syscall
	
	# imprime o conteudo da ultima posicao do vetor
	la $t1, vetor  # t1 = &vetor[0]
	add $t1, $t1, 40  # t1 += 40 -> t1 = &vetor[10]
	lw $t1, ($t1)
	move $a0, $t1
	li $v0, 1
	syscall
	
	#     print \n
	add $v0, $zero, 4
	la $a0, newline
	syscall

	# $t1 conterá os endereços de memória	
	la $t1, vetor
	li $t2, 10
	sw $t2, ($t1)          # vetor[0] = 10
	#
	lw $t3, ($t1)
	move $a0, $t3
	li $v0, 1
	syscall
	#     print \n
	add $v0, $zero, 4
	la $a0, newline
	syscall
	
	# $t1 = &vetor[1]
	add $t1, $t1, 4
	li $t2, 11
	sw $t2, ($t1)          # vetor[1] = 11
	#
	la $t3, vetor
	add $t3, $t3, 4
	lw $t3, ($t3)
	move $a0, $t3
	li $v0, 1
	syscall
	#     print \n
	add $v0, $zero, 4
	la $a0, newline
	syscall