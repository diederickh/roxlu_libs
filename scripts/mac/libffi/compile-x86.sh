#!/bin/sh
# Compiling libffi
#
d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"

cd ${sd}/libffi
./configure --prefix=${bd} --enable-static=yes
make clean && make && make install


