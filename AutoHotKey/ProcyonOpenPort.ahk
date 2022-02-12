WinActivate ahk_exe Procyon2_3_00.exe
;WinGet, active_id, ID, A
SetKeyDelay, 10,10
send, {Alt down}s{Alt up}{Right}{Down}{Enter}
sleep 2000
ControlClick ThunderRT6CommandButton20, ahk_exe Procyon2_3_00.exe
send, {Alt down}s{Alt up}{Right}{Down}{Down}{Enter}
