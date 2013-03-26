#!/bin/sh
d=${PWD}
bd=${d}/../build
sd=${d}/../../sources/

export CFLAGS="-I${bd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/"
export PATH=${bd}/bin:${PATH}
export LIBFFI_LIBS="-L${bd}/lib/ -lffi"
export LIBFFI_CFLAGS="-I${bd}/include/ -I${bd}/lib/libffi-3.0.11/include/"
export PKG_CONFIG=${bd}/bin/pkg-config
export PKG_CONFIG_PATH=${bd}/lib/pkgconfig

if [ -d build ] ; then 
    rm -r build
fi

if [ ! -d build ] ; then 
    mkdir build
fi

cd build


cmake -DBUILD_DOCS=OFF \
    -DBUILD_PACKAGE=OFF \
    -DBUILD_PNG=OFF \
    -DBUILD_SHARED_LIBS=OFF \
    -DBUILD_TESTS=ON \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_WITH_DEBUG_INFO=OFF \
    -DBUILD_ZLIB=OFF \
    -DBUILD_opencv_apps=OFF \
    -DBUILD_FAT_JAVA_LIB=OFF \
    -DWITH_EIGEN=OFF \
    -DWITH_JASPER=OFF \
    -DWITH_JPEG=OFF \
    -DWITH_OPENEXR=OFF \
    -DWITH_PNG=OFF \
    -DWITH_TIFF=OFF \
    -DWITH_V4L=OFF \
    -DWITH_OPENGL=OFF \
    -DWITH_QT=OFF \
    -DWITH_TBB=OFF \
    -DWITH_FFMPEG=OFF \
    -DWITH_UNICAP=OFF \
    -DWITH_GTK=OFF \
    -DCMAKE_BUILD_TYPE="Release" \
    -DCMAKE_INSTALL_PREFIX=${bd} \
    -DCMAKE_OSX_ARCHITECTURES="x86_64" \
    ${sd}/opencv/
make
make install
