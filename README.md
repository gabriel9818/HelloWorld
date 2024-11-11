# HelloWorld - Java Spring Boot

HelloWorld is a simple Spring Boot application in Java, designed to demonstrate a basic "Hello, World!" setup using Docker.

## Requirements

- Docker
- Java 17 (optional, only if you want to run the application without Docker)

## Installation and Execution

1. Clone this repository:

    ```bash
    git clone https://github.com/yourusername/helloworld.git
    cd helloworld
    ```

2. Make sure to compile the project and generate the JAR file:

    ```bash
    ./mvnw clean package
    ```

3. Build the Docker image:

    ```bash
    docker build -t helloworld .
    ```

4. Run the Docker container:

    ```bash
    docker run -p 8080:8080 helloworld
    ```



## Dockerfile

This project includes a `Dockerfile` that performs the following actions:

- Uses the OpenJDK 17 base image.
- Sets a working directory in the container.
- Copies the generated JAR file to the container.
- Exposes port 8080 for accessing the application.
- Runs the application using `java -jar app.jar`.

## Notes

The generated JAR file should be in the `target` folder as `HelloWorld-0.0.1-SNAPSHOT.jar`. Make sure to compile the project before building the Docker image.
