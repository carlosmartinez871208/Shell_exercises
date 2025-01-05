Comando Shell para manejo de consola.

~ : Nos indica que no estamos usuario root o admnistrador.

pwd: nos devuelve la ubicacion de nuestro directorio.

ls (list): lista los elementos de un directorio.

cd (change directory):
    Sintaxis: cd 'tu_directorio' i.e. cd Documents

mkdir (make directory): crear directorios.

touch: crear archivos.

mv (move): sirve para renombrar objetos y moverlos de directorio.
    ejemplo: "mv mi_archivo my_file" cambia el nombre del archivo mi_archivo a my_file
    ejemplo: "mv my_file directory/" mueve el archivo (my_file) al directorio "directory".
    ejemplo: "mv mi_archivo directory/my_file" mueve el archivo (mi archivo) al directorio "directory" y le cambia el nombre a "my_file"

rm (remove): sirve para remover directorios y archivos.

ctrl+r: Nos ayuda a encontrar comandos que ya hemos buscado.

ctrl+c: Termina cualquier comando a medias.

history: Nos da todas las instrucciones que se han usado.

clear o ctrl+l: limpia la consola de comandos.

echo: Nos muestra en pantalla. 

!!: ejecuta la ultima instruccion.

ctrl+a: para ir al inicio de la instruccion en la consola de comandos.

ctrl+e: para ir al final de la instruccion en la consola de comandos.

cd/: Abre la ruta de sistema.

cp (copy): Nos sirve para copiar directorios.
    cp directorio/text.txt directorio2/

tar: sirve para comprimir y descomprimir archivos.
    tar [opciones] destino.tar <archivos o directorios>.
    ejemplo: tar -cf archivos.tar /path1/ /path2/: se va a compactar en archivos.tar lo que hay en los directorios: path1 y path2.
    ejemplo: tar -xf archivos.tar: extrae el contenido de archivos.tar
    ejemplo: tar -czf archivos.tar.gz /path1/ path2/: se va comprimir en archivos.tar.gz lo que hay en los directorios: path1 y path2.
    ejemplo: tar -xzf archivos.tar.gz: se descomprime y se extrae el contenidos de archivos.tar.gz.
    ejemplo para copias de seguridad: tar -czf nombre_de_la_copia.tar.gz directorio/ -g nombre.log: copia incremental con registro de log. 

*: es comodin para agarrar un patron *.jpg: significa todos lo archivos con extension .jpg.
    rm *.jpg: esto remueve cualquier cosa con extension .jpg
    cp *u*: copia cualquier cosa que tenga una 'u' en su nombre.
    *.*: esto significaria que exista una extension.

?: Cualquier caracter.
    ls c?sa*: signfica que liste los objetos que tengan c, sa y cualquier extension a la derecha.

[]: para poder filtrar informacion especifica.
    ls c[aio]s*: significa que me liste todos objetos que empiecen con 'c', que entre la 'c' y la 's' exista cualquiera de los caracteres 'a', 'i'y'o', y que despues de la 's' tenga cualquier terminacion.
    ls informe-200[1-9].txt: significa que liste los objetos que tengan "informe-200" y cualquier numero entre 1 y 9, y terminen.txt.

Permisos en linux
   Usuario Grupo Otros
 - rw-     r--   r--
 - rwx     rwx   rwx
 d rwx     r-x   r-x

            R      W         X
Archivo     Leer   Escribir  Ejecutar
Directorio  Listar Modificar Acceder

chmod: cambiar permisos
    chmod g+w objecto: Se agrega el permiso de escritura(w) al grupo del objeto.
    chmod -x objeto: Se le quita el permiso de ejecucion a todos.
    chmod u+w, o+w objeto: Se agrega el permiso de escritura(w) tanto al usuario como a otros.
    chmod u-xw,g+w objeto: Se quitan permisos de ejecucion(x) y escritura(w) al Usuario, y se agrega permiso de escritura(w) a otros.

Comandos para manejar texto.
echo: Muestra el texto que recibe.
    echo -e "Hola\nMundo"

cat: Para concatenar texto.
    cat -n archivo: muestra el texto y sus lineas.

more: Para mostrar texto poco a poco

less: similar que more para archivos muy grandes.

nano: editor de texto en consola.

grep: Comando para filtrar texto por renglon.
    -i: no disitngue entre mayusculas o minusculas
    -w: el patron tiene que ser una palabra independiente.
    -v: muestra lo que no coincide con el patron.
    -r: buscar de forma recursiva.
    -n: numero de linea.
    -l: solo indica el nombre del archivo donde se ha encontrado alguna coincidencia.
    -c: muestra cantidad de lineas que cumplen con el patron.
    -B n, -A n: muestra cantidad de lineas n, antes o despues del encontrar el patron.
    --color: destaca el patron en color dentro de la linea seleccionada.
    ^ principio de linea y $ el final.
    grep "frase o palabra a buscar" "archivo en donde se va a buscar" ejemplo: grep "comando" notes.md.

