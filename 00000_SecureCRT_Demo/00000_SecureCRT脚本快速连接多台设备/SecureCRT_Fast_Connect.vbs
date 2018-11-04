Const ForReading = 1 

Dim fso, iplistpath , iplist, StrIp, StrPwd 
Dim loginuser 

iplistpath=".\ip.txt" 

loginuser = InputBox("请输入用户:")   '登陆用户 
StrPwd=InputBox("请输入密码:") 
'MsgBox("Your Password is " & StrPwd) 

Set fso = CreateObject("Scripting.FileSystemObject") 
Set iplist = fso.OpenTextFile(iplistpath , ForReading, False)

Do While  iplist.AtEndOfStream <> True 
  StrIp = Trim(iplist.Readline) 
  If StrIp <> "" Then 
    cmd = "/ssh2 /L " & loginuser &" /PASSWORD " & StrPwd & " /C 3DES " & StrIp 
    crt.Session.ConnectInTab cmd 
  End If 
Loop 