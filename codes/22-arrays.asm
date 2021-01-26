.data
	an_array: .space 12 # 3 words = 3 x 4 Bytes
	new_line: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 4
		addi $s1, $zero, 10
		addi $s2, $zero, 12
		
		addi $t0, $zero, 0
		
		sw $s0, an_array($t0)
			addi $t0, $t0, 4
		
		sw $s1, an_array($t0)
			addi $t0, $t0, 4
			
		sw $s2, an_array($t0)
		
		
		addi $t1, $zero, 0
		
		while:	
			beq  $t1, 12, exit
			
			li $v0, 1
			lw $a0, an_array($t1)
			syscall
			
			li $v0, 4
			la $a0, new_line
			syscall
			
			addi $t1, $t1, 4
			
			j while	
		exit:
	
	li $v0, 10
	syscall