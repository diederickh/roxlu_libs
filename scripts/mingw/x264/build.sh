#!/bin/sh
d=${PWD}
source_dir=${d}/../../sources/x264
bd=${d}/../../win32//build/32/md/

export PATH=${bd}/:${PATH}
export CFLAGS="-I${bd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"

cd ${source_dir}
./configure --prefix=${bd} --enable-shared --disable-cli --extra-ldflags="-Wl,--output-def=libx264.def"

#    --enable-pic \
#    --enable-vp9 \
#    --enable-vp8 \
#    --enable-shared \

make clean 
make
make install

