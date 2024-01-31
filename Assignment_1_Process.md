# Assignment 1 Process for part 1
### Starting with Python
---
1. Setup the Hello World Program.
    
    Name it: `hello_world.py`
2. Setup the Dockerfile with extension: ` .dockerfile`

    For Python
    : `python.dockerfile`
3. add opperands to the dockerfile

    In this case,
    ```docker
    FROM python:3

    WORKDIR /app

    COPY . /app
    
    COPY . .

    CMD ["Python", "hello_world.py"]
    ```
## How to build/run the app

1. **Build the container**
    : `$ docker build -t <tag> -f <"name".dockerfile> .`
    * **Note:** the "tag" is the name of the container.
        
        
    * **Full Line Example**
        
        For example, my tag for the assignment was...
        
        `pr0alpaca/my-python-app` 
        
        so the command would be...

        `$ docker build -t pr0alpaca/my-python-app -f python.dockerfile .`
    
    **the "-f" flag**
    : allows you to source a dockerfile. 
    
2. **Run the Container**
    : `$ docker run <tag>`

# ** Finished **