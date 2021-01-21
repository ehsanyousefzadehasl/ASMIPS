.data
    	number1: .word -3
	number2: .word 12
    	number3: .word 0

.text
	lw $t0, number1($zero)
	lw $t1, number2($zero)
	
	# instead of doing what we load from memory, we can do as follows
	addi $t0, $zero, -3
	addi $t1, $zero, 12
	
	mul $t2, $t1, $t0 		# $t2 <-- $t1 * $t0
	
	# for printing the result
	li $v0, 1			# to print an integer, load immediate $v0 with 1
	move  $a0, $t2			# ~= add $a0, $zero, $t2
	syscall