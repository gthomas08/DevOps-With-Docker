# Containerized Project

## Explanation

A simple Dockerfile was set in order to set up the backend service.
Mongodb was set and connected to the backend service in docker-compose.yml.

## Installation

1. Clone the repo
   ```bash
   git clone https://github.com/GTS08/URL-Shortener-Microservice.git
   ```
2. Go to project directory
   ```bash
   cd URL-Shortener-Microservice
   ```
3. Move Dockerfile and docker-compose.yml into project directory
   ```bash
   cp ../Dockerfile ../docker-compose.yml .
   ```

4. Run the following command.
   ```bash
   docker-compose up
   ```

Test that the project is running by going to http://localhost:8080.
