@echo off
color 1a
title 	Start All Apps at Startup.
mode 80
:: Create "back" folder in C:\Users\User\AppData\Roaming\
cls
REM ------------------------------------------------
REM  Default values
REM ------------------------------------------------

    set menu=0
    set confirm=n

REM ------------------------------------------------
REM  Start a Windows Application
REM ------------------------------------------------
echo.
    :OPTION
    cls
    echo.
    echo 	----------------------------------------
    echo 	     NOTEPAD ++ MENU BY ABRAR ANSARI
    echo 	----------------------------------------
    echo.
    echo 	1. Start Notepad ++                      
    echo 	2. Close Notepad ++ 
    echo 	3. Save Notepad ++ config  
    echo.
    echo    	****************
    echo 	0. [ EXIT ]
    echo.   	****************
    echo.
REM ------------------------------------------------
REM  Make a choice
REM ------------------------------------------------
    set /P menu=        CHOSE YOUR OPTION :- 

    if '%menu%'=='0' goto OPTION   
    if '%menu%'=='1' echo Starting Notepad ...
    if '%menu%'=='1' goto start
    if '%menu%'=='2' echo Closing Notepad ...
    if '%menu%'=='2' goto close 
    if '%menu%'=='3' echo Saving Notepad ++ config...
    if '%menu%'=='3' goto save 
   
    set confirm=n
    set /P confirm=START ANOTHER APPLICATION  (Y/N)  
    if '%confirm%'=='y' goto OPTION
    goto OPTION

:EXIT


:start
::---------------------- Notepad++ ---------------------------::
set source=%AppData%\back\
set destination=%AppData%\Notepad++\
del %destination%"\config.xml"
del %destination%"\session.xml"
echo.
echo 	Starting Notepad++.....
xcopy %source%"config.xml" %destination% /s/d/y/c/v/r
xcopy %source%"session.xml" %destination% /s/d/y/c/v/r
xcopy %source%"shortcuts.xml" %destination% /s/d/y/c/v/r
ping 127.0.0.1 -n 1 > nul
start /d "C:\Program Files\Notepad++" notepad++.exe
exit

:close
::----------------------Exit---------------------------::
taskkill /f /im notepad++.exe
set src=%AppData%\Notepad++\
set dstn=%AppData%\back\
del  %src%"\config.xml"
del %src%"\session.xml"
cls
	echo.
    echo 	----------------------------------------
    echo 	     NOTEPAD ++ MENU BY ABRAR ANSARI
    echo 	----------------------------------------
    echo.
    echo 	1. Start Notepad ++                      
    echo 	2. Close Notepad ++   
    echo 	3. Save Notepad ++ config
    echo.
    echo    	****************
    echo 	0. [ EXIT ]
    echo.   	****************
    echo.
    echo.
echo 	Closing Notepad++.....
echo.
echo.
echo  Good by....
ping 127.0.0.1 -n 2 > nul
exit

:save
::----------------------Save---------------------------::
taskkill /im notepad++.exe
::start /d "C:\Program Files\Notepad++" notepad++.exe
::taskkill /im notepad++.exe
set src=%AppData%\Notepad++\
set dstn=%AppData%\back\
xcopy %src%"config.xml" %dstn% /s/d/y/c/v/r
xcopy %src%"session.xml" %dstn% /s/d/y/c/v/r
xcopy %src%"shortcuts.xml" %dstn% /s/d/y/c/v/r
cls
	echo.
    echo 	----------------------------------------
    echo 	     NOTEPAD ++ MENU BY ABRAR ANSARI
    echo 	----------------------------------------
    echo.
    echo 	1. Start Notepad ++                      
    echo 	2. Close Notepad ++   
    echo 	3. Save Notepad ++ config
    echo.
    echo    	****************
    echo 	0. [ EXIT ]
    echo.   	****************
    echo.
    echo.
echo 	Saving Notepad ++ config.....
start /d "C:\Program Files\Notepad++" notepad++.exe
echo.
echo.
echo  Good by....
ping 127.0.0.1 -n 3 > nul
exit