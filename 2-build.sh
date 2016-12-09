#!/bin/bash

set -ex

export CFLAGS="-O3 -march=native -ffast-math -falign-functions=16 -falign-loops=16"
export FFLAGS="$CFLAGS"
export FCFLAGS="$CFLAGS"
export F95FLAGS="$CFLAGS"
export CXXFLAGS="$CFLAGS"

cd saods9
rm -r tkblt
git clone --recursive https://github.com/wjoye/tkblt.git
unix/configure
make JOBS=1

