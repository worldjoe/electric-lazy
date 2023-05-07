chcp 65001 >NUL
rem the line above sets the batch file to unicode because oherwise the registered trademark in the soundVolumeView command below breaks
rem if exist "C:\Program Files (x86)\FeikongTech\FkShow2022\FkShow2022.exe" START "" "C:\Program Files (x86)\FeikongTech\FkShow2022\FkShow2022.exe" "%UserProfile%\Documents\FKShow\Ready.nfsprj"
TIMEOUT /T 60
START "" "C:\Program Files (x86)\Procyon AVS\Procyon2_3_00.exe"
TIMEOUT /T 60
rem some of the winamp settings get wiped if the machine shuts down prematurely
copy %UserProfile%\Documents\winamp.ini %UserProfile%\AppData\Roaming\Winamp
START "" "C:\Program Files (x86)\Winamp\winamp.exe"

START ""  "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%UserProfile%\Documents\AutoHotKey\ProcyonOpenPort.ahk"
TIMEOUT /T 40

rem Allow the system sounds to play during startup, especially our text to speech below
%UserProfile%\Documents\nircmd setdefaultsounddevice "Speakers"

START "" "C:\Program Files (x86)\Winamp\winamp.exe"
TIMEOUT /T 10

rem Making the temp file
:num
set num=%random%
if exist %TEMP%\temp%num%.vbs goto num
echo ' > "%TEMP%\temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%TEMP%\temp%num%.vbs"
echo speech.speak "The Electric Lazy will bee ready in 60 seconds." >> "%TEMP%\temp%num%.vbs"
start %TEMP%\temp%num%.vbs
timeout /t 30
del %TEMP%\temp%num%.vbs
rem pipe all the system sounds to our fake Virtual VB speakers so we don't hear dings and such
%UserProfile%\Documents\nircmd setdefaultsounddevice "CABLE Input"
TIMEOUT /T 5
rem make sure that winamp is playing to the speakers
rem we do that by playing some sound (silence) via winamp and changing the speaker output to the real Speakers
%UserProfile%\Documents\CLeveR.exe loadplay %UserProfile%\Documents\silence.m3u
rem %UserProfile%\Documents\nircmd setappvolume winamp.exe 1 "Speakers"
%UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetAppDefault "2- Intel® Smart Sound Technology (Intel® SST)\Device\Speakers\Render" all "winamp.exe"
TIMEOUT /T 5
%UserProfile%\Documents\CLeveR.exe stop
rem if exist "C:\Program Files (x86)\FeikongTech\FkShow2022\FkShow2022.exe" START ""  "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%UserProfile%\Documents\AutoHotKey\FKShowReady.ahk"
TIMEOUT /T 40