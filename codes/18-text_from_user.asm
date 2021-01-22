.data
	userInput: .space 50
	newline: .asciiz "\n"
.text
	main:
		# Getting user's input as text
		li $v0, 8
		la $a0, userInput
		li $a1, 50 # maximum length of the string = number of bytes
		syscall
	
		
		# printing input
		li $v0, 4
		la $a0, newline
		syscall
		
		li $v0, 4
		la $a0, userInput
		syscall
		
	# return 0; - end of the program
	li $v0, 10
	syscall