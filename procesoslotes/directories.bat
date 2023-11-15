@echo off
REM Crear menu 
REM
REM Autor: Alvaro Moreno
REM Fecha: 15-11-2023

set/p fichero="Introduce el nombre de fichero "
echo > %fichero%.txt se ha creado con exito
echo.
tree %USERPROFILE%
echo.
dir *.txt
echo.
mkdir alfredoff marinapg ramonam
echo. 
xcopy "C:\Users\alumno\Desktop\scripts" "C:\copia" 
