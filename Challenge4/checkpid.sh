#!/bin/bash
#
# Este scrip debe cumplir los siguientes requisitos:
#    1.- Identificar el PID
#    2.- Checar si es mayor o menor.
#    3.- Cuando se acierte: mostrar cuantos intentos se han necesitado y salir.
#
# $$ commando nos sirve para ver el identificador.
#
COUNTER=0
PIDNUM=0
while [ $PIDNUM -ne $$ ]; do
    read -p "Ingresa un numero: " PIDNUM
    if [ $PIDNUM -gt $$  ]; then
        echo "$PIDNUM es mayor que el PID."
    elif [ $PIDNUM -lt $$ ]; then
        echo "$PIDNUM es menor que el PID."
    else
        echo "$PIDNUM igual que PID."
    fi
    COUNTER=$(($COUNTER+1))
done
echo "Se requirieron $COUNTER intentos."
