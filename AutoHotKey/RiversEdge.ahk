#include %A_ScriptDir%\RunSession.ahk
if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}
Joy4::
RunSession("RiversEdge.m3u", "ELL - Rivers Edge2345.PRw",0, "RiversE.nfsprj")
