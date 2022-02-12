START "" "C:\Program Files (x86)\Procyon AVS\Procyon2_3_00.exe"
TIMEOUT /T 90
START ""  "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%UserProfile%\Documents\AutoHotKey\ProcyonOpenPort.ahk"
TIMEOUT /T 40
IF EXIST "%UserProfile%\Documents\displaysleep.bat" call "%UserProfile%\Documents\displaysleep.bat"
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