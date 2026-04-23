#operations.asm 
#Emilio Scott
#Assignment 3 - Calculator


.global addNums
.global subNums
.global multNums
.global divNums
.global andNums
.global orNums
.global xorNums
.global lshiftNums
.global unsignedRshiftNums

.text

##============================= CODE =============================##

addNums: 
	#takes two arguments in a0 and a1, and returns the sum of 
	#both in a0
	
subNums:
	#takes two arguments in a0 and a1, and returns the 
	#differnce of both in a0
	

multNums:
	#takes two arguments in a0 and a1, and returns the product
	#of both in a0
	

divNums:
	#takes two arguents in a0 and a1 and returns the quotient of
	#both and in a0


andNums:
	#bitwise AND takes in two arguments a0 and a1, and performs the
	#bitwise operation AND on both, comparing the bitwise 
	#represenation of both numbers, returning the product in a0  

orNums: 
	#bitwise OR takes in two arguments in a0 and a1, and performs the
	#bitiwse operation OR on both, comparing bitwise representation 
	#of both numbers, returning the product in a1

xorNums:
	#bitwise XOR takes in two arguments a0 and a1, and performse the 
	#bitwise operation XOR on both, comparing the bitwise 
	#representation of both numbers, returning the product in a0

lshiftNums:
	#
	

unsignedRshiftNums:
	#

