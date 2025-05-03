#!/bin/bash

ruta_del_directorio=$1
if [[ -d  "$ruta_del_directorio" ]] && [[ $# -eq 1 ]]; then
	echo "$(grep -rl "Karin" "$ruta_del_directorio" | wc -l)"
	exit 0
else
	echo "error"
	exit 1
fi
