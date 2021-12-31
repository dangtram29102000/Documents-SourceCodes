.data
	string: .space 30
	out1: .asciiz "ENTER n: "
	out2: .asciiz "\nENTER i: "
	out3: .asciiz "ENTER j: "
	out4: .asciiz "MAX IN ARRAY IS: "
	out5: .asciiz "\nMIN IN ARRAY IS: "
	out6: .asciiz "\nSUM IS: "
.text
	la $a0,out1
	li $v0,4
	syscall
	li $v0,5
	syscall
	
	move $t0,$v0    # n
	addi $t1,$0,0   # i
	la $s0,string
	
while:
	beq $t1,$t0,endwhile 	#i=n
	li $v0,5
	syscall	
	sb $v0,0($s0)
	addi $s0,$s0,1
	addi $t1,$t1,1
	j while 

#------- PRINT MIN,MAX VALUE FROM ARRAY	
			
endwhile:
	addi $t3,$0,0		#set Max
	addi $t1,$0,0 		#set i=0

if1:
	beq $t1,$t0,printif1	#i=n
	lb $s1,0($s0)
	slt $t4,$t3,$s1		# max < a[i]
	beq $t4,1,printcurrentmax 
	addi $s0,$s0,-1
	addi $t1,$t1,1
	j if1
	
printcurrentmax:
	addi $t3,$s1,0	
	j if1
	
printif1:
	la $a0,out4
	li $v0,4
	syscall
	move $a0,$t3
	li $v0,1
	syscall
	
	
reset:
	addi $t1,$0,0		# reset i
	addi $t3,$0,0	#set Min
	
	
if2:
	beq $t1,$t0,printif2	#i=n
	lb $s2,0($s0)		# get value from array
	sgt $t5,$t3,$s2		# min>a[i]
	beq $t5,1,printcurrentmin
	addi $s0,$s0,1
	addi $t1,$t1,1
	j if2
	
printcurrentmin:
	addi $t3,$s2,0	
	j if2
	
printif2:
	la $a0,out5
	li $v0,4
	syscall
	move $a0,$t3
	li $v0,1
	syscall
	
	
#----------- CALCULATE SUM VALUE FROM ARRAY
reset1:
	addi $t1,$0,0	# reset i
	addi $t3,$0,0	#set SUM
	addi $s0,$s0,-1
	
if3:
	beq $t1,$t0,printif3	#i=n
	lb $s3,0($s0)		# get value from array
	add $t3,$t3,$s3		# SUM+i
	addi $s0,$s0,-1
	addi $t1,$t1,1
	j if3
	
printif3:
	la $a0,out6
	li $v0,4
	syscall
	move $a0,$t3
	li $v0,1
	syscall

#--------- ENTER INDEX AND PRINT VALUE FROM ARRAY
reset2:
	addi $t1,$0,0	# reset i
	addi $s0,$s0,1
	addi $s1,$0,0

	la $a0,out2
	li $v0,4
	syscall
	li $v0,5
	syscall
	
	move $t1,$v0		# i
	
	addi $t2,$t1,-1
if4:
	beq $t1,$t0,printif4	#i=n
	lb $s3,0($s0)		# get value from array	
	addi $s0,$s0,1
	addi $t1,$t1,1
	j if4
	
printif4:
	move $a0,$s3
	li $v0,1
	syscall
	



