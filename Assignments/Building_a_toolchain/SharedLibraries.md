# Shared Libraries

## What is a Shared Library?

Collections of functions that are loaded by applications at runtime. In linux, 
the extension is `.so`

## Creating a Shared Library

1. Create your Source Files: 

    in C, `"add.c", "sub.c", etc.`
    
    in C++, `"add.cpp", "sub.cpp", etc.`

2. Compile Source Files into position-independent code (PIC)

    in C,
    
    `gcc -fPIC -c add.c -o add.o` 
    
    and/or 
    
    `gcc -fPIC -c sub.c -o sub.o`
    
    in C++, 
    
    `g++ -fPIC -c add.cpp -o add.o`

    and/or

    `g++ -fPIC -c sub.cpp -o sub.o`

3. Create Shared Library: (`-shared` flag extension)

    in C, 
    
    `gcc -shared -o libarithmetic.so add.o sub.o`

    in C++, 
    
    `g++ -shared -o libcpparithmetic.so add.o sub.o`

4. Link the Shared Library:

    At Compile Time, 
    
    `gcc -o example main.c -L. -larithmetic -lcpparithmetic` 
    
    At Runtime, 
    
    If the Library is NOT in...

    `/usr/lib`

    or

    `usr/local/lib`

    Update the Environmental Variable (`LD_LIBRARY_PATH`)

    `export LD_LIBRARY_PATH=/path/to/library:$LD_LIBRARY_PATH`
---
# Makefile
### Copy/Paste Template then Modify for Use Case

```bash
# Phony targets
.PHONY: all clean

# Compiler and flags
CC = gcc
CXX = g++
CFLAGS = -Wall -g -fPIC
CXXFLAGS = -Wall -g -fPIC
LDFLAGS = -L.

# Libraries
C_LIBRARY = libarithmetic.so
CPP_LIBRARY = libcpparithmetic.so

# Source and object files
C_SOURCES = add.c subtract.c
CPP_SOURCES = divide.cpp multiply.cpp
OBJECTS = $(C_SOURCES:.c=.o) $(CPP_SOURCES:.cpp=.o)
EXECUTABLE = example

# Default target
all: $(C_LIBRARY) $(CPP_LIBRARY) $(EXECUTABLE)

# C shared library
$(C_LIBRARY): $(C_SOURCES)
$(CC) $(CFLAGS) -shared -o $@ $^

# C++ shared library
$(CPP_LIBRARY): $(CPP_SOURCES)
$(CXX) $(CXXFLAGS) -shared -o $@ $^

# Main executable
$(EXECUTABLE): main.cpp
$(CXX) $(CXXFLAGS) $(LDFLAGS) -o $@ $^ -larithmetic -lcpparithmetic

# Clean up
clean:
rm -f $(EXECUTABLE) $(OBJECTS) $(C_LIBRARY) $(CPP_LIBRARY)
```
---
# CMakeLists.txt
## Copy/Paste Template then Modify for Use Case
```bash
cmake_minimum_required(VERSION 3.10)
project(MixedLanguageSharedLibraries VERSION 1.0)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED True)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# set(CMAKE_SKIP_RPATH TRUE)

# Add the shared libraries
add_library(arithmetic SHARED add.c subtract.c)
add_library(cpparithmetic SHARED divide.cpp multiply.cpp)

# Add the executable
add_executable(example main.cpp)

# Link the executable with the shared libraries
target_link_libraries(example arithmetic cpparithmetic)
```
    


