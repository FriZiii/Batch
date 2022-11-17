@echo off
setlocal enabledelayedexpansion

set /p folder=Podaj folder: 
set /p zmiana=Podaj zmiane: 
set /p dozmiany=Podaj do zmiane: 

for /f %%X in ('dir /B !folder!') do (
	set content=
	for /f "delims=" %%L in (!folder!\%%X) do (
		set line=%%L
		set content=!content! !line:%zmiana%=%dozmiany%!
	)
	echo !content!>!folder!\%%X
)