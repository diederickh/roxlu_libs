#!/bin/sh
d=${PWD}
source_dir=${d}/../../sources/libav
bd=${d}/../../win32/build/32/md/


export PATH=${bd}/:${PATH}
export CFLAGS="-I${bd}/include/"
export CPPFLAGS=${CFLAGS}
export LDFLAGS="-L${bd}/lib/ -lzdll.lib "

cd ${source_dir}

#exit;


#    --enable-libspeex \
#    --enable-libtheora \
#    --enable-libvpx \
#    --enable-openssl \
#    --enable-zlib \

./configure --toolchain=msvc \
    --arch=i686 \
    --extra-cflags="-I/c/msinttypes/ -I${bd}/include/"  \
    --extra-ldflags="-L${bd}/lib/" \
    --enable-shared \
    --enable-gpl \
    --enable-nonfree \
    --prefix=${bd}

make 
make install

cp libavcodec/*.dll ${bd}/bin/
cp libavdevice/*.dll ${bd}/bin/
cp libavfilter/*.dll ${bd}/bin/
cp libavformat/*.dll ${bd}/bin/
cp libavresample/*.dll ${bd}/bin/
cp libavutil/*.dll ${bd}/bin/
cp libswscale/*.dll ${bd}/bin/

cp libavcodec/*.lib ${bd}/lib/
cp libavdevice/*.lib ${bd}/lib/
cp libavfilter/*.lib ${bd}/lib/
cp libavformat/*.lib ${bd}/lib/
cp libavresample/*.lib ${bd}/lib/
cp libavutil/*.lib ${bd}/lib/
cp libswscale/*.lib ${bd}/lib/