tail: se va al final del archivo.
    tail -n 7 "your_file": Despliega las ultimas 7 lineas del archivo.

head: se va al principio del archivo.
    head -n 7 "your_file": Despliega las primeras 7 lineas del archivo.

cut: selecciona por columnas
    -c: Selecciona los caracteres que se le indique. cut -c 5,10 "your_file" // cut -c 7-25 files "your_file".
    -d: indica un caracter separador.
    -f: Que columnas quiere que muestre.

Redirecciones:

> lo que se produce a la izquierda se redirige hacia la derecha. Por default crea el archivo y lo sobreescribe si ya existe.
>>: concatena el texto al final.
2> o 2>>: Los mensajes de error se redirigen de forma independiente.
&> o &>>: Redirige salida estandar y los errores.

| (tuberia o "pipe") nos permite redirigir a otro comando. Una salida de un comando sirve de entrada para otro comando.

sort: ordena las lineas de texto en los archivos especificados o entradas estandar.
    -r: orden inverso.
    -n: ordenar numericamente.
    -k: por columnas especificas.
    -t: especifica el caracter separador.
    -u: ordena y elimina las lineas duplicadas.

uniq: elimina lineas repetidas contiguas en un archivo o entrada estandar.
    -u: muestra lineas no repetidas.
    -c: muestra cantidad de repeticiones.

wc: contar lineas, palabras, caracteres y bytes.
    -l: contar lineas.
    -w: contar palabras.
    -c: contar bytes.
    -m: contar caracteres.

rev: invertir el orden de los caracteres de una linea dada.

file: Determinar el tipo de archivo basandose en su contenido.
    -b: descripcion y no nombre del fichero.
    -i: muestra el tipo MIME del archivo.
    -f: lee los nombres de los archivos desde un fichero.

ln (Link): crea un enlace.
    Hay dos tipos de enlaces:
        Enlaces fuertes. Puntero a la direccion del disco. Siempre hace una referencia a una localidad de memoria.
        Enlaces simbolicos. Los directorios siempre tienen enlace simbolico. ln -s notes.md link (Esto seria un acceso directo).
            Enlace que siempre funciones ln -s "absolute_directory".

df: para tener el espacio disponible en el disco.
    df -f .

stat: provee estadisticas de los archivos.

du: disk usage.
    -h: muestra el tamano en KB, MB, GB
    -s: calcula el tamano total de un directorio

df: disk free. df -h .: ver espacio libre para particion actual.
    -h: muestra el tamano en KB, MB, GB.

dfc: provee mayor informacion del almacenamiento.

Buscar archivos|directorios|enlaces

locate: buscar objetos.
    -i: ignorar mayusculas y minusculas.
    -c: contar el numero de coincidencias.
    -n: limitar el numero de resultados.
    -r: usar expresiones regulares para la busqueda.
    ejemplo: locate -i "your_file_name"

find: Busca de forma recusiva. find [ruta] [opciones] [accion]
    -name: buscar por nombres de variables.
    -iname: diferencia mayusculas y minusculas.
    -type: d(directorio), f(ficheros), l(enlaces), b(bloques), c(dispositivos de caracter), p(tuberias) y s(sockets).
        ejemplo: find * -iname "*.md": Busca los elementos por nombre que tengas extension.md
        ejemplo: find * -iname * -type d: Que busque los directorios dentro del directorio actual.
    -size: buscar por tamano. +/-<n>.
        ejemplo: find * -size +10k: Busca los archivos mayores a 10KB.
        ejemplo: find * -size -10k: Busca los archivos menores a 10KB.
    -perm: buscar por permisos en el archivo. (-) significa que tenga todos los permisos. (/) que incluya alguno de los modos.
        ejemplo: find . -perm -777. Se pide la busqueda de los archivos que tengan todos los permisos.
        ejemplo: find . -perm /777. Se pide la bsuqueda de los archivos que al menos tengan un permiso.
    -user: buscar elementos de un usuario en concreto.
    -group: buscar elementos de un grupo en concreto.
    -mmin[+/-]: buscar por minutos de diferencia. find . -mmin -5 busca archivos que fueron modificados hace menos de 5 minutos.
    -mtime[+/-]: buscar por dias de diferencia.
    -maxdeph<>: Desciende niveles de busqueda en directorios.
    -path: buscar por ruta.
    -regex: igual que el anterior, pero usando expresiones regulares.
    -not: niega la condicion que pongamos.
    -o: "Or" logico.
    -a: "and" logico.
    -ls: lista los detalles del elemento encontrado.
    -delete: elimina los elementos encontrados.
    -exec: permite definir un comando a ejecutarse para cada resultado. {} se sustituye por el nombre de los ficheros encontrados. El caracter ';' permite indicar la finalizacion del comando. ; tiene que ir en comillas
    -ok: para pedir confirmacion.

