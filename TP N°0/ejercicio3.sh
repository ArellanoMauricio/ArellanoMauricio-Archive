#!/bin/bash

pos_act=$1	#Posicion actual
if [[ $pos_act =~ ^[0-9]+$ ]] && [[ $# -eq 1 ]]; then

	#Es muy complicado explicar esto porque no soy bueno explicando, pero intentare hacerlo:
	pos_fig=1	#posicion en la secuencia de Fibonacci (a). \
	sig=1	#posicion siguiente en la secuencia (s).             } Toda esta parte es relativa a la secuencia de Fibonacci
	num=2	#numero de la posicion actual (N°).                 /
	#Buscamos una posicion en la secuencia superior a la posicion actual (empezamos en la posicion 2),
	#si es 0 "pasa de largo" y la siguiente posicion donde se supera es 2 tal como en el ejemplo del enunciado.
	#------------------------------------------------------
	#     (a)  (s)
	#      \/   \/
	# 0    1    1    2    3    5    8
	# 1°   2°   3°   4°   5°   6°   7°
	#------------------------------------------------------
	until [[ $pos_fig -gt $pos_act ]]; do
		#Las 2 variables "actual" y "siguiente" se mueven un paso adelante en la secuencia:
		#Primero avanza "siguiente"
		sig=$(($sig+$pos_fig))
		#Despues avanza "actual", no se como explicar el razonamiento pero "actual" "recupera" el valor
		#que tenia antes "siguiente".
		pos_fig=$(($sig-$pos_fig))
		#Y el numero de la posicion actual avanza
		((num++))
		#echo "$actual"	<-----Testeo
	done
	
	#Se devuelve la posicion de la secuancia de Fibonacci cuando supera
	echo $num
	exit 0
else
	echo "error"
	exit 1
fi
