FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential

COPY hello.c app/

COPY makehello . app/

CMD ["make hello"]