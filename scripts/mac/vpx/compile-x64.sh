#!/bin/sh
# Compiling libvpx
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/libvpx
./configure --prefix=${bd} \
    --enable-pic \
    --enable-vp8 \
    --enable-vp9 \
    --enable-static \
    --as=yasm

make clean 
make 
make install


