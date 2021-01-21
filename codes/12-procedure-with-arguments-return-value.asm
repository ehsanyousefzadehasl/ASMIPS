.data

.text
	addi $a1, $zero, 100
	addi $a2, $zero, 10
	
	# for addition, put your numbers in $a1 and $a2, then you can find your result in $v1
	jal addition
	
	add $a0, $v1, $zero # passing the number that we want to print it
	
	# for print, just put the number you want to be printed in the $a0
	jal integer_print
	
	# return 0;
	li $v0, 10
	syscall 


	addition:
		add $v1, $a1, $a2
		jr $ra
		
	integer_print:
		li $v0, 1
		syscall 
		jr $ra