FROM python:3

WORKDIR /app

COPY . /app

COPY . .

CMD [ "python", "hello.py" ]