@echo off
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
rem Anything after here will run in a minimized window
mode con:cols=80 lines=5
pause