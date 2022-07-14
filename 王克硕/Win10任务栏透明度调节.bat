@ECHO OFF&(PUSHD "%~DP0")&(REG QUERY "HKU\S-1-5-19">NUL 2>&1)||(
powershell -Command "Start-Process '%~sdpnx0' -Verb RunAs"&&EXIT)

TITLE Win10任务栏透明度调节工具
ECHO.&ECHO 本工具使用期间需要重启资源管理器，请关闭其它页面后再继续操作！ &ECHO.&PAUSE&CLS
:MENU
ECHO.&ECHO  Win10任务栏透明度调节：
ECHO.&ECHO  1、系统默认
ECHO.&ECHO  2、半透明
ECHO.&ECHO  3、全透明（仅适用于深色任务栏）
ECHO.&ECHO.&ECHO 请选择：

CHOICE /C 123 /N >NUL 2>NUL

IF "%ERRORLEVEL%"=="1" (
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAcrylicOpacity" >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="2" (
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAcrylicOpacity" /t REG_DWORD /d "1" >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="3" (
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "TaskbarAcrylicOpacity" /t REG_DWORD /d "0" >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL & start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

