#calculator.asm 
#Emilio Scott
#Assignment 3 - Calculator


.include "ecalls.asm"
.include "operations.asm"

.globl main

.data

welcome: 
	.asciz "Welcome to the Calulator Program.\n"
operations:
	.asciz "\nOperations - 1:add 2:subtract 3:multiply 4:divide 5:and 6:or 7:xor 8:lshift 9:rshift\n"
numOfOperations: 
	.asciz "\nNumber of operations peformed: "
enterNum1: 
	.asciz "\nEnter number: "
enterNum2: 
	.asciz "\nenter second number: "
selectOperation:
	.asciz "\nSelect operation: "
result: 	
	.asciz "\nresult: " 
continue:
	.asciz "\nContinue (y/n)?: "
exiting: 
	.asciz "Exiting"
invalidoperation:
	.asciz "Invalid Operations\n"	
##============================ MAIN ============================##

.text

# s0 = the number of operations done

main:
    li s0, 0                  # number of operations performed


    la a0, welcome
    jal ra, printstring


main_loop:
    la a0, operations
    jal ra, printstring

    la a0, numOfOperations
    jal ra, printstring
    mv a0, s0
    jal ra, printint

    la a0, enterNum1
    jal ra, printstring
    jal ra, readint
    la a0, enterNum2
    jal ra, printstring
    jal ra, readint
    mv s2, a0                 # second number

    la a0, selectOperation
    jal ra, printstring
    jal ra, readint
    mv s3, a0                 # selected operation

    mv a0, s1
    mv a1, s2
    


    li t0, 1
    beq s3, t0, do_add

    li t0, 2
    beq s3, t0, do_sub

    li t0, 3
    beq s3, t0, do_mult

    li t0, 4
    beq s3, t0, do_div

    li t0, 5
    beq s3, t0, do_and

    li t0, 6
    beq s3, t0, do_or

    li t0, 7
    beq s3, t0, do_xor

    li t0, 8
    beq s3, t0, do_lshift

    li t0, 9
    beq s3, t0, do_rshift
    
    la a0, invalidoperation	
    jal, ra, printsring

    b continue_prompt        # invalid choice: skip result, ask continue


do_add:
    jal ra, addnums
    b show_result


do_sub:
    jal ra, subnums
    b show_result

do_mult:
    jal ra, multnums
    b show_result


do_div:
    jal ra, divnums
    b show_result
    

do_and:
    jal ra, andnums
    b show_result


do_or:
    jal ra, ornums
    b show_result


do_xor:
    jal ra, xornums
    b show_result


do_lshift:
    jal ra, intlshiftnums
    b show_result

do_rshift:
    jal ra, unsignedintrshiftnums
    b show_result


show_result:
    mv s4, a0                 # save result before printing text
    addi s0, s0, 1            # go over operation count

    la a0, result
    jal ra, printstring

    mv a0, s4
    jal ra, printint
    


continue_prompt:
    la a0, continue
    jal ra, printstring

    jal ra, readchar

    li t0, 'y'
    beq a0, t0, main_loop

    li t0, 'n'
    beq a0, t0, doexit

    b continue_prompt



doexit:
    la a0, numOfOperations
    la a0, printstring
    la a0, exiting
    jal ra, printstring
    jal ra, exitprogram
