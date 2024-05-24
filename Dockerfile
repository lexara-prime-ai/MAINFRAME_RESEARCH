FROM rust:latest

WORKDIR /source

COPY . /source/

RUN apt update \
    && apt upgrade -y \
    && apt install gnucobol -y \
    && apt clean







