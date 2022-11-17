@echo off
setlocal ENABLEDELAYEDEXPANSION

set /P word=Podaj slowo:
set pos=0
:NextChar
set var=!word:~%pos%,1!%var%
set /a pos=pos+1
if not "!word:~%pos%,1!" == "" goto NextChar

if %var%==%word% (echo Jest to palindron) else (echo Nie jest to palindron)