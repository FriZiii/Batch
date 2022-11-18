@echo off
setlocal enabledelayedexpansion

if exist hex.txt del hex.txt

for /f "delims=" %%X in (dec.txt) do (

set dec=%%X 

call cmd /c exit !dec!

set hex=!=ExitCode!
echo !dec! = !hex!>>hex.txt
)