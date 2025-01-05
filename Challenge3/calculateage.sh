#!/bin/bash
#
# Este script nos permite calcular la edad actual de un usuario.
# 10# antes de la variable nos permite forzar el valor a decimal.
#
read -p "Ingresa fecha de nacimiento del usuario (formato YYYY-MM-DD): " Edad
if [ ${#Edad} -ne 0 ]; then
    if [[ $Edad =~ ^[[:digit:]]{4}+-+[[:digit:]]{2}+-+[[:digit:]]{2}$ ]]; then
        Fecha=$(date '+%Y-%m-%d')
        if [ $((10#${Fecha:0:4}-10#${Edad:0:4})) -ge 0 ]; then
            if [ $((10#${Edad:5:2})) -le 12 -a $((10#${Fecha:5:2}-10#${Edad:5:2})) -ge 0 ]; then
                if [ $((10#${Edad:5:2})) -eq 1 -o $((10#${Edad:5:2})) -eq 3 -o $((10#${Edad:5:2})) -eq 5 -o\
                     $((10#${Edad:5:2})) -eq 7 -o $((10#${Edad:5:2})) -eq 8 -o $((10#${Edad:5:2})) -eq 10 -o\
                     $((10#${Edad:5:2})) -eq 12 ]; then
                    if [ $((10#${Edad:8:2})) -le 31 -a $((10#${Fecha:8:2}-10#${Edad:8:2})) -ge 0 ]; then
                        echo "La edad es: $((10#${Fecha:8:2}-10#${Edad:8:2}))"
                    else
                        echo "Fecha de nacimiento incorrecta."
                    fi
                elif [ $((10#${Edad:5:2})) -eq 4 -o $((10#${Edad:5:2})) -eq 6 -o $((10#${Edad:5:2})) -eq 9 -o $((10#${Edad:5:2})) -eq 11 ]; then
                    if [ $((10#${Edad:8:2})) -le 30 -a $((10#${Fecha:8:2}-10#${Edad:8:2})) -ge 0 ]; then
                        echo "La edad es: $((10#${Fecha:8:2}-10#${Edad:8:2}))"
                    else
                        echo "Fecha de nacimiento incorrecta."
                    fi
                else
                    if [ $((10#${Edad:8:2})) -le 29 -a $((10#${Fecha:8:2}-10#${Edad:8:2})) -ge 0 ]; then
                        echo "La edad es: $((10#${Fecha:8:2}-10#${Edad:8:2}))"
                    else
                        echo "Fecha de nacimiento incorrecta."
                    fi
                fi
            else
                echo "Fecha de nacimiento incorrecta."
            fi
        else
            echo "Fecha de nacimiento incorrecta."
        fi
    else
        echo "Formato incorrecto."
    fi
else
    echo "No se ha agregado informacion requerida."
fi
