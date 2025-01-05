#!/bin/bash

# Working with variables.
# $0: El nombre del script.
# $$: PID del proceso que se que se le ha asignado al script en ejecucion.
# $?: Resultado devuelto por el ultimo proceso ejecutado.
# printenv: imprimir variables de entorno.

echo The script $0
echo Is executing $USER
echo Has been asigned PID: $$
echo We use parameter: $1
mensaje="Hello wolrd!"
echo To say... $mensaje