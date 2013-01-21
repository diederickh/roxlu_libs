#!/bin/sh
# Compiling jansson
# -----------------

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS="-fpic"

cd ${sd}/jansson
./configure --prefix=${bd} --enable-static=yes
make clean && make && make install


