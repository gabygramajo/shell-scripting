#!/bin/bash

var1="cadenatexto"

#Estructura if
# [] hace referencia a un programa en /usr/bin/test que sirve para comparar tipos de datos.
if [ $var1 = "cadenatexto" ]; then
        echo "Cadenas iguales"
else
        echo "Cadena diferenes"
fi

#Ejemplo 2 -> 10 <= 400
var_num=10
if [ $var_num -le 400 ]; then
        echo "$var_num es menor o igual a 400"
else
        echo "$var_num es mayor a 400"
fi

#Ejemplo 3

: 'if [ $var1 = "cadenatexto" ]; then
        echo "Cadenas iguales"
else
        echo "Cadena diferenes"
fi'
