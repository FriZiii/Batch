@echo off
setlocal enabledelayedexpansion

if exist nieparzysta_liczba_znakow.txt del nieparzysta_liczba_znakow.txt
if exist parzysta_liczba_znakow.txt del parzysta_liczba_znakow.txt

set /a pos=0
for %%F in (%1) do (
    set plik=%%F
    for /f "delims=" %%X in (!plik!) do (
        set tekst=%%X
        :NextChar
        set /a pos=pos+1
        if not "!tekst:~%pos%,1!" == "" goto NextChar
    )
)
set /a parzysta=!pos!%%2

if %parzysta%==0 (echo !pos!>parzysta_liczba_znakow.txt) else (echo !pos!>nieparzysta_liczba_znakow.txt)