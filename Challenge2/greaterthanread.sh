#!/bin/bash

read -p "Introduzca primer entero: " var1
read -p "Introduzca segundo numero: " var2

if [ $(($var1)) -gt $(($var2)) ]; then
    echo "$var1 es mayor."
elif [ $(($var2)) -gt $(($var1)) ]; then
    echo "$var2 es mayor."
elif [ $(($var1)) -eq $(($var2)) ]; then
    echo "Son iguales."
fi