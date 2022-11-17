 @echo off
setlocal enabledelayedexpansion

if exist lista.txt del lista.txt

set /p path=Podaj path:
for %%F in (%path%\*.txt) do (
    set /a count=0
    set var=%%F
    echo Aktualny plik: !var!
    pause
    for /f "usebackq tokens=*" %%X in (!var!) do (
        for %%Y in (%%X) do (
            set /a count=count+1
        )
        echo !var! liczba slow: !count!>>lista.txt
    )
 )