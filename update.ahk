Filedelete, %A_ScriptDir%\RPHUB.ahk
IfnotExist, %A_ScriptDir%\RPHUB.ahk
{
	URLDownloadToFile, https://raw.githubusercontent.com/my0kul/RPHUB/main/RPHUB.ahk, %A_ScriptDir%\RPHUB.ahk
	Run,%A_ScriptDir%\RPHUB.ahk
	ExitApp
	return
}







