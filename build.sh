#!/bin/bash

set -exu

mkdir build

cd src

make -j$(nproc)

cp gpu_burn ../build/