#! /bin/bash
set -euxo pipefail

# clean the project and implement the endpoints
rm ./code-with-quarkus/src/main/java/org/acme/WasmService.java
cp -r ./complete/WasmService.java ./code-with-quarkus/src/main/java/org/acme/WasmService.java
