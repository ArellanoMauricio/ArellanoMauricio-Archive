#!/bin/bash

function funcion_factorial(){
  factorial=1
  for ((i=1;i<=$1;i++)); do
    factorial=$((factorial*i))
  done
  echo $factorial
}
echo "Ingrese un numero:"
read numero
funcion_factorial $numero
