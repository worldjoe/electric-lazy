rem Allow our text to speech below to play on the speakers
%UserProfile%\Documents\nircmd setdefaultsounddevice "Speakers"
%UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetDefault "High Definition Audio Device\Device\Speakers\Render" all "winamp.exe"

rem Making the temp file
:num
set num=%random%
if exist %TEMP%\temp%num%.vbs goto num
echo ' > "%TEMP%\temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%TEMP%\temp%num%.vbs"
echo speech.speak "The Electric Lazy chose %~1" >> "%TEMP%\temp%num%.vbs"
start %TEMP%\temp%num%.vbs
timeout /t 15
del %TEMP%\temp%num%.vbs
rem pipe all the system sounds to our fake Virtual VB speakers so we don't hear dings and such
%UserProfile%\Documents\nircmd setdefaultsounddevice "CABLE Input"
%UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetDefault "VB-Audio Virtual Cable\Device\CABLE Input\Render" 1
rem make sure that winamp is playing to the speakers
%UserProfile%\Documents\CLeveR.exe loadplay %UserProfile%\Documents\silence.m3u
%UserProfile%\Documents\nircmd setappvolume winamp.exe 1 "Speakers"
%UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetAppDefault "High Definition Audio Device\Device\Speakers\Render" all "winamp.exe"
%UserProfile%\Documents\CLeveR.exe stop
