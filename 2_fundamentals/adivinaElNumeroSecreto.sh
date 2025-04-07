#!/bin/bash

echo "Adivina el número secreto que estoy pensando entre 1 y 10:"
secretNum=6
read num

if (($num == $secretNum))
then
	echo "Felicidades!!! Adivinaste el número secreto!!!"

# si el num ingresado esta fuera de rango
elif (($num > 10)) || (($num < 1))
then
	echo "Te fuiste de Rango" 
else
	echo "Incorrecto. El número secreto era $secretNum"
fi
