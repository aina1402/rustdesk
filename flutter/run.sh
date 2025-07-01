#!/usr/bin/env bash

cargo install flutter_rust_bridge_codegen --version 1.80.1 --features uuid
flutter pub get
~/.cargo/bin/flutter_rust_bridge_codegen --llvm-path "E:\\LLVM" --rust-input ../src/flutter_ffi.rs --dart-output ./lib/generated_bridge.dart --c-output ./windows/Runner/bridge_generated.h
# call `flutter clean` if cargo build fails
# export LLVM_HOME=/Library/Developer/CommandLineTools/usr/
cargo build --features flutter
flutter run $@
