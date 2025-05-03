#!/bin/bash

lado1=$1
lado2=$2
lado3=$3
if [ -z "$lado1" ] || [ -z "$lado2" ] || [ -z "$lado3" ]; then
  echo "Longitud/es no validas"
elif [ $lado1 -eq $lado2 ] && [ $lado2 -eq $lado3 ]; then
  echo "El triangulo es equilatero"
elif [ $lado1 -eq $lado2 ] || [ $lado2 -eq $lado3 ] || [ $lado3 -eq $lado1 ]; then
  echo "El triangulo es isosceles"
else
  echo "El triangulo es escaleno"
fi
