@echo off
color 0a
title Keeps the X latest folder in a folder
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออออออป
echo 	บ   Keeps the X latest folder in a folder   บ
echo 	ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	      Please wait while system starts.
ping -n 3 -w 3000 0.0.0.1 > nul
echo.
echo.
echo.
echo.



:: Batch file that keeps the X latest folder in a folder 
:: Please set TargetDirectory.
:: Please set skip count.




SET TargetDirectory="D:\DATA"
set Skip=Skip=1

setlocal
cd /d %TargetDirectory%


for /f "%skip% delims=" %%a in ('dir /b /ad /tc /o-d "%TargetDirectory%\"') do rmdir /s /q "%TargetDirectory%\%%a"

