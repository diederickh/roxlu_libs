#!/bin/sh
# Compiling libvpx

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}
export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"


cd ${sd}/libvpx
./configure --prefix=${bd} \
    --enable-pic \
    --enable-vp8 \
    --enable-vp9 \
    --enable-static \
    --as=yasm \
    --target=x86-darwin11-gcc

make clean 
make 
make install


