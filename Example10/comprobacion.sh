#!/bin/bash

# Comprobacion sobre ficheros.
# -d Ruta: Cierto si la ruta existe y es un directorio.
# -e Ruta: Cierto si la ruta existe sea el elemento que sea.
# -f Ruta: Cierto si la ruta existe y es un fichero normal.
# -r Ruta: Cierto si la ruta existe y se puede leer.
# -w Ruta: Cierto si la ruta existe y se puede escribir.
# -x Ruta: Cierto si la ruta existe y es ejecutable.
# -s Ruta: Cierto si la ruta existe y su tamano es mayor que cero.
#
# exit (value): si value es 0 significa que no hay error.
# echo $?: Nos permite obtener el valor de retorno al terminar un script.

read -p "Introduzca una direccion: " dir

if [ ! -e $dir ]; then
    echo "Esta NO ruta existe!"
    exit 1
fi

if [ -e $dir -a -d $dir ]; then
    echo "La ruta es un directorio!"
    exit 0
fi

if [ -e $dir -a -f $dir ]; then
    echo "La ruta es un archivo!"
    exit 0
fi