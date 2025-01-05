#!/bin/bash

# Operaciones artimeticas.
# Para hacer la operacion se debe poner los valores de la siguiente forma $((Valores)), por ejemplo: echo "Suma: $((1+1))"
read -p "Introduzca el primer numero:" V1
read -p "Introduzca el segundo numero:" V2
echo ''
echo "La suma es: $(($V1+$V2))"
echo "La resta es: $(($V1-$V2))"
echo "La multiplicacion es: $(($V1*$V2))"
echo "La division es: $(($V1/$V2))"
echo "El residuo de la division es: $(($V1%$V2))"

#$RANDOM: para generar una eleccion aleatoria.
#$(($RANDOM%26)) -> Genera numeros aleatorios entre 0 y 25.
