@echo OFF

if "%~1" == "" goto :noti


curl wttr.in/%1

:end
    exit /b 0

:noti
    echo "Missing Input"
	echo "Example: WeatherReport.bat NameCity"
    goto :end
