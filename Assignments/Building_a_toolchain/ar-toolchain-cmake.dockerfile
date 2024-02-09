FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential\
    cmake

COPY . app/

WORKDIR /app

RUN rm -rf build

RUN mkdir build && cd build && cmake .. && make

CMD ["./build/ArithmeticTool"]
