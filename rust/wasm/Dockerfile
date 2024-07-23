FROM unit:1.32.1-wasm

RUN apt-get update && apt-get install -y  curl \
                                          gcc \
                                          libssl-dev \
                                          pkg-config

RUN useradd --create-home appuser

USER appuser

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain none -y

RUN ~/.cargo/bin/rustup default stable

ENV PATH="${PATH}:~/.cargo/bin"

RUN ~/.cargo/bin/cargo install cargo-component

RUN ~/.cargo/bin/rustup target add wasm32-wasi

RUN curl https://wasmtime.dev/install.sh -sSf | bash
