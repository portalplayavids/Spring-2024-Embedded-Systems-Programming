#!/bin/bash

set -e

# Compile libarithmetic for int operations

cd libint

gcc -fPIC -c add_int.c -o add_int.o
gcc -fPIC -c sub_int.c -o sub_int.o
gcc -fPIC -c mul_int.c -o mul_int.o
gcc -fPIC -c div_int.c -o div_int.o
gcc -shared -o libarithmetic.so add_int.o sub_int.o mul_int.o div_int.o

# Clean up artifacts

rm add_int.o
rm sub_int.o
rm mul_int.o
rm div_int.o

cd ..

# Compile libcpparithmetic for double operations

cd libdouble

g++ -fPIC -c add_double.cpp -o add_double.o
g++ -fPIC -c sub_double.cpp -o sub_double.o
g++ -fPIC -c mul_double.cpp -o mul_double.o
g++ -fPIC -c div_double.cpp -o div_double.o
g++ -shared -o libcpparithmetic.so add_double.o sub_double.o mul_double.o div_double.o

# Clean up artifacts

rm add_double.o
rm sub_double.o
rm mul_double.o
rm div_double.o

cd ..

# Move libraries into working directory

mv ./libint/libarithmetic.so ./libarithmetic.so
mv ./libdouble/libcpparithmetic.so ./libcpparithmetic.so

# Compile example

gcc -o example arithmetic.c -L. -l:libarithmetic.so -l:libcpparithmetic.so
echo Build complete.

# Run example

echo Running ./example
export LD_LIBRARY_PATH=$PWD
./example

# Clean up artifacts

rm example
rm libarithmetic.so
rm libcpparithmetic.so