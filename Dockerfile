FROM rust:latest AS builder
#RUN rustup toolchain install nightly
RUN cargo install cargo-edit
RUN cargo install cargo-udeps
RUN cargo install cargo-deny
RUN cargo install cargo-audit
#RUN cargo install cargo-geiger
WORKDIR hello-world
COPY hello-world .
RUN cargo build --release
RUN cargo audit
WORKDIR /workdir
