#include %A_ScriptDir%\RunSession.ahk
if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}
Joy3::
RunSession("Ablyss.m3u", "ELL - Ablyss789012345.PRw", 0, "Ablyss1.nfsprj")
