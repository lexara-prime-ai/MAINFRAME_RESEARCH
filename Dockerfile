FROM bitnami/minideb:latest

WORKDIR /source

COPY . .

RUN apt update && apt upgrade -y
RUN apt install curl build-essential gcc make -y  && apt clean
RUN wget -qO - https://sh.rustup.rs | RUSTUP_HOME=/opt/rust CARGO_HOME=/opt/rust sh -s -- --no-modify-path -y

RUN echo 'export RUSTUP_HOME=/opt/rust' | tee -a /etc/profile.d/rust.sh
RUN echo 'export PATH=$PATH:/opt/rust/bin' | tee -a /etc/profile.d/rust.sh

RUN . /etc/profile
RUN echo "$RUSTUP_HOME"
RUN echo "$PATH"

CMD ["rustc", "--version"]