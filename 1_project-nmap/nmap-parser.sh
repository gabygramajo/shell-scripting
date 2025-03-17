#!/bin/bash

# Este programa parsea los resultados de nmap y contruye un documento html

#variables
titulo="Resultados nmap"
fecha_actual="$(date)"
#contantes
TIMESTAMP="Informe generado el $fecha_actual por el usuario $USER"

nmap_exec () {
    #$1 y $2 son argumentos
        
    if [ $(find $2 -mmin -30) ]; then
	echo "El archivo ya existe y tiene una antiguedad menor a 30m"
    else
	echo "[INFO] Ejecutando nmap en la red $1, por favor espere unos segundos..."
	sudo nmap -sV $1 > $2
	echo "[OK] Fichero $2 generado correctamente"
    fi

}

generar_html () {
cat <<EOF
<html>
    <head>
        <title>$titulo</title>
    </head>
    <body>
         <h1>$titulo</h1>
         <p>Aqui van los resultados de nmap</p>
         <p>$TIMESTAMP</p>
    </body>
</html>
EOF
}

#Generamos el reporte
nmap_exec "172.23.16.0/20" "salida_nmap.raw"

#Generamos el reporte en html
echo "[INFO] Generando reporte html..."
generar_html > resultados_nmap.html
echo "[OK] Reporte resultados_nmap.html generado correctamente"
