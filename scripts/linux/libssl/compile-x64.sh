#!/bin/bash
# Compiling libssl
# -----------------
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS=${CFLAGS}

cd ${sd}/libssl
./Configure no-rc5 no-shared --prefix=${bd} linux-x86_64
make clean && make && make install


