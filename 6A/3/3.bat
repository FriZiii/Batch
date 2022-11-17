@echo off
setlocal ENABLEDELAYEDEXPANSION

set word=%1
set pos=0
:NextChar
set var=!word:~%pos%,1!%var%
set /a pos=pos+1
if not "!word:~%pos%,1!" == "" goto NextChar

echo Slowo odwrocone: !var!
