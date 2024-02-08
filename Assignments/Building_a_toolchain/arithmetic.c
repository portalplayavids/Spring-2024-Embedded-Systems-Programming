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
    
    float result = add_int(a, b);
    float result2 = sub_int(a, b);
    float result3 = mul_int(a, b);
    float result4 = div_int(a, b);
    
    printf("The result of adding % .02lf and %.02lf is %.02lf\n", a, b, result);
    printf("______________________________\n");
    printf("The result of subtracting %.02lf and %.02lf is %.02lf\n", a, b, result2);
    printf("______________________________\n");
    printf("The result of multiplying %.02lf and %.02lf is %.02lf\n", a, b, result3);
    printf("______________________________\n");
    printf("The result of dividing %.02lf and %.02lf is %.02lf\n", a, b, result4);

    return 0;
}