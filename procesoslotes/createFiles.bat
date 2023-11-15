@echo off
REM Crear menu 
REM
REM Autor: Alvaro Moreno
REM Fecha: 15-11-2023
title Condicionales
echo Teclee 1 para crear archivo.txt
echo Teclee 2 para crear archivo.bat
set/p numero= "Introduzca numero "

if %numero% == 1 goto txt
if %numero% == 2 goto bat

:txt
set/p archivo1="Introduce el nombre de tu archivo "
type nul > %archivo1%.txt
exit

:bat
set/p archivo2="Introduce el nombre de tu archivo "
type nul > %archivo2%.bat
exit