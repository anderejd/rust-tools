# rust-tools
A personal minimal docker container wrapper for some of the tools that can't
install or run on all my systems. OpenSSL is not available on macOS for
example, required by `cargo-edit`, `cargo-audit` and every tool that depen on
the `cargo` library crate.
