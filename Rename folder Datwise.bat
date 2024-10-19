@echo off
color 0a
title Rename Log File as datewise
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออออออป
echo 	บ         Rename Log File as datewise       บ
echo 	ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	      Please wait while system starts.
ping -n 3 -w 3000 0.0.0.1 > nul
echo.
echo.
echo.
echo.


::-------------------Rename Log File as datewise-------------------::

:: set Drive path
set drive=E:

:: set folder path
set log=E:\Logs


FOR /F "tokens=1-4 delims=/- " %%A IN ('DATE /T') do set dateStr=%%C_%%B_%%D
FOR /F "tokens=1-4 delims=: " %%A IN ('TIME /T') do set timeStr=%%A_%%B_%%C
set log_name=Backup_Log_%dateStr%_%timeStr%.txt
%drive%
cd %log%
ren Backup_log.txt %log_name%
