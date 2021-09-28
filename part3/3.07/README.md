# Images Size

The original Dockerfile is from exercise 1.15.

### Before

```
REPOSITORY               TAG           IMAGE ID       CREATED         SIZE
timestamp-microservice   latest        47bb3157c602   2 minutes ago   138MB
```

### After

```
REPOSITORY               TAG           IMAGE ID       CREATED         SIZE
timestamp-microservice   latest        84371882bc13   2 minutes ago   119MB
```

## Installation

1. Clone the repo
   ```bash
   git clone https://github.com/GTS08/Timestamp-Microservice.git
   ```
2. Go to project directory
   ```bash
   cd Timestamp-Microservice
   ```
3. Move Dockerfile and docker-compose.yml into project directory
   ```bash
   cp ../Dockerfile  .
   ```

4. Run the following command.
   ```bash
   docker build . -t timestamp-microservice && sudo docker run -p 8080:8080 timestamp-microservice
   ```

Test that the project is running by going to http://localhost:8080.
