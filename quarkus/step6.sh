#! /bin/bash
set -euxo pipefail

cd code-with-quarkus

docker build -f src/main/docker/Dockerfile.native-scratch -t chicory/getting-started .

# and test the endpoints:

curl -v 'http://localhost:8080/wasm' -H 'Content-Type: application/octet-stream' --data-binary @dynamic-loading/example.wasm

curl -v 'http://localhost:8080/compute' -H 'Content-Type: application/json' --data-raw '1'
