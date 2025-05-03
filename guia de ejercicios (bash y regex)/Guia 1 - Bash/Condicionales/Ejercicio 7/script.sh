#!/bin/bash

echo "Introdusca su edad:"
read edad
if [ $edad -ge 18 ]; then
  echo "Usted es mayor de edad"
elif [ $edad -lt 18 ]; then
  echo "Usted es menor de edad"
else
  echo "Edad no valida"
fi
