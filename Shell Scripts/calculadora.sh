#!/bin/bash
#Alvaro Moreno Rufo
#Fecha: 23/01/2024

clear

echo "Autor: Alvaro Moreno Rufo"

if [ "$#" -ne 2 ]; then
    	echo "Número incorrecto de parámetros."
    	exit
fi


if [ -e "$1" ]; then
    	echo "Fichero existente"
    	exit
fi

i=1
while [ $i -le $2 ]; do
echo "Menu de operaciones"
echo	"S.Sumar"
echo	"R.Restar"
echo	"M.Multiplicar"
echo	"D.Dividir"
echo	"X.Salir"
read -p "Introduce la operacion a realizar; " op op1 op2

case $op in

    	S)
    	echo "La opcion se sumar ha sido seleccionada"
    	suma=$(($op1+$op2))
			echo $op1+$op2=$suma
			echo $op $op1 $op2 >> $
    	;;

    	R)
    	echo "La opcion de restar ha sido seleccionada"
    	resta=$(($op1-$op2))
			echo $op1-$op2=$resta
			echo $op $op1 $op2 >> $1
    	;;

    	M)
    	echo "La opcion de multiplicar ha sido seleccionada"
    	mult=$(($op1*$op2))
			echo $op1*$op2=$mult
			echo $op $op1 $op2 >> $1
    	;;

    	D)
    	echo "La opcion de dividir ha sido seleccionada"
    	div=$(($op1/$op2))
			echo $op1/$op2=$div
			echo $op $op1 $op2 >> $1
    	;;

    	X)
            	echo "Saliendo del programa."
            	exit
        ;;
    	*)
            	echo "Operación no válida. Las operaciones permitidas son: S, R, M, D, X."
        ;;

esac

i=$(($i+1))
done

p=$(pwd)
echo
echo $p/$1
echo "Contenido del fichero de salida:"
cat $1
echo

