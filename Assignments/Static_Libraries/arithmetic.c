// Elijah Guzman - NZE594
// Date: 02/01/2024
// Description: Basic Arithmetic program for ONLY INT data types.

#include <stdio.h>
#include "libint/int_arithmetic.h" //Uncomment this line to be used in local machine.
//#include "int_arithmetic.h"//Uncomment this line to be used in docker.

int main() {
    int a = 5.0;
    int b = 3.0;
    
    int result = add_int(a, b);
    int result2 = sub_int(a, b);
    int result3 = mul_int(a, b);
    int result4 = div_int(a, b);
    
    printf("The result of adding %d and %d is %d\n", a, b, result);
    printf("______________________________\n");
    printf("The result of subtracting %d and %d is %d\n", a, b, result2);
    printf("______________________________\n");
    printf("The result of multiplying %d and %d is %d\n", a, b, result3);
    printf("______________________________\n");
    printf("The result of dividing %d and %d is %d\n", a, b, result4);

    return 0;
}