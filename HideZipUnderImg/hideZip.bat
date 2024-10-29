echo OFF

if "%~1" == "" goto :noti
if "%~2" == "" goto :noti


if "%~3" == "" (goto :planB)

:planA
    copy /b %3+%1 %2


:end
    exit /b 0

:noti
    echo "Missing Input"
	echo "Example: hideZip.bat zip imgSecret imgHide"
    goto :end

:planB
    copy NUL EmptyImg.jpg
    copy /b EmptyImg.jpg+%1 %2%
    del EmptyImg.jpg

    goto :end
