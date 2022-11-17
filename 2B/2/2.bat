@echo off
setlocal enabledelayedexpansion
set /a count=0
for %%F in (%1\*.txt) do (
    set /a count=count+1
    for /F %%X in (%%F) do (
        echo %%X>>out.txt
        )
    )

set /a count=count-1
echo Scalono %count% pliki>info.txt