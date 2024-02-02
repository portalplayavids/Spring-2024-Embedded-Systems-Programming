FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential

COPY arithmetic-CPP.c app/

COPY Makefile app/

WORKDIR /app

RUN make

CMD ["./Arithmetic"]