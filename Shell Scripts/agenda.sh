#!/bin/bash
#Agenda Telefonico
#Alvaro Moreno Rufo
#17-01-2024

while true; do
    echo "-------- Menú de Agenda --------"
    echo "a - Añadir una entrada"
    echo "b - Busqueda por DNI"
    echo "c - Ver agenda completa"
    echo "d - Eliminar todas las entradas de la agenda"
    echo "e - Finalizar"

    read -p "Selecciona una opción: " opcion

case $opcion in
	a)
		read -p "Introduce el DNI " dni

		if grep -q "^$dni:" agenda.txt 2>/dev/null; then
		echo "La persona con DNI $dni ya esta dada de alta en la agenda"

		else

		read -p "Introduce el nombre: " nombre
		read -p "Introduce los apellidos: " apellidos
		read -p "Introduce la localidad: " localidad

		echo "$dni:$nombre:$apellidos:$localidad" >> agenda.txt
		echo "Entrada añadida correctamente"

		fi
		;;

	b)
		read -p "Introduce el DNI " dni
		if grep "^$dni:" agenda.txt 2>/dev/null; then
		nombre=$(grep "^$dni:" agenda.txt | cut -d ":" -f 2)
		apellidos=$(grep "^$dni:" agenda.txt | cut -d ":" -f 3)
		localidad=$(grep "^$dni:" agenda.txt | cut -d ":" -f 4)
		echo "La persona con DNI numero $dni es: $nombre $apellidos, y vive en $localidad"
		else
		echo "El DNI no existe"
		fi
		;;
	c)
		if [ -s agenda.txt ]; then
		echo "Agenda completa"
		cat agenda.txt
		else
		echo "Agenda vacia."
		fi
		;;
	d)
		echo "Eliminando todas las entradas de la agenda..." > agenda.txt
		echo "Todas las entradas han sido eliminadas"
		;;
	e)
		echo "Finalizando"
		exit 0
		;;
	*)
		echo "Opcion no valida, introduce una opcion valida"
esac
done
