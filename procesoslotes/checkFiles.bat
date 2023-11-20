@echo off
REM Script checkFiles.bat
REM 
REM Autor: Alvaro Moreno Rufo
REM Fecha: 20-11-2023

:inicio 
set /P archivo= "Dime el nombre de un archivo "

if exist %archivo% (

echo existe

goto inicio

)else (

echo hj > %archivo%