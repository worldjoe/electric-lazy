#include %A_ScriptDir%\RunSession.ahk
if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}
Joy2::
RunSession("StarTrippin.m3u", "ELL OG - Star Trippin345.PRw", 0, "StarTri.nfsprj")
