@echo off
color a
setlocal enabledelayedexpansion
set Counter=0
set Schalter=2
set Width=0

:1
title Ibrar Ansari Installation menu
set /a Counter=%Counter% + 1
set /a Display=%Counter% / 2
FOR /L %%A IN (1,1,%Display%) DO (
    set Display=!Display!ฒ
)
cls
echo          Love files are copied...           	      %Counter%%%
echo 	ษออออออออออออออออออออออออออออออออออออออออออออออออป
echo         บฒ!Display:~2,47!บ
echo 	ศออออออออออออออออออออออออออออออออออออออออออออออออผ
ping localhost -n 1 >nul
if "%Counter%" == "100" goto :1-End
goto :1
:1-End
echo.
echo Installation complete..Plz Hit Enter
pause >nul

EXIT /b