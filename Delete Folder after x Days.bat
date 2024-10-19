@echo off
color 0a
title Delete Folder After x Days
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออออออป
echo 	บ        Delete Folder After x Days         บ
echo 	ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	      Please wait while system starts.
ping -n 3 -w 3000 0.0.0.1 > nul
echo.
echo.
echo.
echo.


::-------------------Delete Folder After x Days-------------------::

:: set folder path
set dump_path=%drive%

:: set min age of files and folders to delete
set max_days=30

:: remove files from %dump_path%
forfiles -p %dump_path% -m *.* -d -%max_days% -c "cmd  /c del /q @path"

:: remove sub directories from %dump_path%
forfiles -p %dump_path% -d -%max_days% -c "cmd /c IF @isdir == TRUE rd /S /Q @path"
