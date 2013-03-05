set d=%CD%
set dest=%d%\..\..\win32\build\32\md\
python glxw_gen.py

if not exist %d%\build (
   mkdir %d%\build
)

cd %d%\build
cmake -DCMAKE_C_FLAGS_DEBUG="/MD" -DCMAKE_C_FLAGS_RELEASE="/MD" ..\
cmake --build . --target ALL_BUILD -- /p:Configuration=Release

copy Release\*.lib %dest%\lib\
xcopy /s include %dest%\include\

cd %d%