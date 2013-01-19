#!/bin/sh
# Compiling iconv
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/iconv
./configure --prefix=${bd} --enable-static=yes --enable-shared=yes
make clean && make && make install


