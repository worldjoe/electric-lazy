rem Making the temp file
:num
set num=%random%
if exist %TEMP%\temp%num%.vbs goto num
echo ' > "%TEMP%\temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%TEMP%\temp%num%.vbs"
echo speech.speak "Turning off the display.     If you need the screen back on, press Windows P (as in Peter) repeatedly, but slowly until the display turns back on" >> "%TEMP%\temp%num%.vbs"
start %TEMP%\temp%num%.vbs
timeout /t 60
del %TEMP%\temp%num%.vbs

DisplaySwitch.exe /external
timeout -t 5

@REM The latest (Windows 10 1607) version Windows will try to
@REM detect display status, if 2nd is not exist,
@REM it will fix it back to main display rather than keep it.
@REM Kill the process before switch back can prevent this.
TASKKILL /F /IM DisplaySwitch.exe

@REM Keep cmd window exist(in foreground) to prevent a program
@REM capture input focus and ignore Win+P shortcut(mostly).
@REM hit Win+P repeatedly, but slowly until the screen comes back on
@REM cmd
