#!/bin/bash

nombre=$1
if [ -z $nombre ]; then
  echo "No ha introducido ningun nombre"
elif [ $nombre == "Manu" ]; then
  echo "Hola, profe"
else
  echo "Hola, $nombre"
fi
