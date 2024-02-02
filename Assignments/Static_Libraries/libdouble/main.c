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
    
    printf("The result of adding % .02lf and %.02lf is %.02lf\n", a, b, result);
    printf("______________________________\n");
    printf("The result of subtracting %.02lf and %.02lf is %.02lf\n", a, b, result2);
    printf("______________________________\n");
    printf("The result of multiplying %.02lf and %.02lf is %.02lf\n", a, b, result3);
    printf("______________________________\n");
    printf("The result of dividing %.02lf and %.02lf is %.02lf\n", a, b, result4);

    return 0;
}