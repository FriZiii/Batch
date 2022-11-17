@echo off
setlocal enabledelayedexpansion

if exist info.txt del info.txt
if exist out.txt del out.txt

set /a count=0
for %%F in (%1\*.txt) do (
    for /F "delims=" %%X in (%%F) do (
        echo %%X>>out.txt
        )
        set /a count=count+1
    )

echo Scalono %count% pliki>info.txt