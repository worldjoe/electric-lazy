if not(A_IsAdmin) {
	Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%
}
F12::
RunWait, %comspec% /c %UserProfile%\Documents\ReconnectAudio.bat stop,,hide
