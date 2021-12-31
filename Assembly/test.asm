.data
 
input1: .asciiz "Nhap vao so n: "
input2: .asciiz "\nTong: "
input3: .asciiz "\nKet qua: "
.text
main:
 
	li $v0, 4
        la $a0 , input1
        syscall
  
        li $v0,5   
        syscall 
        move $t6, $v0  
        move $a3, $v0 
        move $a1, $a3
        
	li $a2,0
F:
   	addi $sp, $sp, -4
   	sw $t6, 0($sp)   	
   	slti $s0, $t6, 1 
   	beq $s0, $0, L1
   	li $t7,1 
   	addi $sp, $sp, 4
   	jr $ra

L1:
 	addi $t6,$t6,-1
 	jal F
 	lw $s6, ($sp)
   	lw $s1, ($sp)
 	addi $sp, $sp, 4
 	mul $t7, $s6, $t7
 	
	add $s2, $s1, $s2
	beq $a2, 1, L2
	addi $a2, $a2,1 
 	slt $t4, $s6, $a1
 	beq $t4, $0, out	 	
 	jr $ra	
L2:

	
	li $v0, 4
        la $a0 , input2
        syscall
        
	move $a0,$s2
	        	
	li $v0,1
	syscall
	
	li $a2,0
	li $s2,0
 	slt $t4, $s6, $a1
 	beq $t4, $0, out
	jr $ra	
out:
	li $v0, 4
        la $a0 , input3
        syscall
        
	mflo $s4
	move $a0,$s4
	li $v0,1
	syscall



    		
