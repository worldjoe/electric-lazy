RunSession(playlist, procyonSession)
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
		sleep 2000
		send %procyonSession%
		send {Enter}
		send {Alt down}u{Alt up}{Down}
		sleep 11600
		send {Enter}
	
	} else {
	;do nothing the song is alredy playing
	}
}
