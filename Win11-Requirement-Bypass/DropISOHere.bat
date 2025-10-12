@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrator privileges...
    powershell.exe -Command "Start-Process '%~f0' -ArgumentList '%1' -Verb RunAs"
    exit /b
)
echo Launching mount script...
powershell.exe -ExecutionPolicy Bypass -File "%~dp0RunInstaller.ps1" "%1"
