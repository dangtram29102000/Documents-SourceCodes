.data
	array: .word 100
	out0: .asciiz "ENTER n: " 
.text
	la $a0,out0
	li $v0,4
	syscall
	li $v0,5
	syscall
	
	move $s0,$v0