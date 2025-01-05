#!/bin/bash
#
# Este scrip nos permite listar archivos ".sh" del directorio actual.
#
for files in $(ls *.sh); do
    echo "Archivo: $files"
done
