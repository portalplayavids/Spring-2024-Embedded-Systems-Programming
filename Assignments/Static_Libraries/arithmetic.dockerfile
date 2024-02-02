FROM ubuntu:22.04

RUN apt-get update && apt-get install -y build-essential

COPY arithmetic.c app/

COPY Makefile app/

COPY libdouble app/

COPY libint app/

WORKDIR /app

RUN make

CMD ["./Arithmetic"]