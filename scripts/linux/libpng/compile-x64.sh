#!/bin/sh
# Compiling libpng
# -----------------
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS="-fpic"

cd ${sd}/libpng
./configure --prefix=${bd} --with-zlib-prefix=${bd}
make clean 
make 
make install


