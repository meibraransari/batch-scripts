@echo off
color 0a
title Delete File After x Days
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออออออป
echo 	บ         Delete File After x Days          บ
echo 	ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	      Please wait while system starts.
ping -n 3 -w 3000 0.0.0.1 > nul
echo.
echo.
echo.
echo.


::-------------------Delete File After x Days-------------------::

:: set drive path
set drive=D:

:: set SET TargetDirectory
SET TargetDirectory="D:\DATA"

:: enter in directory
cd /d %TargetDirectory%

:: set min age of files and folders to delete
set max_days=2

:: Delete system engine

forfiles /p %TargetDirectory% /d -%max_days% /c "cmd /c del @file"
forfiles /p %TargetDirectory% /d -%max_days% /c "cmd /c del @file"

