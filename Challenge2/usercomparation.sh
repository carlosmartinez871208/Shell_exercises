#!/bin/bash

read -p "Introduzca un usuario: " usuario

if [ -n "$usuario" ]; then
    if [ "$usuario" = "$USER" ];then
        echo "Usuario Correcto."
    else
        echo "Usuario Incorreto."
    fi
else
    echo "No se ha escrito un usuario"
fi

