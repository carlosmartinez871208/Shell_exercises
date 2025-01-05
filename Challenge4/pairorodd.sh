#!/bin/bash
#
# Este script debe cumplir los siguientes requisitos:
#    1.- Pedir numeros.
#    2.- Determinar si los numeros pedidos son pares o impares.
#    3.- Terminar el scrip si el numero es '0'.
#
echo "Este scrip identifica si un numero es para e impar."
echo "Si deseas salir del scrip ingresa un 0."
VALUE=1
while [ $(($VALUE)) -ne 0 ]; do
    read -p "Ingresa numero: " VALUE
    if [ $(($VALUE%2)) -eq 0 ]; then
        echo "$VALUE es par."
    else
        echo "$VALUE es impar."
    fi
done
echo "Saliendo del script."
