FROM rust:latest AS builder
RUN rustup toolchain install nightly
RUN cargo install cargo-edit
RUN cargo install cargo-udeps
RUN cargo install cargo-geiger
RUN cargo install cargo-deny
WORKDIR /workdir
