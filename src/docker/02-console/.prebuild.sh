#!/bin/bash
set -e

VERSION=${VERSION:?"VERSION not set"}

cd $(dirname $0)

rm -rf ./build
mkdir -p ./build

cat > ./build/lsb-release << EOF
DISTRIB_ID=QuarkOS
DISTRIB_RELEASE=${VERSION}
DISTRIB_DESCRIPTION="QuarkOS ${VERSION}"
EOF
