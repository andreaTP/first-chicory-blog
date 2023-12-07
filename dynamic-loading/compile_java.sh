#! /bin/bash
set -euxo pipefail

docker build . -t compile_jbang_example -f Dockerfile_java
