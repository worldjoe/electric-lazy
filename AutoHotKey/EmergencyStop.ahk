Joy12::
RunWait, %comspec% /c %UserProfile%\Documents\CLeveR.exe stop,,hide
WinActivate ahk_exe Procyon2_3_00.exe
SetKeyDelay, 10,10
send {Alt down}u{Alt up}{Down}{Down}{Down}{Enter}
sleep 1000
send {Alt down}u{Alt up}{Down}{Down}{Down}{Enter}