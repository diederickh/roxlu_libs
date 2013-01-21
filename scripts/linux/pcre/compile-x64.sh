#!/bin/bash
# Compiling pcre
# -----------------
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS="-fpic"

cd ${sd}/pcre
./configure --prefix=${bd} --enable-static
make clean && make && make install


