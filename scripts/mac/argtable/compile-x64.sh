#!/bin/sh
# Compiling argtable

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

cd ${sd}/argtable
./configure --prefix=${bd} --enable-static
make clean && make && make install


