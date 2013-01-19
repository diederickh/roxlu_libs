#!/bin/sh
# Compiling libjpeg
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
# Version-9 seems to have a bug
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/libjpeg
./configure --prefix=${bd}
make clean && make && make install

