#!/bin/bash
set -e

cd $(dirname $0)

export ARTIFACTS=$(pwd)/assets
./../../../scripts/download

rm -rf ./build
mkdir -p ./build

echo Extracting ${ARTIFACTS}/quark-arm64-os-base.tar.xz
tar xJf ${ARTIFACTS}/quark-arm64-os-base.tar.xz -C ./build/
