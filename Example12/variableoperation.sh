#!/bin/bash

# Bash es capaz de realizar diversas operaciones con el contenido de una variable sin recurrir a otros comandos. Para ello se referencia la variable
# con llaves y se le anade despues el nombre de la operacion a realizar.
#
# ${#var}: Devuelve la longitud de la cadena que contiene $var.
# ${var:posicion}: Desde la posicion indicada hasta el fin la cadena.
# ${var:posicion:longitud}: Desde la posicion con la longitud indicada.
# ${var#patron}: Elimina desde el principio la parte mas corta que coincida con el patron. Si se usa ## elimina la parte mas larga.
# ${var%patron}: Elimina desde el final de $var.
# ${var/patron/cadena}: Sustituye la primera ocurrencia que coincida patron por cadena. Ejemplo ${var//patron/cadena} sustituye todas las ocurrencias.

var=$(pwd)
echo $var
echo "Cantidad de caracteres: ${#var}"
echo ${var:6}
echo ${var:6:9}
echo ${var#*/}
echo ${var##*/}
echo ${var%*/}
echo ${var%/*}
echo ${var%%/*}
echo ${var%%/*/*}
echo ${var%/*/*}
echo ${var%%?/*/*}
echo ${var/'/'/'.'}
echo ${var//'/'/'.'}
