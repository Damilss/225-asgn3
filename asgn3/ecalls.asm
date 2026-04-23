#ecalls.asm 	
#Emilio Scott
 
 
.global printString
.global printInt
.global printChar
.global exitPRogram
.global readChar
.global readInt

.text

##============================= CODE =============================##
printString: 
	#subroutine receives an .asciz as an argument in 
	#argument register a0 and prints argument to i/o terminal
	li a7, 4
	ecall 
	jalr 0, ra, 0
	
PrintInt: 
	#subrountine recieves an byte int as an argument in 
	#argument register a0 and prints the argument to i/o terminal
	li a7, 5
	ecall
	jalr 0, ra, 0
	
PrintChar:
	#receives an .ascii char as an argument in 
	#argument register a0 and prints the argument to i/o terminal
	li a7, 11
	ecall 
	jalr 0, ra
	
exitProgram:
	#recives no arguments and and exits the progrmam
	li a7, 10
	ecall


readInt:
	#receives no arguemnts and returns the readInt from the i/o 
	#terminal in a0


readChar:

printDouble:
	#recieves an 8 byte double from argument register a0 and prints
	# it to the i/o terminal
	