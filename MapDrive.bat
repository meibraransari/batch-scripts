@echo off
set SERVER=\\192.168.192.242\data
set USERNAME=your_user
set PASSWORD=xxxxxxxxxxxxxxxxxxxxxxxxx
set MOUNT_POINT=Z:

echo Mapping network drive %MOUNT_POINT% to %SERVER%...

net use %MOUNT_POINT% %SERVER% /user:%USERNAME% %PASSWORD%

if %errorlevel% equ 0 (
    echo Network drive successfully mapped.
    echo Waiting for 3 seconds...
    timeout /t 3 /nobreak >nul
	echo Opening network drive...
    start "" /B %MOUNT_POINT%
) else (
    echo Failed to map network drive.
	pause
)