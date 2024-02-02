// Elijah Guzman - NZE594
// Date: 02/01/2024
// Description: Basic Addition program for ONLY DOUBLE data types.

#include <stdio.h>
#include "double_arithmetic.h"

int main() {
    double a = 5.0;
    double b = 3.0;
    
    double result = add_double(a, b);
    double result2 = sub_double(a, b);
    double result3 = mul_double(a, b);
    double result4 = div_double(a, b);
    
    printf("The result of adding %lf and %lf is %lf\n", a, b, result);
    printf("______________________________\n");
    printf("The result of subtracting %lf and %lf is %lf\n", a, b, result2);
    printf("______________________________\n");
    printf("The result of multiplying %lf and %lf is %lf\n", a, b, result3);
    printf("______________________________\n");
    printf("The result of dividing %lf and %lf is %lf\n", a, b, result4);

    return 0;
}