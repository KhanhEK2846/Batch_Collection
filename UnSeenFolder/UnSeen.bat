echo OFF


if "%~1" == "" goto :noti

set /p choice="Mode hide(1) or Unhide(2): "
set /A choice = %choice%
echo %choice%
if %choice% == 1 goto :HideF
if %choice% == 2 goto :UnhideF
echo "Invalid Input"

:end
    exit /b 0

:noti
    echo "Missing Input"
	echo "Example: hideZip.bat pathFolder"
    goto :end


:HideF
    attrib +h +s +r %1
    goto :end

:UnhideF
    attrib -h -s -r %1
    goto :end

