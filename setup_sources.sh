#!/bin/bash

# Find this script's directory
#SCRIPT_DIR="$(realpath "$(dirname "$0")")"

SOURCES_PATH="${HOME}/sources"

if [[ ! -d ${SOURCES_PATH} ]]; then
    mkdir ${SOURCES_PATH}
    echo "Created sources directory ${SOURCES_PATH}"
fi

# Download sources
pushd ${SOURCES_PATH}
echo "Downloading sources into ${SOURCES_PATH}..."

git clone https://git.musl-libc.org/git/musl
git clone https://github.com/nothings/stb.git
git clone https://github.com/glfw/glfw.git
git clone https://gitlab.com/libeigen/eigen.git
git clone https://github.com/ocornut/imgui.git
git clone https://github.com/HandmadeMath/HandmadeMath.git

echo "Sources done."
popd

