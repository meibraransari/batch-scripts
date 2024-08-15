:://Turn off screen text messages
@ECHO OFF 
color 0a  
title 	Restart explorer.exe in every 30 mins                 
::://Set marker called loop, to return to
:loop                               
echo.
echo.
echo Simple Script to Restart Windows Explorer
echo.
echo.
echo.
echo STEP 1: Closing Explorer . . .
echo.
TASKKILL /F /IM explorer.exe
echo.
:://Wait 4 seconds to give your prgram time to close fully - (optional)
timeout 4                
echo.
echo STEP 2: Starting Explorer . . .
start explorer.exe
echo.
echo SUCCESS: Explorer is running.
echo.
echo.
:://Wait 30 minutes
timeout 1800

:://Go to start point
goto loop                