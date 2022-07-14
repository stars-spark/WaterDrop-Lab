@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

@SHIFT
@ECHO OFF
TITLE 一键去除快捷方式小箭头和小盾牌
ECHO.&ECHO 本工具使用期间需要重启资源管理器，请关闭其它页面后再继续操作！ &ECHO.&PAUSE&CLS
:MENU
ECHO.&ECHO  致美化：你想要……
ECHO.&ECHO  1、去除快捷方式小箭头
ECHO.&ECHO  2、去除小盾牌角标
ECHO.&ECHO  3、恢复快捷方式小箭头
ECHO.&ECHO  4、恢复小盾牌角标
ECHO.&ECHO.&ECHO 请选择：

CHOICE /C 1234 /N >NUL 2>NUL

IF "%ERRORLEVEL%"=="1" (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="2" (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="3" (
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)

IF "%ERRORLEVEL%"=="4" (
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /f >NUL 2>NUL
taskkill /f /im explorer.exe >NUL 2>NUL
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db" >NUL
del "%userprofile%\AppData\Local\iconcache.db" /f /q >NUL 2>NUL
start explorer
ECHO.&ECHO 完成 &TIMEOUT /t 2 >NUL&CLS&GOTO MENU
)
