#!/bin/bash

echo "Ingrese un numero:"
read numero1
echo "Ingrese otro numero:"
read numero2
function suma_de_numeros () {
  suma=$(( $numero1 + $numero2 ))
  echo "La suma entre $numero1 y $numero2 es: $suma"
}
function resta_de_numeros () {
  resta=$(( $numero1 - $numero2 ))
  echo "La resta entre $numero1 y $numero2 es: $resta"
}
function multiplicacion_de_numeros () {
  multiplicacion=$(( $numero1 * $numero2 ))
  echo "La multiplicaicon entre $numero1 y $numero2 es: $multiplicacion"
}
function division_de_numeros () {
  division=$(awk "BEGIN {print $numero1 / $numero2}")
  #alternativo
  #division=$(( $numero1 / $numero2 ))
  #resto=$(( $numero1 % $numero2 ))
  #echo "La division entre $numero1 y $numero2 es: $division y el resto es: $resto"
  echo "La division entre $numero1 y $numero2 es: $division"
}
suma_de_numeros
resta_de_numeros
multiplicacion_de_numeros
division_de_numeros
