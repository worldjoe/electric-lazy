#include %A_ScriptDir%\RunSession.ahk
if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}
Joy7::
RunSession("QuickFluff.m3u", "ELL - Quick Fluff2345.PRw", 0, "QuickFl.nfsprj")