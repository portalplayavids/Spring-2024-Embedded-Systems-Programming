// Elijah Guzman - NZE594
// Date: 02/01/2024
// Description: Header file for declaring the functions for libint library

#include <stdio.h>

int add_int(int a, int b){
    return a + b;
}

int sub_int(int a, int b){
    return a - b;
}

int mul_int(int a, int b){
    return a * b;
}

int div_int(int a, int b){
    if (b == 0){
        return 0;
    }

    return a / b;
}
