.data
	string: .space 30
	out1: .asciiz "ENTER n: "
	out2: .asciiz "\nENTER i: "
	out3: .asciiz "ENTER j: "
	out4: .asciiz "VAlUAE IS: "
.text
	la $a0,out1
	li $v0,4
	syscall
	li $v0,5
	syscall
	
	move $t0,$v0    # n
	addi $s0,$0,0   # i
	addi $s1,$0,0   # j
	la $s3,string
	
while:
	beq $t1,$t0,continue	
	li $v0,5
	syscall	
	sb $v0,0($s3)
	addi $s3,$s3,1
	addi $t1,$t1,1
	j while 
			
continue:
	addi $s0,$zero,1     #i=1
	addi $s1,$0,4     #j=4
		
	slt $t2,$s0,$s1  
	beq $t2,1,condition1
	j condition2
	
condition1:
	addi $s3,$s3,-1
	lb $t2,0($s3)

	addi $s0,$t2,0
	la $a0,out4
	li $v0,4
	syscall
	move $a0,$s0
	li $v0,1
	syscall
	j stop

condition2:
	lb $t3,0($s3)
	addi $s1,$t3,0
	move $a0,$s1
	li $v0,1
	syscall
	j stop
stop:
	
	
			
