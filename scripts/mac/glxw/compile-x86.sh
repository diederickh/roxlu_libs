#!/bin/sh
# Compiling glxw

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

cd ${sd}/glxw
mkdir compile_with_cmake
cd compile_with_cmake
cmake -DCMAKE_INSTALL_PREFIX=${bd} ../
make clean
make VERBOSE=1

cp libglxw.a ${bd}/lib/
cp include/GL/*.h ${bd}/include/GL/
cp -r include/GLXW ${bd}/include/
