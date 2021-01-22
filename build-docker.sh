#!/bin/bash

export DOCKER_BUILDKIT=1
export BUILDKIT_PROGRESS=plain

echo "Cleaning previous artifacts"
mkdir build/
rm -f build/*

# dev
# docker build -t gpu-burn-builder . --target build-img
# rebuild
docker build -t gpu-burner-builder . --target bin --output build/
