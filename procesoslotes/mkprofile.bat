
@echo off
REM Cear dentro del perfil del usuario los siguientes directorios: asir dam smr daw ceti 
REM
REM Alvaro Moreno Rufo
REM Fecha: 13-11-2023

mkdir %USERPROFILE%\asir %USERPROFILE%\dam %USERPROFILE%\smr %USERPROFILE%\daw %USERPROFILE%\ceti
mkdir %USERPROFILE%\asir\pract %USERPROFILE%\asir\docs %USERPROFILE%\asir\exam
mkdir %USERPROFILE%\dam\pract %USERPROFILE%\dam\docs %USERPROFILE%\dam\exam
mkdir %USERPROFILE%\smr\pract %USERPROFILE%\smr\docs %USERPROFILE%\smr\exam
mkdir %USERPROFILE%\daw\pract %USERPROFILE%\daw\docs %USERPROFILE%\daw\exam
mkdir %USERPROFILE%\ceti\pract %USERPROFILE%\ceti\docs %USERPROFILE%\ceti\exam
