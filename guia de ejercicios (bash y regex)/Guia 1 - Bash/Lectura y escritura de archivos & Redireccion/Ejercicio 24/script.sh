#!/bin/bash

> "primos.txt"
function es_primo(){
	count=0
	for ((i=2;i<$1;i++)); do
		if [[ $(($1 % $i)) -eq 0 ]]; then
			count=$(( $count + 1 ))
		fi
	done
	if [[ $count -eq 0 ]]; then
		echo $1
	fi
}

echo "Ingrese un numero natural: "
read num
for ((j=1;j<num;j++)); do
	es_primo $j >> "primos.txt"
done
