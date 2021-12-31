.data
	string: .space 100
	in1: .asciiz "ENTER STRING: "
	out1: .asciiz "\nLENGTH STRING IS: \n"
	out2: .asciiz "\nREVERSE STRING IS: "
.text
	la $a0,in1
	li $v0,4
	syscall
	la $a0,string
	li $a1,100
	li $v0,8
	syscall
	li $v0,4
	syscall
	
	move $s0,$a0
	addi $t0,$0,0  # count
	
loop:
	lb $s1,0($s0)
	beq $s1,10,endloop
	addi $s0,$s0,1
	addi $t0,$t0,1  #count
	j loop
	
endloop:
	move $t2,$t0
	move $t3,$t0

	la $a0,out1
	li $v0,4
	syscall
	move $a0,$t2
	li $v0,1
	syscall

	addi $s0,$s0,-1 # tr? kí t? ENTER
	move $s2,$s0
	
loop1:
	beq $t3,0,endloop1
	lb $t1,0($s2)
	
	move $a0,$t1
	li $v0,11
	syscall
	addi $s2,$s2,-1
	addi $t3,$t3,-1
	j loop1		
endloop1:
	addi $t0,$0,0
	addi $t3,$0,0 
	addi $s0,$0,0
	addi $s2,$0,0

	move $s4,$a0
loop3:
	lb $t0,0($s4)
	li $t1,64
	li $t2,91
	slt $s0,$t0,$t2
	sgt $s1, $t0,$t1
	and $s2,$s0,$s1
	beq $s2,1,endloop3
	addi $s4,$s4,1
	j loop3
	
endloop3:
	addi $t0,$t0,32
	
print: 
	move $a0,$t0
	li $v0,11
	syscall
	j loop3
	
	
	
	
	
	
