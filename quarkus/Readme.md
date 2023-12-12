# Quarkus server for WASM functions

In this example we will build a demo Quarkus application that is able to dynamically load and execute user-provided functions.

## Build

The steps to follow are described in the blog post, here you have a summary of the steps:

- create a Quarkus application with the Quarkus CLI `quarkus create`
- change the resteasy import to `<artifactId>quarkus-resteasy</artifactId>` in the `pom.xml`
- add the dependency on the Quarkus Jackson extension: `<artifactId>quarkus-resteasy-jackson</artifactId>` in the `pom.xml`
- add the dependency of Chicory in the `pom.xml`:
  ```xml
  <dependency>
    <groupId>com.dylibso.chicory</groupId>
    <artifactId>runtime</artifactId>
    <version>0.0.2</version>
  </dependency>
  ```
- delete the `.java` files under `src/main/java/org/acme` and use the sources in the `scaffold` folder
- update the sources with the files in the `complete` folder
- run the example in dev mode using `./mvnw quarkus:dev`
- exercise the example by loading a WASM program with:
  ```bash
  curl -v 'http://localhost:8080/wasm' -H 'Content-Type: application/octet-stream' --data-binary @../dynamic-loading/example.wasm
  ```
- execute the function on the user input:
  ```bash
  curl -v 'http://localhost:8080/compute' -H 'Content-Type: application/json' --data-raw '41'
  ```
- build the container image:
  ```bash
  docker build -f src/main/docker/Dockerfile.native-scratch -t chicory/getting-started .
  ```
- run the container image:
  ```bash
  docker run -i --rm -p 8080:8080 chicory/getting-started
  ```
- and you can test the application using the `curl` commands above
