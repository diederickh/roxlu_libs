set d=%CD%
set dest=%d%\..\..\win32\build\32\md\

mkdir glfw_build

cmake -DCMAKE_INSTALL_PREFIX="%d%\glfw_build" -DCMAKE_C_FLAGS_DEBUG="/MD" -DCMAKE_C_FLAGS_RELEASE="/MD"  
cmake --build . --target install -- /p:Configuration=Release 

cd glfw_build
copy lib\*.lib %dest%\lib\
copy bin\*.dll %dest%\bin\
xcopy /s include %dest%\include

:eof