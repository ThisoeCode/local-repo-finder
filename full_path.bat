


:: ABANDONED



@REM :: EXAMPLE USAGE
@REM :: full_path.bat "myrepo" "D:\projects"

@REM @echo off
@REM setlocal enabledelayedexpansion

@REM :: args
@REM if "%~1"=="" (
@REM     echo Usage: %~nx0 [directory_name] [search_root (optional)]
@REM     exit /b 1
@REM )

@REM set "target=%~1"

@REM :: Optional second argument = search root
@REM if "%~2"=="" (
@REM     set "root=."
@REM ) else (
@REM     set "root=%~2"
@REM )

@REM echo Searching "%root%" for directories named "%target%" containing a .git folder...
@REM echo.

@REM for /f "delims=" %%G in ('dir "%root%" /ad /b /s ^| findstr /i "\\%target%$"') do (
@REM     if exist "%%G\.git\" (
@REM         echo %%G
@REM     )
@REM )

@REM endlocal

