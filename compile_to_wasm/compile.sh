#! /bin/bash
set -euxo pipefail

docker build . -t compile_count_vowels
docker run --rm compile_count_vowels > count_vowels.wasm
