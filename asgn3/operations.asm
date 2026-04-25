#operations.asm 
#Emilio Scott
#Assignment 3 - Calculator


.global addnums
.global subnums
.global multnums
.global divnums
.global andnums
.global ornums
.global xornums
.global intlshiftnums
.global unsignedintrshiftnums

.text

##=============================  =============================##

addnums: 
	#takes two arguments in a0 as int and a1 as int, and returns the sum of 
	#both in a0 as int
	add a0, a0, a1
	jalr zero, ra, 0
	
subnums:
	#takes two arguments in a0 as int and a1 as int, and returns the 
	#differnce of both in a0 as int
	mv t0, a0		#moving value in a0 so it doesn't get removed
	sub a0, t0, a1
	jalr zero, ra, 0
	

multnums:
	#takes two arguments in a0 as int and a1 as int, and returns the product
	#of both in a0 as int
	 mv t0, a0		#moving value in a0 so it doesn't get removed
	 li a0, 0		#t0 = product 1, a1 = product 2, #a0 is the return
	 li t1, 0		# int i = 0;
fordef1:
	bge t1, a1, forend1	#if t1 >= a1, go to forEnd1
forbody1:
	add a0, a0, t0
	addi t1, t1, 1
	b fordef1 
forend1:			#t1 * a1 = a0
	jalr zero, ra, 0	#end program 
	
divnums:
	#takes two arguents in a0 as int and a1 as int and returns the quotient of
	#both and in a0 as int
	mv t0, a0		#Moving a0 value to t1 so it doesn't get removed (dividend)
	li a0, 0		#resetting a0, since a0 will be our counter and our return argument		
fordef2:
	beq a1, zero, errorzero	#divide by zero err!!
	blt t0, a1, forend2	#if the dividend is less than the remianing in the dividend, it end 
forbody:
	sub t0, t0, a1		
	addi a0,a0, 1
	b fordef2
errorzero:
	la a0, divbyzeroerror #load string for error
	jal ra, printstring 
forend2:
	jalr zero, ra, 0
	

andnums:
	#bitwise AND takes in two arguments a0 as int and a1 as int, and performs the
	#bitwise operation AND on both, comparing the bitwise 
	#represenation of both numbers, returning the product in a0 as int.	
	and a0, a0, a1
	jalr zero, ra, 0
	
	
ornums: 
	#bitwise OR takes in two arguments in a0 and a1, and performs the
	#bitiwse operation OR on both, comparing bitwise representation 
	#of both numbers, returning the product in a1
	or a0, a0, a1
	jalr zero, ra, 0

xornums:
	#bitwise XOR takes in two arguments a0 and a1, and performs the 
	#bitwise operation XOR on both, comparing the bitwise 
	#representation of both numbers, returning the product in a0
	xor a0, a0, a1
	jalr zero, ra, 0

intlshiftnums:
	#takes in two arguments as a0 as int and a1 as int, and shifts every bit over 1,
	#returning the operation as a shifted value, represents value as int in returning 
	#argument register as a0
	sll a0, a0, a1
    	jalr zero, ra, 0
	
	
	

unsignedintrshiftnums:
	#takes in two arugments as a0 as int and a1 as int, and shifts every bit over 1
	#returnign the operations as a shifted valued, respresents value as int reutnring
	#arugment as a0
	srl a0, a0, a1
    jalr zero, ra, 0

