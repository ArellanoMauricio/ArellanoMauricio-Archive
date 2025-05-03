#!/bin/bash

# Lunes (1)
# Martes (2)
# Miercoles (3)
# Jueves (4)
# Viernes (5)
# Sabado (6)
# Domingo (7)

echo "Ingrese un numero del 1 al 7 para seleccionar un dia de la semana"
echo "(El primer dia de la semana es el Lunes)"
dia=0
until [[ dia -gt 0 && dia -lt 8 ]]; do
  read dia
  if [[ dia -eq 1 ]]; then
    echo "El dia seleccionado es Lunes"
  elif [[ dia -eq 2 ]]; then
    echo "El dia seleccionado es Martes"
  elif [[ dia -eq 3 ]]; then
    echo "El dia seleccionado es Miercoles"
  elif [[ dia -eq 4 ]]; then
    echo "El dia seleccionado es Jueves"
  elif [[ dia -eq 5 ]]; then
    echo "El dia seleccionado es Viernes"
  elif [[ dia -eq 6 ]]; then
    echo "El dia seleccionado es Sabado"
  elif [[ dia -eq 7 ]]; then
    echo "El dia seleccionado es Domingo"
  else
    echo "¡Numero fuera de rango!"
    echo "Ingrese el numero de nuevo"
  fi
done
