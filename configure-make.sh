#!/bin/bash

# Commands to configure this repo for building after dependencies have been installed

cmake -S . -B build/debug-make -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug \
-DCMAKE_PREFIX_PATH="$(pwd)/third-party/build" \
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake -S . -B build/release-make -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release \
-DCMAKE_PREFIX_PATH="$(pwd)/third-party/build" \
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON