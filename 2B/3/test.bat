@echo off
setlocal ENABLEDELAYEDEXPANSION
set  word=012345
set pos=0

set var=%word:~0,1%

echo %var%