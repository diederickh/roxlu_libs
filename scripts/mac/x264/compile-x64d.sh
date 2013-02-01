#!/bin/sh
# Compiling x264 in debug mode

d=${PWD}
bd=${d}/../build64d
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/x264
./configure --prefix=${bd} \
    --enable-static \
    --enable-shared \
    --enable-debug 

#    --disable-asm

make clean 
make 
make install


