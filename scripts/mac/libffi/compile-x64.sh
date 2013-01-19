#!/bin/sh
# Compiling libffi
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/libffi
./configure --prefix=${bd} --enable-static=yes
make clean && make && make install


