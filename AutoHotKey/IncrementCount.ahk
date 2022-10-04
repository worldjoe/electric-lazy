IncrementRideCounter(playlist)
{
	IniRead, lastCount, %UserProfile%\Documents\count.ini, Count, %playlist%
	if lastCount = ERROR
		lastCount=0
	lastCount++
	IniWrite, %lastCount%, %UserProfile%\Documents\count.ini, Count, %playlist%
}