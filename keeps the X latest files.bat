@echo off
color 0a
title Keeps the X latest files in a folder
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออออป
echo 	บ   Keeps the X latest file in a folder   บ
echo 	ศอออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	      Please wait while system starts.
ping -n 3 -w 3000 0.0.0.1 > nul
echo.
echo.
echo.
echo.



:: Batch file that keeps the X latest files in a folder:: 





:: Please set TargetDirectory.
SET TargetDirectory="D:\DATA"

:: Please set file keep count.
set "keep=1"

setlocal
set /a cnt=0
cd /d %TargetDirectory%


:: Please set extension that you want ot delete.
for /f "eol=: delims=" %%F in ('dir /b /o-d /a-d *.txt') do (
  if defined keep (
    2>nul set /a "cnt+=1, 1/(keep-cnt)" || set "keep="
  ) else del "%%F"
)
