#!/bin/bash

echo "Ingrese un numero natural: "
read num
for ((i=1;i<=num;i++)); do
	mkdir "carpeta$i"
done
