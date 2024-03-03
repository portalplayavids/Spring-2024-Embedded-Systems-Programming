#!/bin/bash

set -x
set -e

# Compile libartihmetic for int operations

cd libint

gcc -c add_int.c -o add_int.o
gcc -c sub_int.c -o sub_int.o
gcc -c mul_int.c -o mul_int.o
gcc -c div_int.c -o div_int.o
ar rcs libarithmetic.a add_int.o sub_int.o mul_int.o div_int.o

# Index libarithmetic.a

ranlib libarithmetic.a

# Move libarithmetic.a into working directory
echo Moving library into working directory...

mv libarithmetic.a ..

cd ..

# Link libarithmetic.a to a program

# gcc -o arithmetic arithmetic.c -L. -larithmetic

# Clean up artifacts

cd libint

rm add_int.o
rm sub_int.o
rm mul_int.o
rm div_int.o

cd ..

# Compile libcpparithmetic for double operations

cd libdouble

g++ -c add_double.cpp -o add_double.o
g++ -c sub_double.cpp -o sub_double.o
g++ -c mul_double.cpp -o mul_double.o
g++ -c div_double.cpp -o div_double.o
ar rcs libcpparithmetic.a add_double.o sub_double.o mul_double.o div_double.o

# Index libcpparithmetic.a
ranlib libcpparithmetic.a

# Move libcpparithmetic.a into working directory
echo Moving library into working directory...

mv libcpparithmetic.a ..

cd ..

# Link libcpparithmetic.a to a program
# g++ -o arithmetic arithmetic-CPP.cpp -L. -lcpparithmetic

# Clean up artifacts

cd libdouble

rm add_double.o
rm sub_double.o
rm mul_double.o
rm div_double.o

cd ..

echo Build complete.

# Compile arithmetic
g++ -o arithmetic arithmetic-CPP.cpp -L. -larithmetic -lcpparithmetic
echo Compiled arithmetic.

# Run arithmetic
echo Running ./arithmetic
export LD_LIBRARY_PATH=$PWD
./arithmetic

# Clean up artifacts
rm arithmetic
rm libarithmetic.a
rm libcpparithmetic.a

echo Cleaned up artifacts.