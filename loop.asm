.data
newline:    .asciiz    "\n"

.text
	# t0 = 0
	# t1 = 3	
	# while (t0 < t1)
	#     print t0
	#     print \n
	#     t0 = t0 + 1

	add $t0, $zero, 0    # t0 = 0
	add $t1, $zero, 3    # t1 = 3
	
loop:
	# if (t0 >= t1)
	#	goto saiu_do_loop
	bge $t0, $t1, saiu_do_loop
	
	# print t0
	add $v0, $zero, 1
	move $a0, $t0
	syscall
	
	#     print \n
	add $v0, $zero, 4
	la $a0, newline
	syscall
	
	# t0 = t0 + 1
	add $t0, $t0, 1
	b loop
saiu_do_loop:
