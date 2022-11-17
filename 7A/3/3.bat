@echo off
setlocal enabledelayedexpansion
:nazwa
set /p location=Podaj lokalizacje pliku:
set /p file=Podaj plik: 
set new_file=new_%file%
echo %new_file%
for /F "tokens=*" %%A in (%location%\%file%) do (
    set line=%%A 
    echo(!line: =!>>%new_file%)
    )
set /p choice=Czy chcesz podac kolejna lokalizacje[T/N]: 
if %choice% == T goto nazwa
