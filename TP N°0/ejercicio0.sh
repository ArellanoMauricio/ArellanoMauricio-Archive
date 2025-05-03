#!/bin/bash

ki_Dende_base=$1
ki_adicional=$2

if [[ $ki_Dende_base =~ ^[0-9]+$ ]] && [[ $ki_adicional =~ ^[0-9]+$ ]] && [[ $# -eq 2 ]]; then
	ki_Dende_nuevo=$(($ki_Dende_base+$ki_adicional))
	echo "$ki_Dende_nuevo"
	exit 0
else
	echo "error"
	exit 1
fi
