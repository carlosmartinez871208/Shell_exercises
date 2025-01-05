#!/bin/bash
#
# Ejemplo para ver el uso de la instruccion continue.
#
for i in $(seq 5 8); do
    if [ $i -eq 7 ]; then
        continue
    fi
    echo "variable i=$i"
done
