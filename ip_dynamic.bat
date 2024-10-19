@echo off
color 1e
Title LAN Setup
::Title - Sets the title
echo.
echo.
echo 	ษออออออออออออออออออออออออออออออออออออป
echo 	บ   Obtain IP Address Automaticaly   บ
echo 	ศออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	1. Please wait Connecting "Local Area Connection"
ping -n 3 -w 1000 0.0.0.1 > nul
echo.
echo.
echo.
echo.
ECHO 	2. Local Area Connection found and "Cennected"
netsh interface ip set address "Local Area Connection" dhcp
netsh interface ip set dns     "Local Area Connection" dhcp
ECHO 	3. Please Wait while setup not complete...
ping -n 5 -w 1000 0.0.0.1 > nul
echo x=msgbox("Setup completed Successfully" ,0, "Information") > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
del %temp%\popup.vbs