#!/bin/bash

numero=$1
if [ $(($numero % 2)) -eq 0 ]; then
  echo "El número $numero es par"
else
  echo "El número $numero es impar"
fi
