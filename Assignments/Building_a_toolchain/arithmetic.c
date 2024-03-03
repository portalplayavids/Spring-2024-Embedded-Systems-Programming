// Elijah Guzman - NZE594
// Date: 02/01/2024
// Description: Basic Addition program for ONLY DOUBLE data types.

#include <stdio.h>
#include "libint/int_arithmetic.h" //Uncomment this line to be used in local machine.
#include "libdouble/double_arithmetic.h" //Uncomment this line to be used in local machine.
//#include "double_arithmetic.h"//Uncomment this line to be used in docker.

int main() {
    float a = 5.0;
    float b = 3.0;

    int c = 5;
    int d = 3;
    
    int result = add_int(a, b);
    int result2 = sub_int(a, b);
    int result3 = mul_int(a, b);
    int result4 = div_int(a, b);
    float result5 = add_double(a, b);
    float result6 = sub_double(a, b);
    float result7 = mul_double(a, b);
    float result8 = div_double(a, b);

    
   printf("The result of int type adding %d and %d is %d\n", c,d, result);
    printf("______________________________\n");
    printf("The result of int type subtracting %d and %d is %d\n", c,d, result2);
    printf("______________________________\n");
    printf("The result of int type multiplying %d and %d is %d\n", c,d, result3);
    printf("______________________________\n");
    printf("The result of int type dividing %d and %d is %d\n", c,d, result4);
    printf("______________________________\n");
    printf("______________________________\n");
    printf("The result of double type adding %.02lf and %.02lf is %.02lf\n", a, b, result5);
    printf("______________________________\n");
    printf("The result of double type subtracting %.02lf and %.02lf is %.02lf\n", a, b, result6);
    printf("______________________________\n");
    printf("The result of double type multiplying %.02lf and %.02lf is %.02lf\n", a, b, result7);
    printf("______________________________\n");
    printf("The result of double type dividing %.02lf and %.02lf is %.02lf\n", a, b, result8);
    
    return 0;
}