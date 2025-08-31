@echo OFF

if "%~1" == "" goto :noti
if "%~2" == "" goto :noti

net user "%~1" "%~2" /add

:end
    exit /b 0

:noti
    echo "Missing Input"
	echo "Example: AddUser.bat username password"
    goto :end
