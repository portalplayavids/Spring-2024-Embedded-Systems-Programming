FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential

COPY arithmetic.c app/

COPY libdouble app/

COPY libint app/

WORKDIR /app/libint

RUN ["gcc -fPIC -c add_int.c -o add_int.o"]
RUN ["gcc -fPIC -c sub_int.c -o sub_int.o"]
RUN ["gcc -fPIC -c mul_int.c -o mul_int.o"]
RUN ["gcc -fPIC -c div_int.c -o div_int.o"]

RUN ["gcc -shared -o libarithmetic.so add_int.o sub_int.o mul_int.o div_int.o"]

RUN ["rm add_int.o"]
RUN ["rm sub_int.o"]
RUN ["rm mul_int.o"]
RUN ["rm div_int.o"]

WORKDIR /app/libdouble

RUN ["gcc -fPIC -c add_double.cpp -o add_double.o"]
RUN ["gcc -fPIC -c sub_double.cpp -o sub_double.o"]
RUN ["gcc -fPIC -c mul_double.cpp -o mul_double.o"]
RUN ["gcc -fPIC -c div_double.cpp -o div_double.o"]

RUN ["gcc -shared -o libcpparithmetic.so add_double.o sub_double.o mul_double.o div_double.o"]

RUN ["rm add_double.o"]
RUN ["rm sub_double.o"]
RUN ["rm mul_double.o"]
RUN ["rm div_double.o"]

WORKDIR /app

RUN ["mv libint/libarithmetic.so ./libarithmetic.so"]
RUN ["mv libdouble/libcpparithmetic.so ./libcpparithmetic.so"]

RUN ["gcc -o ArtihmeticTool arithmetic.c -L. -l:libarithmetic.so -l:libcpparithmetic.so"]
RUN ["echo Build Complete!"]

RUN ["echo Running ./ArtihmeticTool"]
RUN ["export LD_LIBRARY_PATH=$PWD"]

CMD ["./Arithmetictool"]

RUN ["echo Cleaning Up!"]

RUN ["rm libarithmetic.so"]
RUN ["rm libcpparithmetic.so"]
RUN ["rm ArtihmeticTool"]

RUN ["echo Clean Up Complete!"]