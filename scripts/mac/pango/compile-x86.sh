#!/bin/sh
# Compiling pango

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
export FONTCONFIG_CFLAGS="-I${bd}/include/"
export FONTCONFIG_LIBS="-L${bd}/lib/ -lfontconfig"
export CAIRO_CFLAGS="-I${bd}/include/ -I${bd}/include/cairo/"
export CAIRO_LIBS="-L${bd}/lib -lcairo"
export FREETYPE_CFLAGS="-I${bd}/include/freetype2/"
export FREETYPE_LIBS="-L${bd}/lib/ -lfreetype"
export LIBS="-L${bd}/lib/ -framework CoreFoundation -framework ApplicationServices"


# --with-included-modules, makes static libs for the pango modules available

cd ${sd}/pango
./configure --prefix=${bd} \
    --enable-static=yes \
    --with-included-modules=yes

make clean
make V=1
make install




