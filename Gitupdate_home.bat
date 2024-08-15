@echo off
MODE CON COLS=68 LINES=10
Title Gitupdate Automation
color 0a
cls
timeout /t 90

:loop
    cls
    echo ################################################
    echo   Updating git repo Autometically...
	echo ################################################
	D:
	cd "D:\my_gitlab_code"
	git pull 
	git add .
	git commit -am "Made changes"
	git push

    timeout /t 60
    goto :loop

## shell:startup or shell:common startup
## put on C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Gitupdate.cmd
##