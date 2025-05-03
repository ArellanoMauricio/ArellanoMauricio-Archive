#!/bin/bash

archivo=$1
#Se usa el mismo comparador que el ejercicio anterior
if [[ -f "$archivo" ]] && [[ $# -eq 1 ]]; then
	echo "$(grep -E "[0-9]" "$archivo" | wc -l)"
	exit 0
else
	echo "error"
	exit 1
fi
