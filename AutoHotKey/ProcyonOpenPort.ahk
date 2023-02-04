WinActivate ahk_exe Procyon2_3_00.exe
;WinGet, active_id, ID, A
SetKeyDelay, 10,10
send, {Alt down}s{Alt up}{Right}{Down}{Enter}
sleep 2000
;ControlClick ThunderRT6CommandButton20, ahk_exe Procyon2_3_00.exe
	CoordMode, Mouse, Client
	Click 52,89 ; try to click on COM4 
	Click, 136, 22 ; try to click on COM5 which should close the window
	Click, 161, 111 ; try to click on OK if COM5 did not bind
send, {Alt down}s{Alt up}{Right}{Down}{Down}{Enter}
