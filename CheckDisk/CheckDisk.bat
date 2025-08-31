@echo OFF

SET command=""
SET /P command=Enter your command:

if "%command%" == "r" (
    chkdsk /r
) else if "%command%" == "f" (
    chkdsk /f
) else if "%command%" == "x" (
    chkdsk /x
) else (
    echo "Invalid Command"
)

exit /b 0

