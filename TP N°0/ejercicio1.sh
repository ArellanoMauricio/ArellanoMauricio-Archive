#!/bin/bash

semillas_contadas=0
semillas_sin_contar="$@"
#Se uso "$@" para obtener todos los parametros en forma de lista para poder iterar sobre ellos.
#Fuente:
#-----------------------------------------------------------------------------------------------------------------
#https://es.stackoverflow.com/questions/603321/obtener-el-n%C3%BAmero-de-par%C3%A1metros-y-por-cada-par%C3%A1metro-obtener-el-texto
#-----------------------------------------------------------------------------------------------------------------
if [[ -z $1 ]]; then
	echo "error"
	exit 1
fi
for i in ${semillas_sin_contar[@]}; do
	if [[ "$i" =~ ^[0-9]+$ ]]; then
		semillas_contadas=$(($semillas_contadas+"$i"))
	else
		echo "error"
		exit 1
	fi
done
echo "$semillas_contadas"
exit 0
