FROM rust:latest

WORKDIR /source

COPY . ./

RUN apt update \
    && apt upgrade -y \
    && apt install gnucobol -y \
    && apt clean


RUN chmod +x ./scripts/bash/environment.sh




