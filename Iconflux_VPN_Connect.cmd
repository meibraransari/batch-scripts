@echo off
MODE CON COLS=68 LINES=10
Title VPN Connect
color 0a
cls
timeout /t 90

set VPN=Office
set USERNAME=ibrar.ansari
set PASSWORD=xxxxxxxxxxxxxxxxxxxxxxxxx

:loop
    cls
    echo ################################################
    echo    Checking connection availability...
    ipconfig|find /i "%VPN%" > NUL
    echo    Congratulations!!! "%VPN%" is connected
    echo ################################################
    if %errorlevel%==1 goto:reconnect > NUL
    echo It will check every 30 seconds and if "%VPN%" disconnect then will recconect it again.
    timeout /t 30 /nobreak 
    goto :loop

:reconnect
    cls
    echo "%VPN%" disconnected...
    rasdial "%VPN%" /disconnect > NUL
    echo Connecting...
    rasdial "%VPN%" "%USERNAME%" "%PASSWORD%"


    goto :loop
##
## put on C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startvpn.cmd
##

