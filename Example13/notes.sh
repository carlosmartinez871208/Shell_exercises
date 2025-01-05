#!/bin/bash

read -p "Introduce el nombre del alumno: " alumno
read -p "Introduce la nota del alumno: " nota

if [ $nota -lt 5 ]; then 
    echo "$alumno esta suspendido."
elif [ $nota -eq 5 ]; then
    echo "$alumno esta aprobado."
elif [ $nota -eq 6 ]; then
    echo "$alumno bien."
elif [ $nota -eq 7 -o $nota -eq 8 ]; then
    echo "$alumno notable."
elif [ $nota -eq 9 -o $nota -eq 10 ]; then
    echo "$alumno sobresaliente."
fi

