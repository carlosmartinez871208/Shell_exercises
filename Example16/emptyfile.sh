#!/bin/bash
#
# Script para ver que archivos estan vacios:
#                                          Debe verificar que el archivo exista.
#                                          Debe verificar que este vacio.
#                                          Debe abandonar la ejecucion cuando encuentre un archivo vacio.
#
for File in $(ls *); do
    if [ -e $File -a ! -s $File  ]; then
        echo "$File: el fichero esta vacio"
        break
    else
        echo "$File"
    fi
done