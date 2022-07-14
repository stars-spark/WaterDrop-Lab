On Error Resume Next
Dim xda,ye
set xda=createobject("wscript.shell")
for i =1 to 200
wscript.sleep 100
xda.AppActivate
xda.sendKeys "^v"
xda.sendKeys i
xda.sendKeys "%s"
next
wscript.quit