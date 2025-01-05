#!/bin/bash

if [ $1 -gt $2 ]; then
    echo "$1 es mayor."
elif [ $2 -gt $1 ]; then
    echo "$2 es mayor."
elif [ $1 -eq $2 ]; then
    echo "Son iguales."
fi