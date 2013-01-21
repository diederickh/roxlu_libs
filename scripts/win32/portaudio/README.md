
 * Install cmake
 * Install the direct x sdk: http://www.microsoft.com/en-us/download/details.aspx?id=6812
 * Go to scripts\sources\portaudio
 * Start > CMake 2.8 > CMake (cmake-gui)
   - Browse to scripts\sources\portaudio\ for the "Source coude" input
   - Select "scripts\sources\portaudio\build" as the output dir
   - Press [Configure] button
      - Visual Studio 10 / 11 
      (*) Use default native compiler
   - Select: 
     PORTAUDIO_DLL_LINK_WITH_STATIC_RUNTIME [ ]
     PORTAUDIO_ENABLE_ASIO                  [ ]
     PORTAUDIO_ENABLE_DSOUND                [x]
     PORTAUDIO_ENABLE_WASAPI                [ ]
     PORTAUDIO_ENABLE_WDMKS                 [ ]
     PORTAUDIO_ENABLE_WMME                  [ ]
     PORTAUDIO_UNICODE_BUILD                [ ]


   - I had to manually set the paths to DirectX. Check the [x] Advanced [x] Grouped 
     checkboxes and fill the DSOUND_* values.

   - Press the [Generate] button and a solution file is created.


  * Open the solution, from "scripts\sources\portaudio\build\"  in Microsoft Visual Studio
  * Select "Release" 
  * Rigth click on the "portaudio" project, select "Properties"
    Then change: Configuration Porperties > C/C++ > Code Generation: MultiThreaded DLL  /MD
    .. press [OK]
  * Right click portaudio > build
  * Copy install.bat to "scripts\sources\portaudio" and execute it.
