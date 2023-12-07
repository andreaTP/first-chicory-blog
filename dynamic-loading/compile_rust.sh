#! /bin/bash
set -euxo pipefail

docker build . -t compile_example -f Dockerfile_rust
docker run --rm compile_example > example.wasm
