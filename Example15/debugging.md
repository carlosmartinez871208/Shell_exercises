Notas para debuggeo de un script en shell.

Dentro de la consola de comandos ejecutar: /bin/bash -x ./scrip.sh
Tambien dentro del scrip podemos agregar las opciones para debuggeo -xv: muestra la linea de codigo y el resultado de la ejecucion del codigo.
#!/bin/bash -xv (primera linea del script).
Esto nos sirve para depurar el script en caso de tener resultados erroneos.
