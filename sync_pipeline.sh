#!/usr/bin/env bash
set -e
REPO="theawell/coiledpebble"
LIB="azure-scarf.a"
URL="https://github.com/${REPO}/releases/download/frosty-garden-eager-cedar/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -O2 -pthread -std=c++17 -o app main.cpp "$LIB" && ./app
