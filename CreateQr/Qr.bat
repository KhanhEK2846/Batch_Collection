@echo OFF


if "%~1" == "" goto :noti


curl qrenco.de/%1

:end
    exit /b 0

:noti
    echo "Missing Input"
	echo "Example: Or.bat URL"
    goto :end
