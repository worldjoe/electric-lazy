#include RunSession.ahk
Joy8::
Random, rand, 1, 6

switch rand
{
case 1:
	RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Fluffer Special"
	RunSession("FlufferSpecial.m3u", "ELL OG - Fluffer Special.PRw")
case 2:
	RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Star Trippin"
	RunSession("StarTrippin.m3u", "ELL OG - Star Trippin.PRw")
case 3:
	RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Ablyss"
	RunSession("Ablyss.m3u", "ELL - Ablyss.PRw")
case 4:
	RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Rivers Edge"
	RunSession("RiversEdge.m3u", "ELL - Rivers Edge.PRw")
case 5:
	RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Singularity"
	RunSession("Singularity.m3u", "ELL OG - Singularity.PRw")
case 6:
	RunWait, %comspec% /c %UserProfile%\Documents\Random.bat "Moon rise"
	RunSession("Moonrise.m3u", "ELL OG - Moonrise.PRw")





}
