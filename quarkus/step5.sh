#! /bin/bash
set -euxo pipefail

quarkus:dev &

curl -v 'http://localhost:8080/wasm' -H 'Content-Type: application/octet-stream' --data-binary @dynamic-loading/example.wasm
