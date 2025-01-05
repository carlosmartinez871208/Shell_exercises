#!/bin/bash

# Se puede comprobar si un string cumple con una expresion regular con el comando '=~'.
# Por ejemplo: [[ cadena =~ regex]].
# La expresion anterior nos dara verdadero si cumple la regex y falso en caso contrario.
# Hay que recordar que la expresion se puede cumplir en cualquier lugar de la cadena a comparar.
# Por ejemplo: [[ aaa =~ . ]] dara verdadero. (El '.' indica cualquier caracter en cualquier posicion por eso da verdadero).
# Es util cuando se piede al usuario una opcion y se pueden evaluar diferentes opciones como validas.
# Por ejemplo: [[ $Response =~ ^(s|S|si|SI|Si|sI)$ ]]. (^: principio de la expresion, $: final de la expresion, se compara una palabra entera).
# Es util tambien para hacer comporbaciones de datos con formato definido: telefonos, DNI, IPs, etc...
# Por ejemplo: [[ $DNI =~ ^[[:digit:]]{8}[[:alpha:]]$ ]]
# Ejemplos:
# 1-> [[ casa =~ R]] Nos va a devolver un falso.(Esta buscando 'R' dentro de la cadena "casa").
# 2-> [[ casa =~ a.*a ]] Nos devuelve un verdadero. (Primero nos busca una 'a' despues cualquier caracter '.' despues de varios caracteres una a "*a" ).
# 3-> [[ casa =~ .*aa.* ]] Nos devuelve un falso. (Busca dos a seguidas "aa" en cualquier parte de la expresion).
#
#Ejemplos:
# a) [[ user@email.com =~ .+@.+\..{3} ]]: Respuesta verdadera (Cualquier caracter '.', el caracter '+' nos indica algo que debe tener en este caso: '@'
#                                         el '.' nuevamente otra extension, nuevamente '+' para agregar otro contenido en este caso un \.(signo '.') y
#                                         y una extension de tres elementos mas en la cadena).
# b) [[ user@email.online =~ .+@.+\..{3} ]]: Respuesta verdadera porque al final "online" contiene 6 caracteres y cumple con la condicion de 3 caracteres.
# c) [[ user@email.online =~ ^.+@.+\..{3}$ ]]: Respuesta falsa porque ahora si delimita (uso de ^ y $) a solo 3 caracteres despues del punto '\.'.
# d) [[ user@email.com =~ ^.+@.+\..{3}$ ]]: Respuesta positiva.
# e) [[ user@email.2 =~ ^.+@.+\..{2,5}$ ]]: Respuesta positiva, porque al final nos pide un minimo de 2 y maximo 5 caracteres despues del punto '\.'. 

read -p "Introduzca una direccion de correo: " email
if [[ $email =~ ^[[:alpha:]]+@+(gmail|outlook|server)+\..{2,5}$ ]]; then
    echo "Correo electronico correcto!"
fi
