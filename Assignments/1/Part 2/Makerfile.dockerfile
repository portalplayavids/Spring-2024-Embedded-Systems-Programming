FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential

COPY hello.c app/

COPY Makefile app/

WORKDIR /app

RUN make

CMD ["./hello"]