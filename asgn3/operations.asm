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

##============================= CODE  =============================##

addnums: 
	#takes two arguments in a0 as int and a1 as int, and returns the sum of 
	#both in a0 as int
	add a0, a0, a1
	jalr zero, ra, 0
	
subnums:
	#takes two arguments in a0 as int and a1 as int, and returns the 
	#difference of both in a0 as int
	sub a0, a0, a1
	jalr zero, ra, 0
	

multnums:
	#takes two arguments in a0 as int and a1 as int, and returns the product
	#of both in a0 as int
	mul a0, a0, a1
	jalr zero, ra, 0 
	
divnums:
	#takes two arguents in a0 as int and a1 as int and returns the quotient of
	#both and in a0 as int
	div a0, a0, a1 
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

