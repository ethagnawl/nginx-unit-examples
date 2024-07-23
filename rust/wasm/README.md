## Build (on host; for now)
Note: The unit/wasm image needs to be further modified to support arbitrary
wasi builds because it doesn't expose cargo, rustc, wasmtime, etc.

I will come back to this and extend the unit:wasm image to add a temporary
build stage which builds the wasm binary.
```
cargo component build --release
chmod +r test-wasi/component/target/wasm32-wasi/release/test_wasi_component.wasm
```

## Run
```
docker-compose up --build
```
