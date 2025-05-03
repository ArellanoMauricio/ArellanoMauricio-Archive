#!/bin/bash

echo "Ingrese numeros naturales:"
numero=1
while [[ numero -gt 0 ]]; do
  read numero
  echo "El numero ingresado es: $numero"
done
echo "No es un numero natural"
echo "Finalizando programa"
