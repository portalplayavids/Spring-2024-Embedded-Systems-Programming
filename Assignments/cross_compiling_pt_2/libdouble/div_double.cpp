// Elijah Guzman - NZE594
// Date: 02/01/2024
// Description: Basic Division program for ONLY DOUBLE data types.

#include <iostream>
#include "double_arithmetic.h"

double div_double(double a, double b) {
    if (b == 0) {
        std::cerr << "Error: Division by zero is undefined." << std::endl;
        return 0;
    }

    return a / b;
}
