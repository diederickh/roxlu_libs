#!/bin/sh
# Compiling libjpeg
# -----------------
# Version-9 seems to have a bug
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-fpic"
export CXXFLAGS="-fpic"

cd ${sd}/libjpeg
./configure --prefix=${bd}
make clean && make && make install

