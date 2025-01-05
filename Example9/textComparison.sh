#!/bin/bash

# Operaciones logicas: comprueban si una expresion es verdadera o falsa.
# Para realizar operaciones logicas se usa lo siguiente:
# test expresion
# [expresion]
# Por ejemplo: test 10 -gt 20, test 'hola' = 'holita', test -d /etc/
#              [ 10 -gt 20 ], [ 'hola' = 'holita' ], [ -d /etc/ ]
# -eq: igual que.
# -ge: mayor o igual que.
# -gt: mayor que.
# -le: menor o igual que.
# -lt: menor que:
# -ne: no igual que.
#
# Condicion if Condicion; then
#               comandos
#           fi
# Por ejemplo: if [ $v1 -gt $v2 ]; then
#                  echo "La variable v1 es mayor que v2"
#              fi
#
# Comparacion de texto.
# Cadena1 = Cadena2.
# Cadena1 > Cadena2.
# Cadena1 < Cadena2.
# Cadena1 != Cadena2.
# -n Cadena: Si la longitud de la cadena es diferente de 0.
# -z Cadena: Si la longitud de la cadena es igual a 0.

v1="a"
v2="b"
if [ $v1 != $v2 ]; then
    echo "V1 es diferente que v2"
fi