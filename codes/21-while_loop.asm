.data
	message: .asciiz "While is Done!"
	new_line: .asciiz "\n"
.text
	main:
		# i <- 0
		addi $t0, $zero, 0
		
		while:
			bgt  $t0, 10, exit
			
			addi $t0, $t0, 1	# i <-- i + 1
			
			li $v0, 1
			add $a0, $zero, $t0
			syscall
			
					
			li $v0, 4
			la $a0, new_line
			syscall
			
			j while		
		
		exit:
		
		li $v0, 4
		la $a0, message
		syscall 
		
	# return 0; == end of program
	li $v0, 10
	syscall