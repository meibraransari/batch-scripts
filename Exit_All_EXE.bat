@echo off
color 0a
title 	Exit All API

echo.
echo 	Closing All API.....
::ping 127.0.0.1 -n 9 > nul

taskkill /f /im Local_QA.exe
taskkill /f /im Self_Hosted_QA.exe


::----------------------Exit---------------------------::
ECHO.
echo All programe exit succefully, Now exit all going to exit.
echo.
echo Good by....
ping 127.0.0.1 -n 9 > nul

exit
