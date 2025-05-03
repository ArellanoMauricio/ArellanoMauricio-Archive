#!/bin/bash

echo "Ingrese un numero natural:"
read num
if [ $num -le 0 ]; then
  echo "El numero ingresado no es natural"
else
  for i in $(seq 1 $num); do
    echo $i
  done
fi
