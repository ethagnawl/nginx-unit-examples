#!/usr/bin/env bash

set -euo pipefail

pushd test-wasi-component
  cargo component build --release
  chmod +r target/wasm32-wasi/release/test_wasi_component.wasm
popd
docker-compose up --build
