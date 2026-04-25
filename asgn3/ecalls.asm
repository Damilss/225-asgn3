#ecalls.asm 	
#Emilio Scott
 
 
.global printstring
.global printint
.global printchar
.global exitprogram
.global readchar
.global readint
.global printdouble

.data

divbyzeroerror:
	.asciz "\nError: divide by zero"

.text

##============================= CODE =============================##
printstring: 
	#subroutine receives an .asciz as an argument in 
	#argument register a0 and prints argument to i/o terminal
	li a7, 4
	ecall 
	jalr zero, ra, 0
	
printint: 
	#subrountine recieves an byte int as an argument in 
	#argument register a0 and prints the argument to i/o terminal
	li a7, 1
	ecall
	jalr zero, ra, 0
	
printchar:
	#receives an .ascii char as an argument in 
	#argument register a0 and prints the argument to i/o terminal
	li a7, 11
	ecall 
	jalr zero, ra, 0
	
exitprogram:
	#recives no arguments and and exits the progrmam
	li a7, 10
	ecall


readint:
	#receives no arguemnts and returns the readInt from the i/o 
	#terminal in a0
	li a7, 5
   	 ecall
    	jalr zero, ra, 0

readchar:
	# receives no arguments an returns teh readInt from The i/o terminal in a0
	readchar_loop:
    	li a7, 12          
    	ecall

    	li t0, '\n'
    	beq a0, t0, readchar_loop

    	jalr zero, ra, 0

printdouble:
	#recieves an 8 byte double from argument register fa0 and prints
	# it to the i/o terminal
	li a7, 3
    	ecall
    	jalr zero, ra, 0
	

	