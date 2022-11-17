@echo off
:start
set /p ext=Podaj rozszerzenie: 
for %%F in (*.%ext%) do (echo %%F >> listaplikow%ext%.txt)
sort listaplikow%ext%.txt
set /p opt=Chcial_bys dodac kolejne rozszerzenie?[t/n] 
if %opt%==t (goto :start) else (echo Listy utworzone!)
pause