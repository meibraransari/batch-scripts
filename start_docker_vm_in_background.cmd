@echo off
MODE CON COLS=68 LINES=10
Title Run Docker VM
color 0a
cls
timeout /t 120
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" start "V:\Virtual_Machines\Docker_v1\Docker_v1.vmx" nogui

##
## put on C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\startvpn.cmd
##
