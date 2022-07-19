#SingleInstance, force
#Persistent

Sleep, 120000
inicio := "true"
cont := 0

if (inicio = "true")
{
	Process, Exist, Receiver.exe
	{
		If errorLevel
		{
			Process, Close, Receiver.exe
			Sleep, 200
			Process, Close, SelfService.exe
			Sleep, 200
			Process, Close, redirector.exe
			Sleep, 200
			Process, Close, wfcrun32.exe
			Sleep, 200
			Process, Close, concentr.exe
			++cont
		}
	}
	Process, Exist, vpnui.exe
	{
		If errorLevel
		{
			Process, Close, vpnui.exe
			++cont
		}
	}
	Process, Exist, bvcco2.exe
	{
		If errorLevel
		{
			Process, Close, bvcco2.exe
			++cont
		}
	}
	
	If (cont <> 0) 
	{
		inicio := "false"
	}
} 
ExitApp

return