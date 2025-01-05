#!/bin/bash

read -p "Introduzca un numero entero: " var
if [ $(($var%2)) -eq 0 ]; then
    echo "$var es par."
else
    echo "$var es impar."
fi