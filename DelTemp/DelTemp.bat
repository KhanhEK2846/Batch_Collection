@echo OFF

del /q /f /s %temp%\*

rem Need Admin right
del /s /q C:\Windows\Temp\*
