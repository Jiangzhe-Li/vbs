#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
	Dim ret
	ret=crt.Dialog.MessageBox ("即将开始查询功放参数","提示")
	while 1 
	    for i=1 to 28
		set CurrentTab = crt.GetTab(i)
		CurrentTab.Activate
		if CurrentTab.Session.connected = True Then
			CurrentTab.Screen.Send "mips_rs485_pa_vswr_show 1" & chr(13)
			CurrentTab.Screen.WaitForString "oam> "
			CurrentTab.Screen.Send "mips_rs485_pa_vswr_show 2" & chr(13)
			CurrentTab.Screen.WaitForString "oam> "
			CurrentTab.Screen.Send "mips_rs485_FwBackVol_show 1" & chr(13)
			CurrentTab.Screen.WaitForString "oam> "
			CurrentTab.Screen.Send "mips_rs485_FwBackVol_show 2" & chr(13)
			CurrentTab.Screen.WaitForString "oam> "
			crt.Sleep 100
	    	End if
	     Next
	     crt.Sleep 5000
	Wend
End Sub
