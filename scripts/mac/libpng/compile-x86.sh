#!/bin/sh
# Compiling libpng
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS=" -m32 "

cd ${sd}/libpng
./configure --prefix=${bd} --with-zlib-prefix=${bd}
make clean 
make 
make install


