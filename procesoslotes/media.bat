@echo off
REM Media 3 numeros
REM
REM Autor: Alvaro Moreno
REM Fecha: 14-11-2023

set valor1=%1
set valor2=%2
set valor3=%3

set/A suma=%1 + %2 + %3
set/A resultado= %suma% /3
echo La media de los tres numeros es igual a %resultado%

