# Shared Libraries

## What is a Shared Library?

Collections of functions that are loaded by applications at runtime. In linux, 
the extension is `.so`

## Creating a Shared Library

1. Create your Source Files: 
    in C, `"add.c", "sub.c", etc.`
    in C++, `"add.cpp", "sub.cpp", etc.`

2. Compile Source Files into position-independent code (PIC)
    in C, `gcc -fPIC -c add.c -o add.o` and/or `gcc -fPIC -c sub.c -o sub.o`
    in C++, `g++ -fPIC -c add.cpp -o add.o` and/or `g++ -fPIC -c sub.cpp -o sub.o`

3. Create Shared Library: (`-shared` flag extension)
    in C, `gcc -shared -o libarithmetic.so add.o sub.o`
    in C++, `g++ -shared 0o libcpparithmetic.so add.o sub.o`

4. Link the Shared Library: 
    At Compile Time, `gcc -o example main.c -L. -larithmetic -lcpparithmetic` 
    At Runtime, `