chown (change owner): cambia el usuario de un archivo.
    ejemplo: chown user:group "your_file"

date: para obtener la fecha.

alias: renombrar un comando o comandos.

unalias: eliminar un alias.

mpstat: uso del CPU.

Comandos:
    Usando comillas invertidas: `comando`
    Usando $(): S(comando) usar en vez del comando anterior.

dpkg (depackage): Administra paquete dentro del sistema sin usar repositorios.
    -i: instala un paquete.
    -r: borrar un paquete.
    -P: borra un paquete incluyendo todos los archivos de configuracion.
    -s: muestra informacion y el estado del paquete instalado.
    -I: muestra informacion de un paquete.
    -l: mostrar los paquetes que coincidan con un patron.
    -L: muestra los archivos que ha instalado el paquete.
    -S: muestra los paquetes que contienen ficheros que coincidadn con el patron indicado.

Administracion de usuarios y grupos:
/etc/passwd
Estructura:
    usuario:x:1003:1002::/home/ana:/bin/sh
    usuario:x:UID :GID :datos_personales:directorio_home:shell.

useradd: anadir un nuevo usuario.
    -d: directorio home.
    -m:crea el directorio home.
    -g: grupo principal.
    -G: grupo o grupos secundarios.
    -s: interprete de comandos.
    -k: directorio de plantilla.

passwd: cambia la contrasena de un usuario.

chage: muestra informacion o cambia la validez de las contrasenas.

getent: obtener informacion sobre usuarios, grupos.

groupadd: anadir un grupo.

groupdel: borra un grupo.

groupmod: modifica grupo

usermod: modifica un usuario.

chgrp (change group): cmabia grupo de un elemento.

tr:

sed: 

ping: to check if a web site exist.

Caracteres especiales:
    ^: inicio de linea.
    $: fin de linea.
    .: cualquier caracter, si se quiere quitar el significado especial tendremos que poner la contrabarra \ delante: .\
    []: Se usan para indicar que en una posicion determianda pueden aparecer un conjunto determinado de caracteres.
    ejemplo: ^a.*t$ |^e.*x$ : palabras que empiecen con a y acaben con t o las que empiecen con t y acaben con x.
    ejemplo: ([aei])s\1: que el primer caracter sea aei, luego s y el \1 hace referencia a que tiene que haber lo mismo que haya en el primer caracter.

Bucles (loops).
    Sintaxis: while condition; do
                instructions.
              done
    Ejemplo: CONT=0
             while [ $CONT -lt 5 ]; do
                echo "The counter is $CONT
                CONT=$(($CONT+1))
             done
    Sintaxis: for variable in list; do
                instrucciones.
              done.
    Ejemplo: for i in $(seq 5 8); do #Genera valores desde 5 hasta 8.
                 echo variable i = $i
             done.
    Ejemplo: for nombre in $(ls *.txt); do
                 echo fichero $nombre
             done
    Ejemplo: for i in vei tatemon taruguito chillona; do
                 echo "Apogo de faty $i
             done
    continue & break:
                         continue: Al ejecutar continue se termina la iteracion actual y vuelve al inicio del bucle.
                         break: Al ejecutar break se sale inmediatamente del bucle.
                         
 Ctrl+c: Para anular procesos.

 Funciones:
    Parte de un programa que realiza una actividad complementaria o independiente.
    Sintaxis: 
        function nombre_de_la_funcion {
            # comando o instrucciones bash.
        }
    Para pasar informacion, se hace el mis o proceso que cualquier comando: ponemos el nombre de la funcion y entre espacios todos los argumentos requeridos.
    funcion Carlos Ninmah
    Se accede a los paremetros de la misma manera que en el propio script, utilizando las variables predefinidas $1, $2... $n
    Por ejemplo: 
                 function message {
                    echo "Hola soy, $1."
                 }
                 message Carlos
        Nos desplegaria: Hola soy, Carlos.

crontab: Para programar ejecucion de tareas.
         m h dom mon dow; m (minuto) h (hora) dom (dia del mes) mon (mes) dow (dia de la semana)
         0 12 1 * * comando : Esto significa que ejecute el "comando" en el minuto 0 de las 12 horas el dia primero de cada mes.
         Recomendacion:
                        Realizar una copia total cada mes.
                        Realizar una copia diferencial cada semana.
                        Realizar una copia incremental todo los dias.
        Ejemplo:
        0 23 1 1 * tar -czf /var/backups/total_$(date +\%F).tar.gz /home/
        0 23 * * 6 tar -czf /var/backups/difer_$(date +\%F).tar.gz /home/ -N $(date +%Y-%m)-01
        0 23 * * 1-5,7 tar -czf /var/backups/difer_$(date +\%F).tar.gz /home/ -g /var/backups/re$
