#include %A_ScriptDir%\RunSession.ahk
if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}
Joy1::
RunSession("FlufferSpecial.m3u", "ELL OG - Fluffer Special.PRw", 0, "Fluffer.nfsprj")


;In order to use this feature we would need to quit HC-Sign and Procyon and restart them so they aren't in stuck states...
; Which is kind of a heavy lift
;Joy12::
;Run %A_AhkPath%" /force "%A_ScriptFullPath"
;ExitApp ; Exit script on Emergency Stop
