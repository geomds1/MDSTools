@echo off
set "APP_NAME=MDSTools.bundle"
set "DEST=%APPDATA%\Autodesk\ApplicationPlugins\%APP_NAME%"

echo ------------------------------------------
echo   MDSTools Uninstaller
echo ------------------------------------------

if exist "%DEST%" (
    echo Removing package from:
    echo %DEST%
    rd /s /q "%DEST%"
    echo.
    echo SUCCESS: Package has been removed.
    echo Please restart AutoCAD to apply changes.
) else (
    echo.
    echo ERROR: Package not found in ApplicationPlugins folder.
)

echo.
pause