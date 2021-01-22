.data
        new_line: 	.asciiz "\n"

.text
main:
    addi $s0, $zero, 10

    # assumes that the value should be in $t0 to be printed
    add $t0, $s0, $zero

    # this function assumes, we have our value in $s0
    add $s0, $t0, $zero
    jal incremet

    # print a newline
    jal print_newLine    
    
    # assumes that the value for print is in the $t0
    add $t0, $zero, $s0
    jal print_integer

# return 0; ~= signal for the end of the program
li $v0, 10
syscall

# this procedure receives input in $s0 and increments it and gives it out in $s0
incremet:
            addi $s0, $s0, 1
            
            # when we are in a procedure if we are going to jump, first we have to push the return addresss in the
            # stack, otherwise we are going to lose the return address and change to a orphan :D
            addi $sp, $sp, -4
            sw $ra, 0($sp)    # pushing the current return address to the stack     
            jal print_integer
            

            # After returning from a procedure we have to retrieve our previous return address and just (-/+4) :D because
            # every 4 bytes is a word in MIPS for us (4-byte-aligned or word-aligned actions in MIPS :S)
				
            lw $ra, 0($sp) # poping from the stack
            addi $sp, $sp, 4

            jr $ra
            
print_integer:
            	li $v0, 1
            	move $a0, $t0
            	syscall
            	
            	jr $ra	

print_newLine:
    		li $v0, 4
    		la $a0, new_line
    		syscall
    		
    		jr $ra
		