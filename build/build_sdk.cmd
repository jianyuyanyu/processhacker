@echo off
@setlocal enableextensions
@cd /d "%~dp0\..\"

set BUILD_TOOL="tools\CustomBuildTool\bin\Release\%PROCESSOR_ARCHITECTURE%\CustomBuildTool.exe"

if not exist %BUILD_TOOL% (
    echo Build tool not found. Run build\build_init.cmd first.
    exit /b 1
)

REM start /B /W "" %BUILD_TOOL% "-sdk" "-Debug" "-Win32"
REM start /B /W "" %BUILD_TOOL% "-sdk" "-Debug" "-x64"
REM start /B /W "" %BUILD_TOOL% "-sdk" "-Debug" "-arm64"

REM start /B /W "" %BUILD_TOOL% "-sdk" "-Release" "-Win32"
start /B /W "" %BUILD_TOOL% "-sdk" "-Release" "-x64"
REM start /B /W "" %BUILD_TOOL% "-sdk" "-Release" "-arm64"

pause
