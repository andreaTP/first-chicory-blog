#! /bin/bash
set -euxo pipefail

# clean the project and implement the endpoints
rm -rf ./src/test/java/org
rm -rf ./src/main/java/org/acme

mkdir -p ./code-with-quarkus/src/main/java/org/acme
cp -r ./scaffold/* ./code-with-quarkus/src/main/java/org/acme
