#!/bin/bash

echo "Ingrese un numero natural:"
read n
for ((i=1;i<=n;i++)); do
	whoami > "archivo$i.txt"
done
