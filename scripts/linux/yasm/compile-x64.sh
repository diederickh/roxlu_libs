#!/bin/bash
# Compiling yasm
# --------------
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS="-fpic"

cd ${sd}/yasm
./configure --prefix=${bd} 
make clean && make && make install


