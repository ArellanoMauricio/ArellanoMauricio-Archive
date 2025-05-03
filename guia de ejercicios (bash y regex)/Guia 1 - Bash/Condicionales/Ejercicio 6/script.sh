#!/bin/bash

echo "Introdusca un numero:"
read numero
if [ $numero -eq 0 ]; then
 echo "El numero es igual a 0"
elif [ $numero -gt 0 ]; then
  echo "El numero es mayor a 0"
elif [ $numero -lt 0 ]; then
  echo "El numero es menor a 0"
fi
