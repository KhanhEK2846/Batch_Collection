@echo OFF

set source="*.*"
set destination="D:\Backup\"

set /P source="Enter source path (default is current directory): "
if not "%source%" == "" set source=%source%


set /P destination="Enter destination path (default is D:\Backup\): "
if not "%destination%" == "" set destination=%destination%


xcopy %source% %destination% /S /E /H /Y
