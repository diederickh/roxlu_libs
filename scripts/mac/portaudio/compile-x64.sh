#!/bin/sh
#
# Compiling portaudio
# -----------------
# - i686-apple-darwin11-llvm-g++-4.2
# - i686-apple-darwin11-llvm-gcc-4.2:
#
# We had to remove the -wError from the Makefile
#

d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export PATH=${bd}/bin:${PATH}

cd ${sd}/portaudio
./configure --prefix=${bd} --disable-mac-universal --enable-cxx
cp ${d}/Makefile ${sd}/portaudio/
make clean
make 
make install


