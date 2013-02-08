#!/bin/sh
# Compiling automake

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}
export CFLAGS="-m32"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-arch i386"

cd ${sd}/automake
./configure --prefix=${bd} \
    --enable-static=yes 

make clean 
make 
make install


