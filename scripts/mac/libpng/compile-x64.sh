#!/bin/sh
# Compiling libpng
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/libpng
./configure --prefix=${bd} --with-zlib-prefix=${bd}
make clean 
make 
make install


