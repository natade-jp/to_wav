@echo off
setlocal EnableDelayedExpansion

set LOCAL=%~d0%~p0
set BAT=!LOCAL!\lib\to_ffmpeg.bat

for %%f in (%*) do (
	echo !BAT! %%f
	%BAT% %%f
	timeout 1
)

pause
