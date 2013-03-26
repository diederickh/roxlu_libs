#!/bin/sh
# Compiling mysql connector
set -x
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

source_dir=${sd}mysql-connector-c/

cd ${source_dir}
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=${bd}/
make VERBOSE=1
make install



