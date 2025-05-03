#!/bin/bash

#En este caso se uso un comparador nuevo, "-d" para poder checkear
#que lo que se esta recibiendo por parametro es una ruta.
#Fuente:
#---------------------------------------------------------------------------------------------------
#https://www.tempmail.us.com/es/bash/como-verificar-la-existencia-de-un-directorio-en-un-script-bash
#---------------------------------------------------------------------------------------------------
ruta_del_directorio=$1
if [[ -d  "$ruta_del_directorio" ]] && [[ $# -eq 1 ]]; then
	cantidad_de_archivos=$(($(ls -al "$ruta_del_directorio" | wc -l)-3))
	#El -3 es porque hay 3 lineas que genera el "ls -al" que no hay que contar:
		#El total de bloques de disco que ocupan los directorios y archivos.
		#El "." (directorio actual).
		#El ".." ("directorio anterior").
	echo "$cantidad_de_archivos"
	exit 0
else
	echo "error"
	exit 1
fi
