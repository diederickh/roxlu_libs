#!/bin/sh
# Compiling libssl
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

cd ${sd}/libssl
./Configure --prefix=${bd} darwin-i386-cc
make clean && make && make install


