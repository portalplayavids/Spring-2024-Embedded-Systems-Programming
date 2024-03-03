#!/bin/bash

# Use this script for: INITIAL SETUP

# set -x # Print commands and their arguments as they are executed
set -e # Exit immediately if a command exits with a non-zero status

#########################################################################################

# Make the Utility scripts executable
echo
echo "--------------------------------------------------------------"
echo "||Making setup scripts executables||"
echo "--------------------------------------------------------------"
echo
chmod +x CleanUp.sh entrypoint.sh envsetup.sh ReCompile.sh

#########################################################################################

# Begin Build Process
echo
echo "------------------------------------------------------------"
echo "||   Building arithmetic  ||"
echo "------------------------------------------------------------"
echo

# Compile libartihmetic for int operations

cd libint

g++ -c add_int.c -o add_int.o
g++ -c sub_int.c -o sub_int.o
g++ -c mul_int.c -o mul_int.o
g++ -c div_int.c -o div_int.o
ar rcs libarithmetic.a add_int.o sub_int.o mul_int.o div_int.o

# Index libarithmetic.a

ranlib libarithmetic.a

# Move libarithmetic.a into working directory
echo
echo "------------------------------------------------------------"
echo "||Moving library libarithmetic.a into working directory...||"
echo "------------------------------------------------------------"
echo

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
echo
echo "------------------------------------------------------------"
echo "||Moving library libcpparithmetic.a into working directory...||"
echo "------------------------------------------------------------"

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

echo
echo "------------------------------------------------------------"
echo "||     Build complete!    ||"
echo "------------------------------------------------------------"
echo

# Compile Arithmetic
g++ -o Arithmetic arithmetic-CPP.cpp -L. -larithmetic -lcpparithmetic

echo
echo "------------------------------------------------------------"
echo "||   Compiled Arithmetic  ||"
echo "------------------------------------------------------------"
echo

# Run Arithmetic

echo
echo "------------------------------------------------------------"
echo "|| Now Running Arithmetic ||"
echo "------------------------------------------------------------"
echo

export LD_LIBRARY_PATH=$PWD
# ./arithmetic

########################################################################################

# # Setup for cross-compiling on ARM Architecture
# echo
# echo "------------------------------------------------------------"
# echo "||   Setting up for cross-compiling from ARM architecture  ||"
# echo "------------------------------------------------------------"
# echo

# # Build docker image for ARM 
# docker buildx build --platform linux/amd64 -f ToolSetup.dockerfile -t duo-sdk .

# Setup for cross-compiling on x86-64 Architecture
echo
echo "------------------------------------------------------------"
echo "||   Setting up for cross-compiling from x86-64 architecture  ||"
echo "------------------------------------------------------------"
echo

# Build docker image for x86-64
docker build -t pr0alpaca/duo-sdk-shared -f ToolSetup.dockerfile .

# Configure the Directory
echo
echo "------------------------------------------------------------"
echo "||   Configuring the directory  ||"
echo "------------------------------------------------------------"
echo

docker run --rm -v $PWD:/app -t duo-sdk bash -c "mkdir build && cd build && cmake -DCMAKE_TOOLCHAIN_FILE=/app/milkv_duo.cmake .."

# Run docker container
echo
echo "------------------------------------------------------------"
echo "||  Starting Docker Container: pr0alpaca/duo-sdk-SHARED  ||"
echo "------------------------------------------------------------"
echo

# # ARM Architecture
# docker run --platform linux/amd64 --rm -v $PWD:/app -t duo-sdk bash -c "cd build && cmake .. && make"

# x86-64 Architecture
docker run --rm -v $PWD:/app -t duo-sdk bash -c "cd build && cmake .. && make"

# # Clean up artifacts
# rm arithmetic
# rm libarithmetic.a
# rm libcpparithmetic.a

# echo 
# echo "------------------------------------------------------------"
# echo "|| Cleaned up artifacts. ||"
# echo "------------------------------------------------------------"
# echo