#!/bin/bash
# Compiling libyuv
# -----------------
#
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CXXFLAGS="-fpic"
export CFLAGS="-I${bd}/include/ -fpic"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

cd ${sd}/libyuv/trunk/


cd ${sd}/libyuv/trunk/ && make -j6 V=1 BUILDTYPE=Release
cp ${sd}/libyuv/trunk/out/Release/obj.target/libyuv.a ${bd}/lib/
cp ${sd}/libyuv/trunk/out/Release/obj.target/third_party/libjpeg_turbo/libjpeg_turbo.a ${bd}/lib/
cp -r ${sd}/libyuv/trunk/include ${bd}/



