#!/bin/sh
# Compiling liblamemp3

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-m32"
export CPPFLAGS=${CFLAGS}

cd ${sd}/liblamemp3
./configure --prefix=${bd} --enable-static
make clean && make && make install


