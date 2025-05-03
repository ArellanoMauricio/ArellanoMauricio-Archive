#!/bin/bash

DNIs=()
DNI=1
echo "Ingrese los numeros de DNI que desea ordenar e ingrese 0 para terminar:"
while [[ DNI -gt 0 ]]; do
  echo ">_"
  read DNI
  if [[ DNI -gt 0 ]]; then
    DNIs=("${DNIs[@]}" "$DNI")
  elif [[ DNI -ne 0 ]]; then
    echo "El valor ingresado no es valido"
    echo "Vuelva a ingresar"
    DNI=1
  fi
done
DNIs_ordenados=($(for i in "${DNIs[@]}"; do echo $i; done | sort -rn))
echo "${DNIs_ordenados[@]}"
