@echo off

if exist \\.\CdRom0\* nul >nul 2>nul  && echo OK || echo NO
pause