#!/bin/bash

read -p "Introduce el nombre del alumno: " alumno
read -p "Introduce la nota del alumno: " nota

case $nota in
    9|10)
        echo "$alumno Sobresaliente";;
    [78])
        echo "$alumno  Notable";;
    6)
        echo "$alumno  Bien";;
    5)
        echo "$alumno  Aprobado";;
    [01234])
        echo "$alumno  Suspendido";;
    *)
        echo "Nota incorrecta."
esac