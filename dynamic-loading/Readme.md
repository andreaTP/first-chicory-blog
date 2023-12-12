# Dynamic loading of WASM modules

In this example we will compile a Rust program to WASM and use it from a command line application using [jbang](https://www.jbang.dev/)

## Build

To build the Rust program execute the script:

```
./compile_rust.sh
```

then build the container image to run the Java script:

```
./compile_java.sh
```

and execute with:

```
./run.sh
```

now you can change the file `example.rs` and follow again the build instructions to appreciate the differences.
