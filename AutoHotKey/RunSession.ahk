#include %A_ScriptDir%\IncrementCount.ahk
#include %A_ScriptDir%\FkShow.ahk
RunSession(playlist, procyonSession, customSleep, ledSignFile)
{
	clipboard := ""
	RunWait, %comspec% /c %UserProfile%\Documents\CLeveR.exe status | clip,,hide
	ClipWait
	IfInString, Clipboard, % "Stop"
	{
		;StringTrimRight, playlistWithOutExtension, playlist, 4 
		;RunWait, %comspec% /c %UserProfile%\Documents\Starting.bat %playlistWithOutExtension%
		;SignSendOne("HC0310Minutes.LED")
		SignLoad(ledSignFile)
		RunWait, %comspec% /c %UserProfile%\Documents\CLeveR.exe loadplay %UserProfile%\Documents\%playlist%,,hide
		WinActivate ahk_exe Procyon2_3_00.exe
		sleep 1000
		SetKeyDelay, 10,10
		send {Alt down}f{Alt up}{Down}{Enter}
		sleep 9000
		send %procyonSession%
		sleep 7000
		send {Enter}
		sleep 8000
		send {Alt down}u{Alt up}{Down}
		sleep 10000
		sleep %customSleep%
		send {Enter}
		SignCountDown()
		IncrementRideCounter(playlist)
	} else {
	;do nothing the song is alredy playing
	}
}
