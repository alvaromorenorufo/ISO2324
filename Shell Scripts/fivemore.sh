#!/bin/bash
# Autor: Alvaro Moreno Rufo
# Fecha: 02/02/2024

clear

if [ "$#" -ne 2 ]; then
    echo "Error: Se esperaban dos parámetros de entrada."
    exit 1
fi

fichero=$1
directorio=$2

if [ -e "$fichero" ]; then
    echo "El fichero ya existe."
    exit
fi

if [ ! -d "$directorio" ]; then
    echo "El directorio no existe."
    exit
fi

if [ -z "$(ls -A $directorio)" ]; then
    echo "El directorio está vacío."
    exit
fi

echo "Autor: Alvaro Moreno Rufo"

ficheros=$(ls $2/*.txt)
for i in $ficheros; do
    if [ -f $i ]; then 
        lineas=$(wc -l < $i)
        if [ $lineas -ge 5 ]; then
            echo $i
            echo $i >> $1

            palabras=$(wc -w < $i)
            echo "El fichero tiene $palabras palabras" > $i.q
            cat $i > $i.q
        fi
    fi
done

numero=$(wc -l < $1)
echo $numero >> $1
