
 * Goto scripts\win32\freetype\ and execute setup.bat
 * Open freetype\builds\win32\vc2010\freetype.sln with VS
 * Select 'Release' as configuration
 * Add `src\base\ftbdf.c` to `freetype\Source Files\FT_MODULES`
 
 * Open configuration manager:
   Active solution configuration > <New...>
   - name: freetype MD
   - copy: settings from: Release
   - [x] Create new project configurations

 * Select "Freetype MD"

 * Change:
   Configuration Properties > General > Target Name: freetype_MD
   Configuration Properties > C/C++ > Code Generation: /MD
 * Build in VS

 * Open VS x86 command prompt
 * Goto `scripts\win32\freetype\` and execute `install.bat`
 * Files will be installed in `scripts\win32\build\32\{mt,md}\`
