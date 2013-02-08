#!/bin/sh
# Compiling libav

d=${PWD}
bd=${d}/../build32
sd=${d}/../../sources/

export CFLAGS="-I${bd}/include/ -m32"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/ -arch i386"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/libav
./configure --prefix=${bd} \
    --enable-static \
    --enable-shared \
    --enable-gpl \
    --enable-libspeex \
    --enable-libtheora \
    --enable-libvorbis \
    --enable-libvpx \
    --enable-libx264 \
    --enable-openssl \
    --enable-zlib \
    --enable-nonfree \
    --disable-avdevice \
    --disable-avcodec \
    --disable-avformat \
    --disable-avfilter \
    --disable-avresample
    
make clean
make V=1
make install




