.data
 
 input1: .asciiz "Nhap so luong phan tu mang: "
 input2: .asciiz "Nhap phan tu: "
 output: .asciiz "Xuat chuoi min max" 
 

 arr:     .word  100
 
 .text
 
  main :
  # Nhap so luong phan tu n.
   li   $v0, 4
   la $a0 , input1
   syscall
  # yeu cau nhap so phan tu cua mang  
   li $v0,5   
   syscall 
   
   
   move $s0, $v0     
   move $t0,$s0
   # Nhap cac phan tu cua mang
   li $v0, 4
   la $a0, input2 
   syscall
   
   la $s1, arr    
   
   loop :
   beq $t0, 0, out
   li $v0 , 5 
   syscall

   sw  $v0 , 0($s1) 
   addi $t0, $t0,-1
   addi $s1, $s1,4
   j loop
   
   out:
   # main 
 
   la $s1, arr
   li $t0,1     # I 
   move $s5, $s0
  #addi $s5, $s5, 1  # N-1
   
   loop1:
   sle $t1, $t0, $s5   # I<=N-1
   beq $t1, 0, out1
   move $t3, $t0     # J
   li $t2,0
   addi $t4, $t3,-1 
   loop2:

   lw $s2, 0($s1)     # A[j]
   sgt $t5, $t4, $0   # J < 0
   beq $t5, 0 ,L1
   addi $s1, $s1, -4   
   lw $s3, 0($s1)     #A[j-1]
   addi $t2, $t2, 4 # bien tra dia chi
   slt $t6, $s2, $s3
   beq $t6, 0, L2
   sw $s2, ($s1)
   addi $s1, $s1, 4
   sw $s3, ($s1)
   addi $t4, $t4, -1 
   addi $s1, $s1, -4    

   j loop2 
   
   L1: 
   addi $t0,$t0,1
   add $s1, $s1, $t2 # ve dia chi dung
   addi $s1, $s1, 4
   j loop1

   L2:
   addi $t0,$t0,1
   add $s1, $s1, $t2 # ve dia chi dung
   addi $s1, $s1, 4
   j loop1
   out1:


   


  
   
   
# xuat mang A da sap xep ra man hinh
   
   li   $v0, 4
   la $a0 , output
   syscall
   
   
   # in cac phan tu mang ra man hinh
   move $t0, $s0
   la $s1, arr 
   loop3:
   beq $t0, 0, out2
   lw $s4, 0($s1)
   move $a0, $s4
   li $v0,1
   syscall
   addi $s1,$s1,4
   addi $t0,$t0,-1
   j loop3 
   out2: 
   

   
