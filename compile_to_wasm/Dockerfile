FROM rust:1.74

WORKDIR /usr/src/myapp
COPY . .

RUN rustup target add wasm32-unknown-unknown
RUN rustc count_vowels.rs --target=wasm32-unknown-unknown --crate-type=cdylib -C opt-level=0 -C debuginfo=0 -o count_vowels.wasm

ENTRYPOINT [ "cat", "count_vowels.wasm" ]
