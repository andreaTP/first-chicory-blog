#! /bin/bash
set -euxo pipefail

(
  cd code-with-quarkus

  # Use resteasy not reactive:
    <dependency>
      <groupId>io.quarkus</groupId>
      <artifactId>quarkus-resteasy</artifactId>
    </dependency>

  # Add this import to pom.xml
    <dependency>
      <groupId>com.dylibso.chicory</groupId>
      <artifactId>runtime</artifactId>
      <version>0.0.2</version>
    </dependency>


  # and resteasy-jackson to use json payloads
    <dependency>
      <groupId>io.quarkus</groupId>
      <artifactId>quarkus-resteasy-jackson</artifactId>
    </dependency>
)