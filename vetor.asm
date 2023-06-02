.data

vetor: .word 0:20

.text

	# $t1 conterá os endereços de memória
	
	la $t1, vetor
	li $t2, 10
	sw $t2, ($t1)          # vetor[0] = 10
	
	# $t1 = &vetor[1]
	add $t1, $t1, 4
	li $t2, 11
	sw $t2, ($t1)          # vetor[1] = 11