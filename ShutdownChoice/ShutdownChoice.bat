@echo OFF

set type=0
set time=3600

set /P action="Enter shutdown action (shutdown(0)/restart(1)/logoff(2)/Cancel(3)):"

if "%action%" == "0" set type=0
if "%action%" == "1" set type=1
if "%action%" == "2" set type=2
if "%action%" == "3" set type=3

set /P timeInput="Enter time in seconds (default is 3600 seconds):"

if not "%timeInput%" == "" set time=%timeInput%

if %type% == 0 (
    shutdown /s /t %time%
) else if %type% == 1 (
    shutdown /r /t %time%
) else if %type% == 2 (
    shutdown /l
) else if %type% == 3 (
    shutdown /a
) else (
    echo Invalid option. Please run the script again.
)
