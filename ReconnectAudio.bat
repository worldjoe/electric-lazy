chcp 65001 >NUL
rem the line above sets the batch file to unicode because oherwise the registered trademark in the soundVolumeView command below breaks

START "" "taskkill.exe" /F /IM audiorepeater.exe
TIMEOUT /T 5
START ""  "C:\Program Files\Virtual Audio Cable\audiorepeater.exe" /Config:%UserProfile%\Documents\vacButtkicker.cfg /AutoStart
START ""  "C:\Program Files\Virtual Audio Cable\audiorepeater.exe" /Config:%UserProfile%\Documents\vacVizio.cfg /AutoStart
START ""  "C:\Program Files\Virtual Audio Cable\audiorepeater.exe" /Config:%UserProfile%\Documents\vacVizio2.cfg /AutoStart
TIMEOUT /T 5
