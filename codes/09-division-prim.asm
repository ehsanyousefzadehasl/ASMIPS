.data
	word1: .asciiz "Quotient: "
	word2: .asciiz "Remainder: "
	new_line: .asciiz "\n"

.text
	addi $t0, $zero, 201
	addi $t1, $zero, 20
	
	div $t0, $t1
	 
    	mflo $t0 # quotient
    	mfhi $t1 # remainder
  
  	li $v0, 4
  	la $a0, word1
  	syscall 
    	

	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	
	li $v0, 4
	la $a0, new_line
	syscall
	
	
  	li $v0, 4
  	la $a0, word2
  	syscall 
  	
  	li $v0, 1
	add $a0, $zero, $t1
	syscall