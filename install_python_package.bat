@echo off

rem Remove requirements.txt file if it exists
if exist requirements.txt (
    echo Removing existing requirements.txt file...
    del requirements.txt
)

if not "%missing_packages%"=="" (
    echo Installing missing Python packages...
    rem Create requirements.txt file
    echo Creating requirements.txt file...
    (
        echo datetime
        echo pandas
        echo psycopg2
        echo pytz
    ) > requirements.txt

    rem Install missing Python packages from requirements.txt
    python -m pip install -r requirements.txt
    if %errorlevel% equ 0 (
        echo Python packages installation complete.
        timeout /t 15
    ) else (
        echo Failed to install Python packages from requirements.txt.
        timeout /t 15
        exit /b 1
    )
) else (
    echo All required Python packages are already installed.
    timeout /t 15
)