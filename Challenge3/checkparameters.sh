#!/bin/bash
#
# Este script nos permite verificar si se ha introducido un parametro.
#
var=$#
if [ $var -ne 0 ]; then
    echo "Se ingresaron $var parametros"
else
    echo "No se ha ingreso parametro alguno"
fi