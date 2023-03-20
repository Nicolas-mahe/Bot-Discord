FROM ubuntu:22.04

RUN apt-get update && \
    apt-get --no-cache docker-compose && \
    apt-get git

WORKDIR /data
COPY . .