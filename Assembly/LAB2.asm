.data  # nhâp vào chu?i 3 s? xu?t ra h? 16
	out1: .asciiz "ENTER n: "
	string: .space 30
.text
	la $a0,out1
	li $v0,4
	syscall
	la $a0,string
	li $a1,30
	li $v0,8
	syscall
	
	move $s0,$a0
	
while:
	lb $t0,0($s0)
	beq $t0,0,endwhile
	beq $t0,48,print0
	beq $t0,49,print1
	beq $t0,50,print2
	beq $t0,51,print3
	beq $t0,52,print4
	beq $t0,53,print5
	beq $t0,54,print6
	beq $t0,55,print7
	beq $t0,56,print8
	beq $t0,57,print9
	j end
	
print0:	
	addi $t0,$t0,12
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
	
	
print1:	
	addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print2:	
	addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print3:	
addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print4:	
addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print5:	
	addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print6:	
	addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print7:	
	addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print8:
	addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 
print9:	
addi $t0,$t0,-18
	move $a0,$t0
	li $v0,1
	syscall
	addi $s0,$s0,1
	j while 	
	
endwhile:
end:
	