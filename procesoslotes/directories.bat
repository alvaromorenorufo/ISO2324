@echo off
REM Crear menu 
REM
REM Autor: Alvaro Moreno
REM Fecha: 15-11-2023
echo 1- Crear fichero
echo 2- Mostrar arbol directorios
echo 3- Mostrar archivos .txt
echo 4- Crea los directorios alfredoff marinapg ramonam
echo 5- Copia contenido a la carpeta copia

set/p numero=" Introduce la opcion que deseas "
if %numero%== 1 goto numero1
if %numero%== 2 goto numero2
if %numero%== 3 goto numero3
if %numero%== 4 goto numero4
if %numero%== 5 goto numero5

:numero1
set/p fichero="Introduce el nombre de fichero "
echo > %fichero%.txt se ha creado con exito
exit

:numero2
tree %USERPROFILE%
pause
exit

:numero3
dir *.txt
pause
exit
:numero4
mkdir alfredoff marinapg ramonam
exit

:numero5
xcopy "C:\Users\alumno\Desktop\scripts" "C:\copia" 
exit
