@echo OFF

if "%~1" == "" (
    echo "General checking"
    ping -t www.google.com
) else (
    echo "Checking %~1"
    ping -t %~1
)
