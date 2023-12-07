#! /bin/bash
set -euxo pipefail

# clean the project and implement the endpoints
rm -rf code-with-quarkus/src/test/java/org
rm -rf code-with-quarkus/src/main/java/org/acme

cp -r ./scaffold/* code-with-quarkus/src/main/java/org/acme
