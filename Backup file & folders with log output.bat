@echo off
color 0a
title Backup file and folders with log output.
echo.
echo.
echo 	ษอออออออออออออออออออออออออออออออออออออออออออป
echo 	บ  Backup file and folders with log output  บ
echo 	ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
ECHO 	      Please wait while system starts.
ping -n 3 -w 3000 0.0.0.1 > nul
echo.
echo.
echo.
echo.



::-------------------Backup file & folders with log output-------------------::
:: variables
if exist J:\Repositories_Backup GOTO run
if not exist J:\Repositories_Backup\nul md\Repositories_Backup
:run
set log=J:\Repositories_Backup\Logs
set backup=E:\Repositories
set drive=J:\Repositories_Backup
set backupcmd=xcopy /s /c /d /e /h /i /r /k /y /G

set year=%DATE:~10,4%
set day=%DATE:~7,2%
set mnt=%DATE:~4,2%
set hr=%TIME:~0,2%
set min=%TIME:~3,2%

IF %day% LSS 10 SET day=0%day:~1,1%
IF %mnt% LSS 10 SET mnt=0%mnt:~1,1%
IF %hr% LSS 10 SET hr=0%hr:~1,1%
IF %min% LSS 10 SET min=0%min:~1,1%
set backuptime=Repositories_Backup=%day%-%mnt%-%year%=%hr%-%min%
::Start Backup

Echo ============Backup Utility By Ansari============>> "%log%\Backup_log.txt"
Echo         SVN Server Repositories Backup          >> "%log%\Backup_log.txt"
Echo    Backup Job on %Computername% As %Username%   >> "%log%\Backup_log.txt"
Echo ================================================>> "%log%\Backup_log.txt"
echo "Backing Directories - Please Wait">> "%log%\Backup_log.txt"
echo Copying started at %date% %time%>> "%log%\Backup_log.txt"
Echo Source to Destination Details:- "%backup% To %drive%" >> "%log%\Backup_log.txt"
Echo Copying Details:- >> "%log%\Backup_log.txt"
echo. >> "%log%\Backup_log.txt"

%backupcmd% "%backup%" "%drive%\%backuptime%\" >> "%log%\Backup_log.txt"

echo. >> "%log%\Backup_log.txt"
Echo =============================================================>> "%log%\Backup_log.txt"
echo Copying Completed Successfully at %date% %time%>> "%log%\Backup_log.txt"
Echo =============================================================>> "%log%\Backup_log.txt"
echo. >> "%log%\Backup_log.txt"
echo. >> "%log%\Backup_log.txt"
echo. >> "%log%\Backup_log.txt"





