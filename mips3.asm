.data

a:    .word 5
b_:    .word 3
r:    .word

.text
	lw $t0, a
	lw $t1, b_
	
	add $t2, $t0, $t1
	sw $t2, r

	li $v0, 1
	move $a0, $t2
	syscall
