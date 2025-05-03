#!/bin/bash

archivo=$1
#Se uso un nuevo comparador para verificar que el parametro recibido sea realmente un archivo.
#-f comprueba si es un archivo y si existe.
#Fuente
#------------------------------------------------------------------
#https://atareao.es/tutorial/scripts-en-bash/condicionales-en-bash/
#------------------------------------------------------------------
if [[ -f "$archivo" ]] && [[ $# -eq 1 ]]; then
	#Con "man grep" y algo de testeo:
	echo $(grep -oEi "cold" "$archivo" | wc -l)
	exit 0
else
	echo "error"
	exit 1
fi
