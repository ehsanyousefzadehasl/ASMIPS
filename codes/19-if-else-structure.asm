.data
	message1: .asciiz  "Numbers are EQUAL."
	message2: .asciiz  "Number are not EQUAL."
.text
	main:
		
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		beq $t0, $t1, EQ
		j NEQ
		
		EQ:
			li $v0, 4
			la $a0, message1
			syscall
		
		NEQ:
			li $v0, 4
			la $a0, message2
			syscall
		
		# return 0; syscall to end the program
		li $v0, 10
		syscall 