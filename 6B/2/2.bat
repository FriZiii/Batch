@echo off
setlocal enabledelayedexpansion

if exist equals.txt del equals.txt
if exist other.txt del  other.txt

set /p plik=Podaj plik:

for %%X in (*.txt) do (
    set n=%%X
    Rem usun wyswietlanie i porownaj
    Rem 0 identyczne 1 inne
    fc "!n!" "!plik!" > NUL && echo !n! >> eq.txt || echo !n! >> oth.txt 
)

if exist eq.txt sort eq.txt > equals.txt && del eq.txt
if exist oth.txt sort /R oth.txt > other.txt && del oth.txt