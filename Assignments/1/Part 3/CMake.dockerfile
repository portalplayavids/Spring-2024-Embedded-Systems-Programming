FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential\
    cmake

COPY . app/

WORKDIR /app

RUN mkdir build && cd build 

RUN cmake ..

RUN make

CMD ["./hello"]