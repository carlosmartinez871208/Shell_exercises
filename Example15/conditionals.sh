#!/bin/bash
#
# Este script nos permite realizar las siguientes actividades:
#   1. Comprobar si hay conexion.
#   2. Descargar un archivo, en caso de descarga exito mandar un mensaje: Descarga completa.
#   3. Mencionar el tamano del fichero.

ping -c1 www.cursea.me || exit 1
wget http://www.cursea.me/poemas.tar.gz && echo "Descarga completa."
size=$(du poemas.tar.gz | cut -f1)
echo "El tamano de la descarga es: $size K"

