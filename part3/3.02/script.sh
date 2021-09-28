#!/bin/bash

git clone https://github.com/GTS08/docker-hy.github.io.git

docker build -t gts10/docker-hy:latest ./docker-hy.github.io
docker login
docker push gts10/docker-hy:latest
