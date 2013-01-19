#!/bin/sh
# Compiling libssl
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/libssl
./Configure --prefix=${bd} darwin64-x86_64-cc
make clean && make && make install


