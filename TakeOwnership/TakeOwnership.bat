@echo OFF

set path=""
set /P path="Enter the full path of the file or folder you want to take ownership of: "
if "%path%"=="" set path= %path%
if %path%=="" goto:end

echo Taking ownership of %path%...
takeown /F %path% /R /D Y

:end
echo Done
