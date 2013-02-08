#!/bin/sh
# Compiling yasm

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-m32"
export CPPFLAGS=${CFLAGS}

cd ${sd}/yasm
./configure --prefix=${bd} 
make clean && make && make install


