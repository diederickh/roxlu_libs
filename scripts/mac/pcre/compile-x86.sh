#!/bin/sh
# Compiling pcre

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"

cd ${sd}/pcre
./configure --prefix=${bd} --enable-static
make clean && make && make install


