.text
   li $s1,4
   li $s2,5
   li $s3,4
   li $s4,5
   bne $s3, $s4, Else # Se $s3 != $s4 ---> Else
   sub $s0, $s1, $s2
   j Exit #JUMP
   Else: 
       add $s0, $s1, $s2
   Exit: 
   
#----------------------------------------------
.text 
  li $t0, 0 
  li $t2, 0
  WHILE: ble $t0,2, Loop # $t0 <= 2 | 0 1 2 3
  j Exit
  Loop: 
       add $t2,$t2,1 # $t2++
       add $t0,$t0,1 # $t0++
       j WHILE
  Exit: