#!/bin/sh
# Compiling libjpeg
#
# Version-9 seems to have a bug
#
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-m32"
export CPPFLAGS=${CFLAGS}

cd ${sd}/libjpeg
./configure --prefix=${bd}
make clean && make && make install

