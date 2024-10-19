@echo off
color 1e
Title LAN Setup
::Title - Sets the title
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออป
echo 	บ   Set IP Address to 192.168.192.222   บ
echo 	ศอออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	1. Please wait Connecting "Local Area Connection"
ping -n 3 -w 1000 0.0.0.1 > nul
echo.
echo.
echo.
echo.
ECHO 	2. Local Area Connection found and "Cennected"
netsh interface ip set address "Local Area Connection" static 192.168.192.222 255.255.255.0 192.168.192.1 1
netsh interface ip set dns     "Local Area Connection" static 203.187.200.195
netsh interface ip add dns     "Local Area Connection" 203.187.200.196 index=2
netsh interface ip add dns     "Local Area Connection" 8.8.8.8 index=3
ECHO 	3. Please Wait while setup not complete...
ping -n 5 -w 1000 0.0.0.1 > nul
echo x=msgbox("Setup completed Successfully" ,0, "Information") > "%temp%\popup.vbs"
wscript.exe "%temp%\popup.vbs"
del %temp%\popup.vbs