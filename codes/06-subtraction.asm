.data
	number1: .word -115
	number2: .word 13432

.text
	lw	$t0, number1($zero)
	lw	$t1, number2($zero)
	
    	sub 	$t2, $t0, $t1		# $t2 <-- $t0 - $t1
	
	# for printing the result
	li $v0, 1			# to print an integer, load immediate $v0 with 1
	move  $a0, $t2			# ~= add $a0, $zero, $t2
	syscall