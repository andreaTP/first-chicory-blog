#! /bin/bash
set -euxo pipefail

quarkus:dev &

# and test the endpoints:

curl -v 'http://localhost:8080/wasm' -H 'Content-Type: application/octet-stream' --data-binary @dynamic-loading/example.wasm

curl -v 'http://localhost:8080/compute' -H 'Content-Type: application/json' --data-raw '1'
