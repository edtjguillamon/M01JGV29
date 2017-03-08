#!/bin/bash
#Grupo: Alejandro López, Marc Gómez, Jordi Guillamon
#Tiempo: 9:47 ->

while true
do
	clear
	echo "1- Crear usuario"
	echo " "
	echo "2- Borrar usuario"
	echo " "
	echo "3- Salir"
	read num 
	case $num in
		
		1)	echo "Introduzca el nombre de usuario"
			read nombre
			useradd $nombre && echo "Usuario creado correctamente"
			;;
		2)	echo "Introduzca el nombre de usuario que desea borrar"
			read nombre
			userdel $nombre && echo "Usuario borrado correctamente"
			;;
		3)	echo "Adéu!"
			exit 0
			;;
	esac
	
	echo "Pulse una tecla para comtinuar"
	read tecla
done 
