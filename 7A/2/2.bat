@echo off
set /p read=Czy chcesz ustawic pliki jako tylko do odczytu?[T/N]

if %read% == T for %%f in (%1\*.*) do (attrib +R %%f) else for %%f in (%1\*.*) do (attrib -R %%f)
for %%f in (%1\*.*) do (attrib %%f>info.txt)
