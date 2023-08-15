@echo off
setlocal EnableDelayedExpansion

set A=%1
set LOCAL=%~d0%~p0
set FFMPEG=!LOCAL!\ffmpeg\ffmpeg.exe
set INSTALL=!LOCAL!\install.bat

call :get_folder !A!
set OUT_FOLDER=!ret!
call :get_filename !A!
set OUT_NAME=!ret!
set OUT="!OUT_FOLDER!!OUT_NAME!.wav"

if not exist !FFMPEG! (
	call !INSTALL!
)

echo !A!
echo !FFMPEG!
echo !OUT!

!FFMPEG! -i !A! -vn -ac 2 -ar 44100 -acodec pcm_s16le -f wav !OUT!

exit /b

:get_folder
	set ret=%~d1%~p1
	exit /b

:get_filename
	set ret=%~n1
	exit /b
	
:get_extention
	set ret=%~x1
	exit /b
