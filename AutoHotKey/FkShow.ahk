; HC LED runs as admin, so this controller needs to as well.
if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}

SignLoad(ledSignFile) {
;	WinActivate, ahk_exe FKShow2022.exe
;	SetKeyDelay, 10,10
;	sleep 500
;	SendInput ^o
;	sleep 500
;	send %ledSignFile%
;	send {Enter}
}

SignCountDown() {
;	WinActivate, ahk_exe FKShow2022.exe
;	SetKeyDelay, 10,10
;	sleep 500
;	Click 215, 74
;	send {Down}{Enter}
;	sleep 5000
;	send {Enter}
}
