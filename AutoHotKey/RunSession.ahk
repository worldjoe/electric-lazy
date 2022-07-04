RunSession(playlist, procyonSession, customSleep)
{
	clipboard := ""
	RunWait, %comspec% /c %UserProfile%\Documents\CLeveR.exe status | clip,,hide
	ClipWait
	IfInString, Clipboard, % "Stop"
	{
		RunWait, %comspec% /c %UserProfile%\Documents\CLeveR.exe loadplay %UserProfile%\Documents\%playlist%,,hide
		WinActivate ahk_exe Procyon2_3_00.exe
		SetKeyDelay, 10,10
		send {Alt down}f{Alt up}{Down}{Enter}
		sleep 9000
		send %procyonSession%
		sleep 7000
		send {Enter}
		sleep 8000
		send {Alt down}u{Alt up}{Down}
		sleep 10780
		sleep %customSleep%
		send {Enter}
	
	} else {
	;do nothing the song is alredy playing
	}
}
