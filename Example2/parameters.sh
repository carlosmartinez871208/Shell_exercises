#!/bin/bash

# $n: la informacion de un parametro en concreto, siendo n un numero de parametro.
# $*: todos los parametros se presentan en una sola cadena de caracteres.
# $@: todos los parametros en una lista con un elemento por cada parametro recibido.
# $#: el numero de parametros con los que se ha invocado el script sera una cifra.

echo The first parameter is $1
echo The number of parameters has been $#
echo All parameters are: $*