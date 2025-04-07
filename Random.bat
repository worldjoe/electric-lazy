chcp 65001 >NUL
rem the line above sets the batch file to unicode because oherwise the registered trademark in the soundVolumeView command below breaks

%UserProfile%\Documents\CLeveR.exe loadplay "%UserProfile%\Documents\Smooches\%~1"
timeout /t 10

