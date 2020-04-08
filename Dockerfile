FROM rust:latest

# RUN rustc --version
RUN cargo install cargo-edit
WORKDIR /workdir
