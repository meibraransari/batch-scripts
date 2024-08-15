@echo off
color 0a
title 	Start All Apps at Startup.


::---------------------- Notepad++ ---------------------------::
echo.
echo 	Starting Notepad++.....
ping 127.0.0.1 -n 1 > nul
start /d "C:\Program Files\Notepad++" notepad++.exe

::---------------------- sublime_text ---------------------------::
echo.
echo 	Starting sublime_text.....
ping 127.0.0.1 -n 1 > nul
start /d "C:\Program Files\Sublime Text 3" sublime_text.exe

::---------------------- Skype ---------------------------::
echo.
echo 	Starting Skype.....
ping 127.0.0.1 -n 60 > nul
start /d "C:\Program Files (x86)\Microsoft\Skype for Desktop" Skype.exe

::---------------------- Outlook ---------------------------::
echo.
echo 	Starting Outlook.....
ping 127.0.0.1 -n 60 > nul
start /d "C:\Program Files\Microsoft Office\Office16" OUTLOOK.EXE

::---------------------- Chrome ---------------------------::
echo.
echo 	Starting Chrome.....
ping 127.0.0.1 -n 60 > nul
start /d "C:\Program Files (x86)\Google\Chrome\Application" chrome.exe

::---------------------- WiseReminder ---------------------------::
echo.
echo 	Starting WiseReminder.....
ping 127.0.0.1 -n 60 > nul
start /d "C:\Program Files (x86)\Wise\Wise Reminder" WiseReminder.exe

::---------------------- Snagit ---------------------------::
echo.
echo 	Starting Snagit.....
ping 127.0.0.1 -n 0 > nul
start "" "C:\Program Files\TechSmith\Snagit 2019\Snagit32.exe"

::---------------------- KVMS Pro ---------------------------::
echo.
echo 	Starting KVMS Pro.....
ping 127.0.0.1 -n 0 > nul
::start /d "C:\Program Files (x86)\CP Plus\KVMS Pro\KVMS Pro\" KVMS Pro.exe
start "" "C:\Program Files (x86)\CP Plus\KVMS Pro\KVMS Pro\KVMS Pro.exe"


::----------------------Exit---------------------------::
ECHO.
echo All programe started succefully, Now start all going to exit.
echo.
echo Good by....
ping 127.0.0.1 -n 3 > nul
exit

