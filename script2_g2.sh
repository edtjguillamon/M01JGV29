#!/bin/bash
# Alejandro Franco, Jorge Pastor
# tiempo: mucho

######### puede dar errores si hay archivos que empiecen por h anteriormente.
#######  crea 2 ficheros sin extension y los muestra
clear
echo "creamos ficheros sin extension"
echo "touch {hola,hola1}"
touch {hola,hola1}
ls
echo "-Enter continuar-"
read tecla

######## pone extension a esos 2 archivos 

echo "le ponemos extension .txt mediante."
echo "ls -1  | awk '{print "mv "$1" "$1".txt"}' | sh"
echo "-Enter continuar-"
read tecla

######## muestra el resultado
ls  | grep ^h | awk '{print "mv "$1" "$1".txt"}' | sh
ls

