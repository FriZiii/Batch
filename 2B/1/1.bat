@echo off

if exist hex.txt del hex.txt

set /p var=<dec.txt

set /a num= var
set result=
:start
set /a reszta=(num%%16)
set /a num=(num/16)


if %reszta% == 0 (set result=0%result%)
if %reszta% == 1 (set result=1%result%)
if %reszta% == 2 (set result=2%result%)
if %reszta% == 3 (set result=3%result%)
if %reszta% == 4 (set result=4%result%)
if %reszta% == 5 (set result=5%result%)
if %reszta% == 6 (set result=6%result%)
if %reszta% == 7 (set result=7%result%)
if %reszta% == 8 (set result=8%result%)
if %reszta% == 9 (set result=9%result%)
if %reszta% == 10 (set result=A%result%)
if %reszta% == 11 (set result=B%result%)
if %reszta% == 12 (set result=C%result%)
if %reszta% == 13 (set result=D%result%)
if %reszta% == 14 (set result=E%result%)
if %reszta% == 15 (set result=F%result%)

echo %result%>hex.txt

if %num% == 0 goto :eof

goto start
