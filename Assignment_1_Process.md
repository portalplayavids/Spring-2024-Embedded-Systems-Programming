# Assignment 1 Process for part 1
### Starting with Python
---
1. Setup the Hello World Program.
    
    Name it: `hello_world.py`
2. Setup the Dockerfile with extension: ``` .dockerfile```

    For Python
    : ```python.dockerfile```
3. add opperands to the dockerfile

    In this case,
    ```docker
    FROM python:3

    WORKDIR /app

    COPY . /app
    
    COPY . .

    CMD ["Python", "hello_world.py"]
    ```
4. Run the Program.