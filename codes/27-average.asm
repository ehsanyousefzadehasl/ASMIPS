.data
	array: .word 10, 2, 9
	length: .word 3
	sum: .word 0
	average: .word 0
	
.text
	main:
		la $t0, array		# Base Address
		li $t1, 0		# iterator = 0
		lw $t2, length		 
		li $t3, 0		# sum = 0
		
		SumLoop:
			lw $t4, ($t0)		# $t4 <--- array[i]
			add $t3, $t3, $t4	
			
			addi $t1, $t1, 1
			addi $t0, $t0, 4
			
			blt $t1, $t2, SumLoop
		
		sw $t3, sum
		
		div $t5, $t3, $t2
		
		sw $t5, average
		
		
		li $v0, 10
		syscall