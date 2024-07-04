chcp 65001 >NUL
rem the line above sets the batch file to unicode because oherwise the registered trademark in the soundVolumeView command below breaks

rem Allow our text to speech below to play on the speakers
rem %UserProfile%\Documents\nircmd setdefaultsounddevice "Speakers"
rem %UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetDefault "2- Intel® Smart Sound Technology (Intel® SST)\Device\Speakers\Render" all "winamp.exe"

rem Making the temp file
rem :num
rem set num=%random%
rem if exist %TEMP%\temp%num%.vbs goto num
rem echo ' > "%TEMP%\temp%num%.vbs"
rem echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "%TEMP%\temp%num%.vbs"
rem echo speech.speak "The Electric Lazy chose %~1" >> "%TEMP%\temp%num%.vbs"
rem start %TEMP%\temp%num%.vbs
rem timeout /t 15
rem del %TEMP%\temp%num%.vbs
rem pipe all the system sounds to our fake Virtual VB speakers so we don't hear dings and such
rem %UserProfile%\Documents\nircmd setdefaultsounddevice "CABLE Input"
rem %UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetDefault "VB-Audio Virtual Cable\Device\CABLE Input\Render" 1
rem make sure that winamp is playing to the speakers
rem %UserProfile%\Documents\CLeveR.exe loadplay %UserProfile%\Documents\silence.m3u
rem %UserProfile%\Documents\nircmd setappvolume winamp.exe 1 "Speakers"
rem %UserProfile%\Documents\soundvolumeview\SoundVolumeView.exe /SetAppDefault "2- Intel® Smart Sound Technology (Intel® SST)\Device\Speakers\Render" all "winamp.exe"
rem %UserProfile%\Documents\CLeveR.exe stop

%UserProfile%\Documents\CLeveR.exe loadplay "%UserProfile%\Documents\Smooches%~1.m3u"
timeout /t 15
