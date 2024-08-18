#include %A_ScriptDir%\RunSession.ahk
Joy8::
clipboard := ""
RunWait, %comspec% /c %UserProfile%\Documents\CLeveR.exe status | clip,,hide
ClipWait
IfInString, Clipboard, % "Stop"
{
	Random, rand, 1, 5

	switch rand
	{
	case 1:
		RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Fluffer Special"
		RunSession("FlufferSpecial.m3u", "ELL OG - Fluffer Special.PRw",0, "Fluffer.nfsprj")
	case 2:
		RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Star Trippin"
		RunSession("StarTrippin.m3u", "ELL OG - Star Trippin345.PRw",0, "StarTri.nfsprj")
	case 3:
		RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Uh Bliss"
		RunSession("Ablyss.m3u", "ELL - Ablyss789012345.PRw",0, "Ablyss1.nfsprj")
	case 4:
		RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Rivers Edge"
		RunSession("RiversEdge.m3u", "ELL - Rivers Edge2345.PRw",0, "RiversE.nfsprj")
	case 5:
		RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Singularity"
		RunSession("Singularity.m3u", "ELL OG - Singularity2345.PRw",0, "Singula.nfsprj")
	case 6:
		RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Moon rise"
		RunSession("Moonrise.m3u", "ELL OG - Moonrise9012345.PRw",0, "Moonris.nfsprj")
	}
}