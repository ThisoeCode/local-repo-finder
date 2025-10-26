:: EXAMPLE USAGE
:: repo_lister.bat "D:\projects"

@echo off
setlocal enabledelayedexpansion

:: args
if "%~1"=="" (
    echo Usage: %~nx0 [root_directory]
    exit /b 1
)

set "root=%~1"

echo Searching for .git folders under "%root%"...
echo Please wait...
echo.

set /a count=0
for /f "delims=" %%G in ('dir "%root%" /ad /b /s ^| findstr /i "\\.git$"') do (
    set "parent=%%~dpG"
    for %%H in ("!parent:~0,-1!") do (
        set /a count+=1
        echo !count!. %%~nH
        echo    !parent:~0,-1!
        echo.
    )
)

endlocal