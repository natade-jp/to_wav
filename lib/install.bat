@echo off
setlocal EnableDelayedExpansion

set LOCAL=%~d0%~p0
set ZIP=!LOCAL!\ffmpeg.zip
set OUTPUT=!LOCAL!\

powershell Expand-Archive -Path !ZIP! -Destination !OUTPUT! -Force

exit /b
