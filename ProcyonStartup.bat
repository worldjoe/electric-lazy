START "" "C:\Program Files (x86)\Procyon AVS\Procyon2_3_00.exe"
TIMEOUT /T 90
START ""  "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%UserProfile%\Documents\AutoHotKey\ProcyonOpenPort.ahk"
TIMEOUT /T 40
IF EXIST "%UserProfile%\Documents\displaysleep.bat" call "%UserProfile%\Documents\displaysleep.bat"
TIMEOUT /T 20

rem Allow the system sounds to play during startup, especially our text to speech below
%UserProfile%\Documents\nircmd setdefaultsounddevice "Speakers"

START "" "C:\Program Files (x86)\Winamp\winamp.exe"
TIMEOUT /T 20

rem Making the temp file
:num
set num=%random%
if exist %TEMP%\temp%num%.vbs goto num
echo ' > "%TEMP%\temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%TEMP%\temp%num%.vbs"
echo speech.speak "The Electric Lazy is now ready." >> "%TEMP%\temp%num%.vbs"
start %TEMP%\temp%num%.vbs
timeout /t 60
del %TEMP%\temp%num%.vbs
rem pipe all the system sounds to our fake Virtual VB speakers so we don't hear dings and such
%UserProfile%\Documents\nircmd setdefaultsounddevice "CABLE Input"
TIMEOUT /T 10
rem make sure that winamp is playing to the speakers
rem we do that by playing some sound (silence) via winamp and changing the speaker output to the real Speakers
%UserProfile%\Documents\CLeveR.exe loadplay %UserProfile%\Documents\silence.m3u
rem %UserProfile%\Documents\nircmd setappvolume winamp.exe 1 "Speakers"
%UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetAppDefault "High Definition Audio Device\Device\Speakers\Render" all "winamp.exe"
TIMEOUT /T 5
%UserProfile%\Documents\CLeveR.exe stop