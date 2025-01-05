#!/bin/bash
#
# Este script nos permite hacer las siguientes operaciones:
#    1. Generar un numero aleatorio.
#    2. Pedir al usuario dos cifras distintas.
#    3. El scrip dira si el numero generado es divisible por las dos cifras, por una o por ninguna.
#
Alea=$RANDOM
read -p "Ingresa primer numero: " Num1
read -p "Ingresa segundo numero: " Num2
if [ $Num1 -ne 0 -a $Num2 -ne 0 ]; then
    echo "$Alea es divisible por ambos numeros."
elif [ $Num1 -ne 0 -a $Num2 -eq 0 ]; then
    echo "$Alea no es divisible por el segundo numero."
elif [ $Num1 -eq 0 -a $Num2 -ne 0 ]; then
    echo "$Alea no es  divisible por el primer numero."
else
    echo "$Alea no es divisible por ambos numeros."
fi
