#include <stdio.h>
#include "operations.h"

int main() {
   int num1,num2,op,result;
   char cont = 'y';
   int opcnt = 0;
   printf("Welcome to the Calculator program.\n");
   printf("Operations - 1:add 2:subtract 3:multiply 4:divide 5:and 6:or 7:xor 8:lshift 9:rshift\n");

   while(cont !='n')
   {
      printf("\nNumber of operations performed: ");
      printf("%d", opcnt);
      printf("\nEnter number: ");
      scanf("%d", &num1);
      printf("Enter second number: ");
      scanf("%d", &num2);
      printf("Select operation: ");
      scanf("%d", &op);
      printf("Result: ");
      if (op == 1) {
         result = addnums(num1,num2);
         printf("%d\n", result);
      }
      else if ( op ==2) {
            result = subnums(num1,num2);
            printf("%d\n", result);
      }
      else if ( op == 3 ) {
            result = multnums(num1,num2);
            printf("%d\n", result);
      }
      else if ( op ==  4) {
            result = divnums(num1,num2);
            printf("%d\n", result);
      }
      else if ( op == 5) {
            result = andnums(num1,num2);
            printf("%d\n", result);
      }
      else if ( op == 6) {
            result = ornums(num1,num2);
            printf("%d\n", result);
      }
      else if (op == 7) {
            result = xornums(num1,num2);
            printf("%d\n", result);
      }
      else if (op == 8) {
            result = lshiftnums(num1,num2);
            printf("%d\n", result);
      }
      else if (op == 9) {
            result = rshiftnums(num1,num2);
            printf("%d\n", result);
      }
      else {
            printf("Invalid Operation\n");
      }

      printf("Continue (y/n)?: ");
      scanf(" %c", &cont);
      opcnt++;
   }

   printf("\nNumber of operations performed: ");
   printf("%d", opcnt);
   printf("\nExiting\n");
   return 0;
}