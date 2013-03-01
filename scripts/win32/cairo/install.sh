#!/bin/sh
bd=${PWD}/../../win32/build/32/md/
id=${bd}/include/cairo/

if [ ! -d ${id} ] ; then 
    mkdir ${id}
fi

cp cairo-version.h ${id}/
cp src/cairo-features.h ${id}/
cp src/cairo.h ${id}/
cp src/cairo-deprecated.h ${id}/
cp src/cairo-win32.h ${id}/
cp src/cairo-ps.h ${id}/
cp src/cairo-pdf.h ${id}/
cp src/cairo-svg.h ${id}/
cp src/cairo-ft.h ${id}/
cp src/release/cairo.dll ${bd}/bin/
cp src/release/cairo-static.lib ${bd}/lib/
cp src/release/cairo.lib ${bd}/lib/

