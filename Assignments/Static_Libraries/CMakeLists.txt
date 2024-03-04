# Set the minimum version of CMake required
cmake_minimum_required(VERSION 3.10)

# Define the project name and version
project(MixedLanguageApplication VERSION 1.0)

# Specify the C and C++ standards
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Set variables for the library names
set(C_LIBRARY arithmetic)
set(CPP_LIBRARY cpparithmetic)

# Add source files for the executable
include_directories(unity/src)
set(SOURCE_FILES src/test.c src/other_file.c unity/src/unity.c)
add_executable(test_runner ${SOURCE_FILES})

# Add a static library for C
add_library(${C_LIBRARY} STATIC libint/add_int.c libint/sub_int.c libint/mul_int.c libint/div_int.c)

# Add a static library for C++
add_library(${CPP_LIBRARY} STATIC libdouble/add_double.cpp libdouble/sub_double.cpp libdouble/mul_double.cpp libdouble/div_double.cpp)

# Link the executable with both C and C++ libraries
target_link_libraries(Arithmetic ${C_LIBRARY} ${CPP_LIBRARY})