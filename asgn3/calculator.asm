#calculator.asm 
#Emilio Scott
#Assignment 3 - Calculator


.include "ecalls.asm"
.include "operations.asm"
e
.globl main

.data

welcome: 
	.asciz "Welcome to the Calulator Program.\n"
operations:
	.asciz "Operations - 1:add 2:subtract 3:multiply 4:divide 5:and 6:or 7:xor 8:lshift 9:rshift\n"
numOfOperations: 
	.asciz "\nNumber of operations peformed: "
enterNum1: 
	.asciz "\nEnter number: "
enterNum2: 
	.asciz "\nenter second number: "
result: 	
	.asciz "\nresult: " 
continue:
	.asciz "\nContinue (y/n)?: "
	
##============================ MAIN ============================##

# s0 = the number of operations done

main:
	li s0, 0 		# s0 = the number of operations 
	la a0 welcome
	jal ra, printString
	
operations: 
	la a0, operations 
	jal ra, printString
	la, a0, numOfOperations
	jal ra, printString


	
	
	
	
	
	