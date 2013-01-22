#!/bin/bash
# Compiling liblamemp3
# --------------------
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS="-fpic"

cd ${sd}/liblamemp3
./configure --prefix=${bd} --enable-static
make clean && make && make install


