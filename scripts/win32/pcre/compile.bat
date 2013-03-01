set D=%CD%
set DEST=%d%\..\..\win32\build\32\md\

if not exist build (
   mkdir build
)

cd build
cmake -DCMAKE_INSTALL_PREFIX=%DEST% -DZLIB_INCLUDE_DIR=%DEST%include -DZLIB_LIBRARY=%DEST%lib\zlib.lib -DBUILD_SHARED_LIBS=yes ..
cmake --build . --config Release --target install
cd %D%