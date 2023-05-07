IncrementRideCounter(playlist)
{
	FormatTime,CurrentDateTime,, yyyyMMdd
	IniRead, lastCount, %UserProfile%\Documents\count-%CurrentDateTime%.ini, Count, %playlist%
	if lastCount = ERROR
		lastCount=0
	lastCount++
	IniWrite, %lastCount%, %UserProfile%\Documents\count-%CurrentDateTime%.ini, Count, %playlist%
}