name=Inputbox("你要刷多少次屏幕（将在5秒后执行，请及时将光标定位刷屏方向）")
WScript.Sleep 100
On Error Resume Next
Dim xda,ye
set xda=createobject("wscript.shell")
wscript.sleep 300
for i = 1 to name
wscript.sleep 50
xda.AppActivate
xda.sendKeys "^V"
xda.sendKeys "%s"
next
wscript.quit