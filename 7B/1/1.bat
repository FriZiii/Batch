@echo off
setlocal enabledelayedexpansion

set /p path=Podaj path:
for %%F in (!path!\*.txt) do (
    set plik=%%F
    echo Aktualny plik !plik!
    for /f "delims=" %%X in (!plik!) do (
        set tekst=%%X
        echo Tekst przed: !tekst!
        for /f "useback tokens=* " %%a in ('!tekst!') do (set tekst=%%~a)
        echo Tekst po: !tekst!
        echo !tekst!>!plik!
        )
    )