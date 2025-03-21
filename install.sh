#!/bin/sh

CUR_DIR=$(pwd)
DISTRO="linux"
ARCH="amd64"
VERSION="v0.2.0"
TAR="cvwonder_${DISTRO}_${ARCH}"

curl -L --output cvwonder "https://github.com/germainlefebvre4/cvwonder/releases/download/${VERSION}/${TAR}"
chmod +x ./cvwonder
