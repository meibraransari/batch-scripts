@echo off
:: Run As Admin
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:: Set Random Number
set random_number=%random:~-4%
set suff=IC@
set pass=%suff%%random_number%

:: Put log in  d drive
echo %random_number% >> d:/log.log

:: Change password
net user user %pass%
