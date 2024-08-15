@echo off
cls

REM Download latest cli
REM https://www.speedtest.net/apps/cli

REM Set the path to speedtest-cli (adjust this if needed)
set SPEEDTEST_PATH=C:\speedtest\speedtest.exe

:run_tests
echo Running test
%SPEEDTEST_PATH%

REM Add a delay of 1 minute (60 seconds) between tests
timeout /t 10 /nobreak >nul

REM Repeat the tests indefinitely
goto run_tests
