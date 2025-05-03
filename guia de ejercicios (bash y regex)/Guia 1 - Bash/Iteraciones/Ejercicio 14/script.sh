#!/bin/bash

echo "Introdusca un numero par: "
numero=1
while [[ $((numero%2)) -ne 0 ]]; do
  read numero
  if [[ $((numero%2)) -ne 0 ]]; then
    echo "El numero introducido no es par, porfabor vuelva a intentarlo"
  elif [[ $numero -eq 0 ]]; then
    echo "El numero introducido no es par, porfabor vuelva a intentarlo"
    numero=1
  else
    echo "Gracias por el numero"
  fi
done
