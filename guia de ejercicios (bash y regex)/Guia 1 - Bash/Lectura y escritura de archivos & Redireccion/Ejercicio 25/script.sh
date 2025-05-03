#!/bin/bash

> ordenados.txt
for i in *; do
	echo "$(stat -c %s "$i") $i"
done | sort -n > ordenados.txt
