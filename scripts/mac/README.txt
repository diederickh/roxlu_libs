
 Some notes while testing this and things that need to be cleaned up
 -------------------------------------------------------------------

 PANGO + FONTCONFIG 
 ------------------
 Somehow pango did not compile with cairo. This was because pango couldn't
 find the font backend used by cairo, fontconfig and the fontconfig.pc 
 (PKG-config file) wasn't copied to build\lib\pkgconfig. All I did to fix 
 this, was running the compile-x64.sh script of fontconfig again, then 
 recompiling pango.
 

 You should compile the libraries in this order:
 -----------------------------------------------
 
 - zlib
 - libxml <- order not tested
 - libuv
 - libpng
 - libjpeg
 - libtiff <- not tested in this order
 - libssl
 - liblamemp3
 - yasm
 - pcre
 - curl
 - jansson
 - libvpx
 - x264
 - libyuv
 - portaudio
 - libffi
 - iconv
 - libtool
 - autoconf
 - automake
 - gettext
 - glib
 - pkg-config
 - pixman
 - freetype
 - fontconfig
 - poppler
 - harfbuzz
 - cairo
 - fontconfig <-- yes again (the fontconfig.pc isn't copied somehow)
 - pango
 - ogg
 - vorbis
 - speex
 - theora
 - icecast
 - libshout
 - libav
 - glfw
