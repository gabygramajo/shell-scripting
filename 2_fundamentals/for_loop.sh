#!/bin/bash

#Bucle for shell expantion {1..2}
#for i in {1..20}; do
#	echo "Esta es la iteración $i"
#done

# ej 2 : shell expantion {a..z}
: 'for letter in {a..z}; do
	echo "Letter $letter"
done'

# Ej 3: Listar ficheros utilizando wildcards
echo "### FICHEROS DE /var/log/ ###"
for i in /var/log/*.log; do
	echo "file log: $i"
done

# Ej 4: utilizando el comando find
echo "### EXAMPLE 3 ###"
for i in $(find /usr/bin -name '*.zip'); do
	echo " $i"
done

# for loop version 2
for ((i=0; i<5; i++)); do
	echo "Iteración: $i"
done
