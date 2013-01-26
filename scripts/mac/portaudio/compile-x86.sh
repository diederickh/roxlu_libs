#!/bin/sh
# Compiling portaudio

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}
export CFLAGS="-m32 -arch i386" 
export CPPFLAGS="${CFLAGS} -arch i386"
export LDFLAGS="-arch i386"

cd ${sd}/portaudio
./configure --prefix=${bd} --disable-mac-universal --enable-cxx
cp ${d}/Makefile86 ${sd}/portaudio/Makefile
make clean
make 
make install


