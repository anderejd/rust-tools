###############################################################################
# Builder image
###############################################################################
FROM rust:latest AS builder
RUN cargo install cargo-edit

###############################################################################
# Final artifact image
###############################################################################
FROM rust:latest
COPY --from=builder $CARGO_HOME/bin $CARGO_HOME/bin

# There needs to be an initialized cargo cache for cargo-edit to work at all.
# TODO: File a bugreport.
RUN cargo search force_initialize_cargo_cache > /dev/null

WORKDIR /workdir
