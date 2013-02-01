#!/bin/sh
# Compiling yasm - debug
# -----------------

d=${PWD}
bd=${d}/../build64d
sd=${d}/../../sources/

cd ${sd}/yasm
./configure --prefix=${bd} --enable-debug
make clean && make && make install


