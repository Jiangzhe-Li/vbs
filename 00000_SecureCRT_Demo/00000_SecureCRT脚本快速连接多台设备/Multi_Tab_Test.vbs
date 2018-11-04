#$language = "VBScript"
#$interface = "1.0"

crt.Screen.Synchronous = True

' This automatically generated script may need to be
' edited in order to work correctly.

Sub Main
  Dim ret
  Dim TabCount
  TabCount = crt.GetTabCount
  '	MsgBox("TabCount is " & TabCount) 
  while 1 
    for i=1 to TabCount
    set CurrentTab = crt.GetTab(i)
    CurrentTab.Activate
    if CurrentTab.Session.connected = True Then
      CurrentTab.Screen.Send "echo 'hello world!'" & chr(13)
      crt.Sleep 100
      End if
    Next
      crt.Sleep 5000
  Wend
End Sub
