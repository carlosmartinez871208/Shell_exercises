#!/bin/bash
# 
# Este script es un ejemplo del while loop.
#
CONT=0
while [ $CONT -lt 5  ]; do
    echo "Iteracion: $CONT"
    CONT=$(($CONT+1))
done
