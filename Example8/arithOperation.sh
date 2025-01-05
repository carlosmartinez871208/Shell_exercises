#!/bin/bash

# Operaciones artimeticas.
# Para hacer la operacion se debe poner los valores de la siguiente forma $((Valores)), por ejemplo: echo "Suma: $((1+1))"
# Following Script is expecting parameters.

echo "La suma es: $(($1+$2))"
echo "La resta es: $(($1-$2))"
echo "La multiplicacion es: $(($1*$2))"
echo "La division es: $(($1/$2))"
echo "El residuo de la division es: $(($1%$2))"